# Dome Keeper - Shared Coop Upgrades Mod & Patcher

Este repositório contém o código-fonte do mod **Shared Coop Upgrades** para Dome Keeper, bem como os scripts e ferramentas do **Mod Patcher** para habilitar o carregamento de mods no jogo.

---

## 🇧🇷 Português

### 💡 Sobre o Mod
Este mod compartilha automaticamente todos os upgrades adquiridos de Keeper (velocidade, furadeira e capacidade de carga) entre todos os jogadores durante partidas cooperativas (online e locais).

### 🚀 Como Instalar (Para Jogadores)
1. **Inscreva-se no mod** na Oficina da Steam: [Link do Mod na Oficina].
2. **Ative a branch de testes:** Na Steam, clique com o botão direito no **Dome Keeper** -> **Propriedades** -> **Betas** -> Selecione a branch **`staging`**.
3. **Baixe o Patcher:** Vá na aba **Releases** deste repositório e baixe o arquivo `DomeKeeper_ModPatcher.zip`.
4. **Instale:** Extraia todo o conteúdo do `.zip` na pasta de instalação do seu jogo na Steam (onde fica o arquivo `domekeeper.pck`).
5. **Execute:** Dê dois cliques no arquivo `instalar_mod.bat` (ele fará backup automático dos seus saves e aplicará o patch).
6. **Jogue:** Inicie o jogo pela Steam. O mod será carregado automaticamente da Oficina!

---

## 🇺🇸 English

### 💡 About the Mod
This mod automatically shares all purchased Keeper upgrades (jetpack speed, drill strength, and carrying capacity) among all players during online and local split-screen co-op matches.

### 🚀 How to Install (For Players)
1. **Subscribe to the mod** on Steam Workshop: [Workshop Mod Link].
2. **Enable Beta Branch:** In Steam, right-click **Dome Keeper** -> **Properties** -> **Betas** -> Select the **`staging`** branch.
3. **Download the Patcher:** Go to the **Releases** tab of this repository and download `DomeKeeper_ModPatcher.zip`.
4. **Install:** Extract the contents of the `.zip` file directly into your game's installation folder (where `domekeeper.pck` is located).
5. **Execute:** Double-click the `instalar_mod.bat` file (it will automatically backup your save games and apply the patch).
6. **Play:** Launch the game from Steam. The mod will load automatically from the Steam Workshop!

---

## 🛠️ Estrutura do Repositório (Source Code)
* `instalar_mod.bat`: Script em lote do Windows usado para automatizar o processo de patch local.
* `Source/ModLoader/`: Contém a modificação feita no `mod_loader.gd` (Godot Mod Loader) que remove a restrição de mods e ativa o escaneamento da Oficina da Steam.
* `Source/SharedUpgradesMod/`: O código-fonte decompilado e original do mod de upgrades compartilhados.
