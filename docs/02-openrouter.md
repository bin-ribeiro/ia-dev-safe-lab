# Parte 2: Configurando OpenRouter

O OpenRouter é um gateway que dá acesso a centenas de modelos de LLM (OpenAI, Anthropic, DeepSeek, Llama, Mistral, etc.) através de uma única API.

## Vantagens para o Projeto
- **Modelos Gratuitos:** Acesso a modelos como `deepseek/deepseek-chat:free` e `nvidia/llama-3.1-nemotron-70b-instruct:free`.
- **API Unificada:** Trocar de modelo é só mudar o nome no config, sem mudar código.

## Gerando a Chave de API

1.  Acesse [openrouter.ai](https://openrouter.ai/).
2.  Vá em **Settings > Keys**.
3.  Clique em **Create Key**.
4.  Copie a chave (`sk-or-v1-...`).

## Como usar no ai-jail

Nunca salve a chave em arquivos (`git`). Sempre passe como variável de ambiente na hora de rodar:

```bash
# Exporta a chave (temporário, só nessa sessão do terminal)
export OPENROUTER_API_KEY="sk-or-v1-sua-chave-aqui"

# Roda o ai-jail passando a chave explicitamente
ai-jail --env OPENROUTER_API_KEY opencode
