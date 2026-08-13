# ⚙️ Rasp Automação - Soluções Industriais

Uma landing page institucional moderna, performática e 100% responsiva para a **Rasp Automação**, desenvolvida para apresentar serviços de automação de máquinas, engenharia de processos, montagem de painéis elétricos e programação de CLPs e IHMs.

---

## 🚀 Tecnologias Utilizadas

- **HTML5 Semântico**: Estrutura acessível (`<header>`, `<main>`, `<section>`, `<footer>`), com meta tags completas para SEO e Open Graph.
- **CSS3 Vanilla (Custom Properties)**: Estilização profissional baseada no guia de design *Industrial Precision* (`DESIGN.md`), utilizando variáveis CSS, layout flexbox, CSS Grid (Bento Grid) e media queries.
- **JavaScript Moderno (ES6+)**: Lógica limpa e assíncrona executada pós `DOMContentLoaded`, gerenciando menu mobile acessível, efeito de header fixo com scroll, interação nos cards e validação do formulário de contato com notificação toast.
- **Google Fonts & Material Symbols**: Tipografia otimizada (**Montserrat** para títulos e **Inter** para corpo de texto) e ícones vetoriais técnicos.

---

## 📂 Estrutura do Projeto

```text
.
├── index.html               # Estrutura principal em HTML5 semântico com meta tags SEO
├── css/
│   └── style.css            # Estilos centralizados, variáveis do Design System e Media Queries
├── js/
│   └── script.js            # Lógica ES6+ assíncrona (Menu mobile, Formulário, Scroll)
├── assets/
│   └── images/              # Imagens locais otimizadas (offline-ready e independentes de CDN externa)
│       ├── logo.png
│       ├── favicon.png
│       ├── hero-bg.jpg
│       ├── quem-somos.jpg
│       ├── servico-instalacoes.jpg
│       ├── servico-automacao.jpg
│       ├── servico-paineis.jpg
│       ├── servico-projetos.jpg
│       ├── servico-manutencao.jpg
│       ├── servico-programacao.jpg
│       └── logo-footer.png
├── DESIGN.md                # Diretrizes do sistema de design Industrial Precision
├── README.md                # Documentação completa do projeto
└── .gitignore               # Arquivos e pastas ignorados pelo Git
```

---

## ✨ Principais Destaques & Melhorias

1. **Design System "Industrial Precision"**:
   - Paleta de cores baseada em tons escuros (*Industrial Charcoal*) com destaques em vermelho profundo e laranja técnico.
   - Componentes com efeito *Glassmorphism* refinado.
   - Seção de Serviços disposta em um moderno **Bento Grid** com descrições reveladas no hover ou toque.

2. **Performance e Autonomia**:
   - Imagens salvas localmente no repositório (`./assets/images/`), garantindo resiliência e eliminando links externos instáveis.
   - Ausência de bibliotecas de terceiros pesadas carregadas via script de CDN, reduzindo o tempo de carregamento da página.

3. **Acessibilidade e SEO**:
   - Atributos `aria-label`, `aria-expanded` e navegação via teclado para leitores de tela.
   - Meta tags de otimização de busca (SEO) e compartilhamento em mídias sociais (Open Graph).

---

## 💻 Como Visualizar Localmente

Não é necessário instalar nenhuma dependência ou servidor Node.js. Por se tratar de um projeto estático limpo:

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/rasp-automacao.git
   ```
2. Acesse a pasta do projeto:
   ```bash
   cd rasp-automacao
   ```
3. Abra o arquivo `index.html` diretamente no seu navegador de preferência (ou utilize extensões como o *Live Server* do VS Code).

---

## 🌐 Como Hospedar no GitHub Pages

Para publicar este site gratuitamente usando o **GitHub Pages**:

1. Suba este projeto para um novo repositório público no GitHub:
   ```bash
   git init
   git add .
   git commit -m "feat: refatoracao completa do site estatico Rasp Automacao"
   git branch -M main
   git remote add origin https://github.com/seu-usuario/rasp-automacao.git
   git push -u origin main
   ```
2. No repositório no GitHub, acesse **Settings** > **Pages** (no menu lateral).
3. Na opção **Build and deployment**:
   - **Source**: Selecione `Deploy from a branch`.
   - **Branch**: Escolha `main` / `root` (pasta raiz) e clique em **Save**.
4. Aguarde alguns segundos. O GitHub gerará um link público para acesso (ex: `https://seu-usuario.github.io/rasp-automacao/`).

---

## 📄 Licença

Este projeto é de uso institucional da **Rasp Automação**. Todos os direitos reservados.
