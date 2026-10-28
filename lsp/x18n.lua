---@brief
---
--- https://x18n.dev
---
--- Language server for [x18n](https://x18n.dev), an i18n toolkit that reads a project's locale
--- files, reports problems (missing, unused and broken keys) and edits them safely. It works
--- with vue-i18n, react-i18next, svelte-i18n, Angular ngx-translate, Laravel, Rails YAML,
--- .NET resx, Rust Fluent, Dart/Flutter, gettext and more, and is designed to run alongside
--- your main language server.
---
--- Provides standard LSP features (completion of keys, hover with translations, rename,
--- references, code lens, inlay hints, diagnostics matching `x18n check`) in JS/TS/Vue/Svelte
--- code and JSON/YAML locale files, plus custom `x18n/*` requests for third-party integrations.
---
--- Install globally with npm:
---
--- ```sh
--- npm install -g @x18n/lsp
--- ```
---
---@type vim.lsp.Config
return {
  cmd = { 'x18n-lsp', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'vue',
    'svelte',
    'json',
    'yaml',
  },
  root_markers = { 'x18n.config.ts', 'x18n.config.yml', 'x18n.config.json', 'package.json', '.git' },
  init_options = { showFlags = true },
}
