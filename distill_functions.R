# Create website files in the project directory,
distill::create_website(dir = ".", 
                        title = "Colin Burstead", 
                        gh_pages = TRUE)

# Remove index.
unlink(index.Rmd)

# Create postcard. 
distill::create_article(file = "postcard",  
                        template = "jolla",    
                        package = "postcards")

# Create article folder (if wanted).
dir.create("_posts")

# Create an example article in that folder.
distill::create_article(file = "_posts/first_article",
                        template = "distill_article")


# YAML code for github logo in nav bar. Copy and paste this into the YAML.
# - icon: fab fa-github
#   href: https://github.com/aosmith16/personal-website
