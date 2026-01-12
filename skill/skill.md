# Skill: Diretrizes do Sistema de Design

Este documento personaliza a skill para o nosso sistema de design. Ajuste as seções abaixo para refletir identidade, cores, tipografia e iconografia da sua marca.

## 1. Direções de design (Personalidade)
Resumo curto da personalidade da marca e variações possíveis:
- Tom principal: claro, acessível, confiante.
- Voz: direta, amigável, profissional.
- Persona: "Guia prático" — prioridade em clareza e eficiência.
- Estados/variações:
  - Assistente formal: respostas curtas, linguagem técnica quando necessário.
  - Assistente amigável: linguagem coloquial, exemplos práticos.
  - Assistente criativo: tom mais imagético, metáforas e sugestões de layout.

Exemplos de padrões de resposta:
- Respostas curtas (prefira 1–3 sentenças) para tarefas rápidas.
- Respostas longas (com seções e exemplos) quando o assunto exigir passo-a-passo.
- Use sempre títulos em negrito para separar passos.

## 2. Fundamentos de Cor (Tokens)
Defina tokens de cor que representem a marca e sejam reutilizáveis:

- Primárias:
  - --color-primary: #0B63FF
  - --color-primary-600: #0A57E0
- Secundárias:
  - --color-accent: #FF6B35
- Neutros:
  - --color-bg: #FFFFFF
  - --color-surface: #F6F7FB
  - --color-text: #0B0E13
  - --color-muted: #6B7280

Acessibilidade:
- Confirme contraste >= 4.5:1 para textos normais contra o fundo.
- Forneça alternativas de cores para estados habilitado/disabled e foco.

Exemplos de uso:
- Componentes primários: fundo `--color-primary`, texto em branco.
- Ações secundárias: borda `--color-accent`, texto `--color-primary`.

## 3. Tipografia
Defina a pilha de fontes e os tokens tipográficos:

- Font-family (web):
  - --font-sans: "Inter", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  - --font-mono: "Fira Code", ui-monospace, SFMono-Regular, Menlo, Monaco, monospace;

- Scale & tokens:
  - --type-scale-xxl: 40px / 48px (h1)
  - --type-scale-xl: 32px / 40px (h2)
  - --type-scale-lg: 24px / 32px (h3)
  - --type-scale-md: 16px / 24px (body)
  - --type-scale-sm: 14px / 20px (helper)

- Pesos recomendados:
  - Regular 400, Medium 500, Semibold 600, Bold 700.

Substitua por fontes da sua licença (Google Fonts, fontes proprietárias ou variáveis locais). Se usar var(--font-sans), documente fallback.

## 4. Espaçamento e Layout (breve)
- Grid base: 8px.
- Margens/paddings: múltiplos de 8 (8, 16, 24, 32...).
- Border radius padrão: 8px (componentes), 9999px (pílulas).

## 5. Iconografia
Atualmente o repositório usa Phosphor (exemplo). Para trocar:

1. Escolha a biblioteca: FontAwesome, Material Icons, Heroicons, Feather, ou biblioteca interna.
2. Documente o padrão de nomes de ícones e tamanhos:
   - Tamanhos: 16, 20, 24 (use tokens --icon-sm, --icon-md, --icon-lg)
   - Uso semântico: `icon:search` -> ação de pesquisa; `icon:close` -> cancelar/fechar.
3. Exemplos de como declarar em componentes (pseudocódigo):
   - Com Phosphor:
     - `<Icon name="ph-search" size="20" weight="regular" />`
   - Com outra biblioteca (ex.: Heroicons):
     - `<Icon name="hero-search" size="20" />`
   - Ou usando SVGs inline para controle total:
     - `icons/search.svg` e `<img src="icons/search.svg" alt="Pesquisar">`

Se você substituir Phosphor por (por exemplo) Heroicons, liste:
- Como importar no projeto (npm/yarn/pacote CDN)
- Como mapear nomes antigos para novos (tabela de migração rápida)

## 6. Tokens e Exemplo de Tema (CSS custom properties)
:root {
  --color-primary: #0B63FF;
  --color-accent: #FF6B35;
  --color-bg: #FFFFFF;
  --color-text: #0B0E13;
  --font-sans: "Inter", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
  --icon-sm: 16px;
  --icon-md: 20px;
  --icon-lg: 24px;
}

## 7. Checklist para personalização
- [ ] Atualizei as cores com os tokens da minha marca.
- [ ] Defini a pilha de fontes e pesos.
- [ ] Escolhi e documentei a biblioteca de ícones.
- [ ] Verifiquei contraste e acessibilidade.
- [ ] Atualizei exemplos de componente (botões, inputs, badges).

## 8. Notas finais
Inclua links para a biblioteca de design (Figma/Sketch), paleta exportável e qualquer token design-system JSON/CSS para automação.