# Plano: um dock para Windows inspirado no lumabar (2026-11-17)

## 1. Por que este (os números)
Fonte: https://trustmrr.com/startup/lumabar (Polar, via API key).

| Data | Receita em 30 dias | Dias com pagamento |
|---|---|---|
| 04/11 | $2,519 | 22 de 30 |
| 10/11 | $4,506 | 26 de 30 |
| 17/11 | **$14,483** | **30 de 30** |

- **Os últimos 7 dias** somaram $9,339, e o maior dia foi 15/11, com $3,919 (27%). Houve um pico viral por cima de uma base que já era estável.
- **Volume:** se o preço continuou US$ 5.99, são cerca de 2.400 vendas em 30 dias. É uma estimativa, porque o TrustMRR não mostra o número de vendas.
- **O fundador** tinha 35 seguidores no X em 04/11 e hoje tem 144. A venda não veio de audiência.
- **O canal declarado** é o Reddit. Nasceu em 01/10/2026.

**O que isso prova:** usuários de Windows 10 e 11 **pagam** para trocar a barra de tarefas por algo mais bonito e útil. A demanda é por **personalização**, e o Windows 11 tirou muita personalização da barra de tarefas.

## 2. Regra de ouro
Copiar a **demanda, a oferta e o canal**. **Nunca** o código, o nome, a marca, os textos, as imagens ou a lista exata de widgets do lumabar. O produto precisa ter uma cara e um motivo próprios.

## 3. O ângulo (minha recomendação)
**Um dock para Windows feito para quem ganha dinheiro no computador**: freelancers, lojistas online e devs. É uma "barra de comando do seu negócio", não um enfeite.

| Para quem | Widgets que o lumabar não foca |
|---|---|
| **Brasil (diferencial forte)** | Pix recebidos (via API do banco ou Mercado Pago), vendas do Mercado Livre e da Shopee, rastreio dos Correios, cotação do dólar, lembrete de DAS do MEI |
| **Global** | Vendas do Stripe, Gumroad e Shopify, status de deploy (Vercel, GitHub Actions), agentes de IA (aviso quando o Claude Code ou o Codex terminam), timer de foco/Pomodoro com fatura de horas |

**Por que esse ângulo:**
- **Você é programador:** integrações com APIs são exatamente o seu ponto forte, e são difíceis de copiar para quem faz só "visual".
- **Paga mais:** quem usa o computador para ganhar dinheiro tolera um preço maior que US$ 5.99.
- **O Brasil não tem um produto assim:** nenhum concorrente encontrado. Isso ainda precisa ser validado (fase 0).

## 4. Produto: primeira versão (MVP)
**O mínimo que precisa funcionar bem:**
1. Uma barra fixa no topo ou embaixo que **reserva espaço na tela**, como a barra do Windows faz (API AppBar do Win32), sem cobrir janelas.
2. **Ícones dos apps abertos**, com clique para alternar, e o relógio.
3. **8 a 10 widgets:** relógio e agenda, música, clima, CPU e RAM, cotação do dólar, Pix e Mercado Pago, Stripe, aviso de agente de IA e tarefas rápidas.
4. **Tema claro e escuro**, e posição no topo ou embaixo.
5. **Inicia com o Windows**, com atualização automática.
6. **Licença por chave**, com teste grátis de 7 dias.

**Tecnologia recomendada:**
- **Tauri 2 (Rust) + React/TypeScript** para os widgets. O app fica leve (poucos MB, contra mais de 100 MB de um Electron), a interface é web e o Rust tem acesso direto à API do Windows (crate `windows`) para a AppBar e a lista de janelas.
- **Alternativa:** C# com WinUI 3, se você preferir .NET. A integração com o Windows fica mais fácil, mas fazer widgets bonitos dá mais trabalho.
- **Licenças:** Polar ou Lemon Squeezy, que entregam a chave e têm API de validação, para o mercado global. Kiwify ou Mercado Pago para Pix no Brasil.
- **Assinatura digital do instalador:** sem ela, o Windows mostra o aviso do SmartScreen e assusta o comprador. A Microsoft Store resolve isso para quem instala por lá.

