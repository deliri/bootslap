namespace :vim do

    task :pathogen_install do
        system "mkdir -p ~/.vim/autoload ~/.vim/bundle"
        system "curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim"
        
    end

    task :plugins_install => [:pathogen_install] do
        $pluginsdir = "#{$home}/.vim/bundle"
        subdir_clone( $pluginsdir, 'ctrlp.vim', 'https://github.com/kien/ctrlp.vim.git' )
        subdir_clone( $pluginsdir, 'rails.vim', 'git://github.com/tpope/vim-rails.git' )
        subdir_clone( $pluginsdir, 'rake.vim', 'git://github.com/tpope/vim-rake.git' )
    end
end

