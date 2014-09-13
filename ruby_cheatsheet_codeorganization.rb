:Code :Organization

1. Modules And Names Spaces

- Modules Are Like Classes But Not Instantiated. Consists Of Methods That Stand Alone Or Can Mix Into Class 

- Use Include To Include Modules Into Classes So DRY

- Use Extend If Wish To Use Module Methods As Class Methods. This Is How Ruby Does Multiple Inheritance

- Also Used To Give Namespaces To Methods


2. Loading Files

- require 'module_gem_file' Does The Trick If It Is Installed In Rubys Path But Only Loads Once. Use './pretty_file' If It Is In Same Directory You Are Running From

- Load Order : First Global Variable $LOAD_PATH, Then Check If It Is A Gem. 

- require_relative 'not_as_pretty_file' Loads From The Name Of File Calling The Require Rather Than From Terminal Diretory

- load 'file_name' Should Not Be Used In Source Files Since You Probably Aren Modifiying Them Real Time


3. Library Management


- Ruby Gems Are What Ruby Libraries Are Called. Find Gems Via Github Is A Great Way. 

- gem install prettiest_gem To Install Gems (Dont Sudo It Unless Absolutely Have To For Some Reason, Which Is Never If Using RVM Or RBENV)

- require 'prettiest_gem' Loads The Gem Right Up, Man That Was Easy. .gem Files Will Tell RVM RBENV What Version Of Gem To Use. 
