{
  enable = false;

  enableMan = true;

  colorschemes.catppuccin.enable = true;

  plugins = {
    telescope = {
      enable = true;
    };

    bufferline = {
      enable = true;
    };

    lualine = {
      enable = true;
    };

    treesitter = {
      enable = true;
      indent = true;
    };

    nvim-autopairs = {
      enable = true;
    };

    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        {name = "nvim_lsp";}
	{name = "path";}
	{name = "buffer";}
      ];

      mapping = {
        "<Return>" = "cmp.mapping.confirm({ select = true })";
	"<Down>" = "cmp.mapping.select_next_item()";
	"<Up>" = "cmp.mapping.select_prev_item()";
      };
    };

    lsp = {
      enable = true;

      servers = {
	nixd.enable = true;
	clangd = {
	  enable = true;
	  installLanguageServer = true;
	};
      };
    };

    rust-tools = {
      enable = true;
    };

    luasnip = {
      enable = true;
    };
  };
}