## 5. Preço
- **Global:** US$ 9.99 em pagamento único (o lumabar está em US$ 5.99 como "preço de lançamento" de US$ 15.99), mais um **Pro a US$ 3.99 por mês ou US$ 29 por ano** para os widgets de negócio (Stripe, Shopify, Mercado Livre, Pix), que dependem de servidor e de manutenção das integrações.
- **Brasil:** *sugestão* de R$ 29 em pagamento único e Pro a R$ 14,90 por mês, pago com Pix.
- Os valores são sugestões. Ajustamos depois do teste da fase 0.

## 6. Canais (sem você precisar fazer conteúdo)
1. **Microsoft Store:** busca orgânica e instalação confiável. É o canal principal.
2. **Reddit**, o canal do lumabar: comunidades de personalização de Windows. **Você** posta um GIF curto do produto. Eu escrevo o texto e preparo o GIF, mas quem publica é você. Uma postagem por lançamento, sem spam.
3. **SEO programático:** páginas como "como mostrar Pix recebidos na barra do Windows" e "barra de tarefas para vendedores do Mercado Livre". Eu escrevo as páginas.
4. **Afiliados:** comissão para youtubers de setup e personalização do Windows. Eles fazem o conteúdo, não você.

## 7. Cronograma (6 semanas)

| Semana | O que | Quem |
|---|---|---|
| **0 (já)** | **Validar antes de programar:** landing page com vídeo do protótipo, preço e botão de pré-venda ou lista de espera. Você posta em 2–3 comunidades. **Meta:** 100 inscritos ou 10 pré-vendas. Se não bater, paramos e economizamos 5 semanas. | Eu faço a página, você publica |
| 1–2 | Base do app: AppBar, ícones das janelas, relógio, temas, início automático | Eu programo, você testa no seu Windows |
| 3 | Widgets: música, clima, sistema, dólar, aviso de agente de IA, tarefas | Eu programo |
| 4 | Widgets de negócio: Stripe, Mercado Pago/Pix, Mercado Livre e licença com teste de 7 dias | Eu programo, você cria as contas e as chaves |
| 5 | Instalador, assinatura digital, atualização automática e envio à Microsoft Store | Eu preparo, você envia com a sua conta |
| 6 | Lançamento: post no Reddit, páginas de SEO, primeiros afiliados | Eu escrevo, você publica |

## 8. O que eu faço e o que você faz
**Eu faço:**
- o código inteiro;
- a landing page, os textos, o FAQ, os termos e a política de privacidade (com revisão de advogado recomendada);
- as páginas de SEO e os posts prontos para você publicar;
- os testes automatizados e o build.

**Você faz:**
- testar no seu PC com Windows (o meu ambiente é Linux, então não consigo rodar o app de verdade);
- criar as contas: Microsoft Partner Center, Polar ou Lemon Squeezy, Kiwify ou Mercado Pago, domínio e certificado de assinatura;
- colocar as chaves de API;
- publicar os posts e responder os clientes;
- tomar as decisões de preço e de lançamento.

## 9. Metas para saber se está dando certo
- **Fase 0:** 100 inscritos ou 10 pré-vendas em 7 dias.
- **Mês 1 depois do lançamento:** 200 vendas, ou cerca de US$ 2.000 somando o global e o Brasil.
- **Mês 3:** 10% dos compradores no plano Pro, para começar uma receita recorrente.

## 10. WHY THIS COULD FAIL
- **O pico do lumabar pode ser um viral passageiro:** $3,919 num dia é post viral. A base estável era de cerca de US$ 100–200 por dia. Planeje com base nessa faixa, não no pico.
- **A Microsoft pode resolver o problema:** há relatos de que ela vai voltar a permitir mover e personalizar a barra de tarefas, o que reduziria a demanda.
- **Há concorrência grátis forte:** Seelen UI, RetroBar e Windhawk. Por isso o ângulo precisa ser **útil (negócio)**, não só bonito.
- **Substituir a barra do Windows é tecnicamente chato:** vários monitores, escala de DPI, apps em tela cheia, conflito com antivírus e atualizações do Windows que quebram APIs. O suporte vai dar trabalho.
- **Eu não consigo testar no Windows** daqui. Cada etapa depende do seu teste no seu PC, e isso deixa o ciclo mais lento.
- **A demanda brasileira não está comprovada.** É exatamente para isso que serve a fase 0.
- **Ticket baixo:** sem o plano Pro, viver disso exige milhares de vendas por mês.

## 11. Próximo passo
Dizer **"começa a fase 0"**. Eu crio um repositório novo (`dock-windows` ou o nome que você escolher) com a landing page e o texto de pré-venda, e te passo o que você precisa publicar.
