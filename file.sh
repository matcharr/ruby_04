#!/bin/bash

#if u haven't create repo add : 
#git clone <ur_link> <mini_jeu_POO> &&\
cd mini_jeu_POO \
&& pwd \
&& printf "\033[1;31m Creating roots files \033[0m\n" \
&& mkdir lib \
&& touch app.rb README.md Gemfile Gemfile.lock .env .gitignore \
&& echo "# mini_jeu_POO" > README.md \
&& echo ".env" > .gitignore \
&& echo "# frozen_string_literal: true" >> app.rb \
&& echo 'source "https://rubygems.org"
ruby '2.5.1'
gem 'rubocop', '~> 0.57.2'
gem 'rspec'
gem 'pry'
gem 'nokogiri'' >> Gemfile \
&& echo "GEM
  remote: https://rubygems.org/
  specs:
    ast (2.4.1)
    coderay (1.1.3)
    diff-lcs (1.4.4)
    jaro_winkler (1.5.4)
    method_source (1.0.0)
    mini_portile2 (2.4.0)
    nokogiri (1.10.10)
      mini_portile2 (~> 2.4.0)
    parallel (1.19.2)
    parser (2.7.1.4)
      ast (~> 2.4.1)
    powerpack (0.1.2)
    pry (0.13.1)
      coderay (~> 1.1)
      method_source (~> 1.0)
    rainbow (3.0.0)
    rspec (3.9.0)
      rspec-core (~> 3.9.0)
      rspec-expectations (~> 3.9.0)
      rspec-mocks (~> 3.9.0)
    rspec-core (3.9.2)
      rspec-support (~> 3.9.3)
    rspec-expectations (3.9.2)
      diff-lcs (>= 1.2.0, < 2.0)
      rspec-support (~> 3.9.0)
    rspec-mocks (3.9.1)
      diff-lcs (>= 1.2.0, < 2.0)
      rspec-support (~> 3.9.0)
    rspec-support (3.9.3)
    rubocop (0.57.2)
      jaro_winkler (~> 1.5.1)
      parallel (~> 1.10)
      parser (>= 2.5)
      powerpack (~> 0.1)
      rainbow (>= 2.2.2, < 4.0)
      ruby-progressbar (~> 1.7)
      unicode-display_width (~> 1.0, >= 1.0.1)
    ruby-progressbar (1.10.1)
    unicode-display_width (1.7.0)

PLATFORMS
  ruby

DEPENDENCIES
  nokogiri
  pry
  rspec
  rubocop (~> 0.57.2)

RUBY VERSION
   ruby 2.5.1p57

BUNDLED WITH
   2.1.4" >> Gemfile.lock \
#ls -la\
&& cd lib \
&& pwd \
&& touch player.rb game.rb \
&& echo "# frozen_string_literal: true" >> player.rb \
&& echo "# frozen_string_literal: true" >> game.rb \
# ls -la\
&& cd .. \
&& pwd \
&& ls -la \
&& printf "\033[1;31m Done! \033[0m\n" \
