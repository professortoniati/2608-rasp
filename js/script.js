/**
 * RASP AUTOMAÇÃO - MAIN JAVASCRIPT
 * Lógica ES6+ limpa, interativa e acessível.
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    // --- 1. SELETORES E ELEMENTOS PRINCIPAIS ---
    const siteHeader = document.getElementById('main-header');
    const mobileMenuBtn = document.getElementById('mobile-menu-btn');
    const mobileMenu = document.getElementById('mobile-menu');
    const contactForm = document.getElementById('contact-form');
    const toastNotification = document.getElementById('toast-notification');
    const serviceCards = document.querySelectorAll('.service-card');
    const navLinks = document.querySelectorAll('.nav-link');

    // --- 2. GESTÃO DO MENU MOBILE ---
    if (mobileMenuBtn && mobileMenu) {
        const toggleMobileMenu = (isOpen) => {
            const shouldOpen = isOpen !== undefined ? isOpen : !mobileMenu.classList.contains('active');
            mobileMenu.classList.toggle('active', shouldOpen);
            mobileMenuBtn.setAttribute('aria-expanded', shouldOpen ? 'true' : 'false');
            
            // Alternar ícone menu/close
            const icon = mobileMenuBtn.querySelector('.material-symbols-outlined');
            if (icon) {
                icon.textContent = shouldOpen ? 'close' : 'menu';
            }
        };

        mobileMenuBtn.addEventListener('click', () => toggleMobileMenu());

        // Fechar ao clicar nos links do menu
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => toggleMobileMenu(false));
        });

        // Fechar ao pressionar a tecla ESC
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && mobileMenu.classList.contains('active')) {
                toggleMobileMenu(false);
            }
        });

        // Fechar ao clicar fora do menu
        document.addEventListener('click', (e) => {
            if (mobileMenu.classList.contains('active') && 
                !mobileMenu.contains(e.target) && 
                !mobileMenuBtn.contains(e.target)) {
                toggleMobileMenu(false);
            }
        });
    }

    // --- 3. SCROLL DA HEADER & NAVEGAÇÃO ATIVA ---
    const handleScroll = () => {
        const scrollPosition = window.scrollY;

        // Efeito de sombra/compactação do header
        if (siteHeader) {
            if (scrollPosition > 20) {
                siteHeader.classList.add('scrolled');
            } else {
                siteHeader.classList.remove('scrolled');
            }
        }

        // Destacar link ativo conforme a seção visível
        const sections = document.querySelectorAll('section[id]');
        sections.forEach(section => {
            const sectionTop = section.offsetTop - 120;
            const sectionHeight = section.offsetHeight;
            const sectionId = section.getAttribute('id');

            if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
                navLinks.forEach(link => {
                    link.classList.remove('active');
                    if (link.getAttribute('href') === `#${sectionId}`) {
                        link.classList.add('active');
                    }
                });
            }
        });
    };

    window.addEventListener('scroll', handleScroll, { passive: true });
    handleScroll(); // Execução inicial

    // --- 4. INTERATIVIDADE EM CARDS DE SERVIÇOS (TOUCH DEVICES) ---
    serviceCards.forEach(card => {
        card.addEventListener('touchstart', function() {
            // Remove a classe dos outros cards
            serviceCards.forEach(c => {
                if (c !== card) c.classList.remove('touch-active');
            });
            card.classList.toggle('touch-active');
        }, { passive: true });
    });

    // --- 5. VALIDAÇÃO E ENVIO DO FORMULÁRIO DE CONTATO ---
    if (contactForm) {
        contactForm.addEventListener('submit', (e) => {
            e.preventDefault();

            // Capturar dados do formulário
            const formData = new FormData(contactForm);
            const formObj = Object.fromEntries(formData.entries());

            // Validação simples
            if (!formObj.nome || !formObj.email || !formObj.mensagem) {
                showToast('Por favor, preencha todos os campos obrigatórios.', 'error');
                return;
            }

            // Simulação de envio com feedback positivo
            const submitBtn = contactForm.querySelector('button[type="submit"]');
            const originalBtnText = submitBtn ? submitBtn.textContent : 'Enviar';

            if (submitBtn) {
                submitBtn.disabled = true;
                submitBtn.textContent = 'Enviando...';
            }

            setTimeout(() => {
                if (submitBtn) {
                    submitBtn.disabled = false;
                    submitBtn.textContent = originalBtnText;
                }
                
                showToast('Mensagem enviada com sucesso! Entraremos em contato em breve.');
                contactForm.reset();
            }, 1000);
        });
    }

    // --- 6. FUNÇÃO AUXILIAR DE TOAST DE NOTIFICAÇÃO ---
    function showToast(message, type = 'success') {
        if (!toastNotification) return;

        toastNotification.textContent = message;
        toastNotification.style.borderColor = type === 'error' ? 'var(--color-primary-container)' : 'var(--color-tertiary)';
        toastNotification.classList.add('show');

        setTimeout(() => {
            toastNotification.classList.remove('show');
        }, 4000);
    }
});
