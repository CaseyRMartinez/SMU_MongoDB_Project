# Proper Database Model for Unsctructured Wind Turbine Vibration Data
## SMU Masters Program - Database Management Course - Spring 2018
### Authors: Casey Martinez, Matt Rega, and Kyle Thomas

### Introduction

Turbine vibration data has been stored in a MySQL database. A significant amount of analysis must be performed on these data sets. However, in order to fit into a relational database, the data has been stored as a BLOB along with associated meta-data. Storing data in this format has imposed limitation on the extraction and analysis. 

A document-style NoSQL database is perfect for this semi-structured dataset since the analysis data will be stored as key-value pairs with no strict constraints regarding data types or formats. MongoDB will be used because it is popular and extremely scalable horizontally.  




![SQLblob](SMU_MongoDB_Project/images/blob.PNG)


You can use the [editor on GitHub](https://github.com/DataDriving/SMU_MongoDB_Project/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/DataDriving/SMU_MongoDB_Project/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
