# 📘 Automação com Robot Framework + Playwright

Este guia é voltado para automação de testes utilizando o **Robot Framework com a biblioteca Browser (baseada em Playwright)**. Ideal para quem quer usar sintaxe simples com poder do Playwright por trás.

---

## 📌 Sumário de Comandos Usados no Curso

| Comando | Descrição |
|--------|-----------|
| `robot -d ./logs tests/slogan.robot` | Executa o teste `slogan.robot` e salva os logs em `./logs` |
| `npm run dev` | Inicia o servidor (geralmente um frontend local) |

---

## 🔧 Instalação e Configuração

### 1. ✅ Pré-requisitos

- Node.js instalado (versão 16+)
- Python 3.8+
- pip atualizado
- npm atualizado

---

### 2. 📦 Instalando o Robot Framework + Browser (Playwright)

```bash
# Crie e ative um ambiente virtual (opcional, mas recomendado)
python -m venv .venv
source .venv/bin/activate  # Linux/Mac
.venv\Scripts\activate     # Windows

# Instale o Robot Framework
pip install robotframework

# Instale a biblioteca Browser (que usa Playwright por trás)
pip install robotframework-browser

# Instale os drivers do Playwright
rfbrowser init
```

---

## 🤖 Diferenças entre Robot + Playwright e Playwright puro

| Característica                    | Robot + Playwright (Browser lib) | Playwright puro |
|----------------------------------|----------------------------------|-----------------|
| Comandos próprios (keywords)     | ✅ Sim (ex: `New Page`, `Click`) | ❌ Não          |
| Baseado em Playwright            | ✅ Sim                            | ✅ Sim          |
| Linguagem principal              | Robot Syntax (.robot)            | JS, Python, etc.|
| Complexidade para iniciantes     | 🔰 Mais simples                   | 🧠 Mais técnica |
| Flexibilidade total do Playwright| ❌ Limitado                       | ✅ Completo     |

---

## 🧪 Exemplos de Código

### ✅ Robot + Playwright (`Browser` Library)

```robot
*** Settings ***
Library    Browser

*** Test Cases ***
Abrir Página e Verificar Título
    New Browser    chromium
    New Page    https://example.com
    ${title}=    Get Title
    Log    ${title}
    Close Browser
```

---

### ✅ Playwright Puro (JavaScript)

```javascript
const { chromium } = require('playwright');

(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto('https://example.com');
  console.log(await page.title());
  await browser.close();
})();
```

---

## 🚀 Dica de Organização do Projeto

```
meu-projeto/
│
├── tests/
│   └── slogan.robot
│
├── logs/
│   └── (relatórios gerados aqui)
│
├── .venv/ (opcional)
├── package.json (se usar npm para front)
└── README.md (este arquivo)
```

---

## 📂 Logs e Relatórios

Após rodar o comando:
```bash
robot -d ./logs tests/slogan.robot
```
Você terá na pasta `/logs`:

- `log.html` — log completo da execução
- `report.html` — relatório resumido
- `output.xml` — saída de execução (útil para CI)

---

## 🧠 Observações

- Use `rfbrowser init` **apenas uma vez** (instala o Playwright internamente).
- A biblioteca `Browser` é diferente da `SeleniumLibrary`.
- Você pode integrar com testes BDD usando `robotframework-tidy` e `robotframework-debuglibrary`.
