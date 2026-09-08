# IA Dev Safe Lab: Ambiente de Desenvolvimento Assistido por IA Seguro e Auditável

## Objetivo
Criar um ambiente de desenvolvimento assistido por IA no Linux (Omarchy) que é **seguro, privado, isolado do host** e **auditável**, utilizando LLMs gratuitas (OpenRouter, modelos chineses/NVIDIA).

## Tecnologias
- **Isolamento:** `ai-jail` (Bubblewrap, Landlock, Seccomp) para sandboxing.
- **Persistência e Auditoria:** `AgentFS` (SQLite/Turso) para rastrear estado e ações.
- **LLMs Gratuitas:** OpenRouter (acesso a modelos chineses, NVIDIA, etc.).
- **Ferramentas:** `opencode` (CLI), `just-bash` (execução segura de comandos).

## Conexão com Cybersecurity (Trilha Aceleração)
Este projeto aplica conceitos de **Segurança Aplicada à IA** e **Desenvolvimento Seguro**:
1.  **Sandboxing:** Mitiga riscos de execução de código malicioso por agentes.
2.  **Auditoria:** Rastreia cada ação do agente via AgentFS.
3.  **Privacidade:** Isola credenciais e dados sensíveis do host.

## Estrutura do Projeto
- `docs/`: Documentação passo a passo.
- `setup/`: Scripts de instalação e configuração.
- `examples/`: Exemplos integrados (ex: `ai-sdk-just-bash`).

## Como Usar
Clone o repositório e siga o guia em `docs/` para reproduzir o ambiente.

## Status
- [x] Parte 1: Objetivo e Conexão com Cybersecurity
- [ ] Parte 2: ai-jail e OpenRouter
- [ ] Parte 3: AgentFS e Exemplos
- [ ] Parte 4: Integração Completa
