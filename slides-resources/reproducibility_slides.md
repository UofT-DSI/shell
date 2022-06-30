---
marp: true
theme: uncover
_class: invert
paginate: true

style: |
    img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }

---
<style>
    p {
        text-align: left;
        font-size: 35px
    }
    ul {
        margin: 0;
        font-size: 35px;
    }
    table {
        font-size: 35px;
    }
    ol {
        margin: 0;
        font-size: 35px;
    }

    blockquote {
        border-left: 10px solid #ccc;
        margin: 1.5em 10px;
        padding: 0.5em 30px;
        quotes: "\201C""\201D""\2018""\2019";
    }

    blockquote:before {
        color: #ccc;
        content: none;
        font-size: 4em;
        line-height: 0.1em;
        margin-right: 0.25em;
        vertical-align: -0.4em;
    }

    blockquote:after{
        content: none;
    }
</style>



# **Reproducibility**
```bash
$ echo "Data Sciences Institute"
$ echo "Rachael Lam"
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
What is reproducibility?

---
- Reproducibility is the ability for for independent researches to obtain the same or similar results when repeating an experiment or test.

- This concept has been widely used in natural sciences, but is not yet as popular in data science.

- Remember, data science is a science. We question, hypothesize, test, and therefore, we should also have the same rigour of confirmation.

---
- Skepticism should always be able to be independently verified. We should be able to defend our results and decisions.

- Who would believe your results otherwise? More importantly, you should not believe results if they cannot be verified.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
Why is reproducibility important?

---
1. New Insights

2. Reduce Error Risks

3. Validate Results

4. Transparency

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
How can we make our work reproducible?

---
There are a number of practices that can help make our work reproducible including:
- Commenting Code
- Technical Documentation
- Folder Structure

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Commenting Code`

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
How does commenting code help in reproducibility?

---
Commenting code is an important practice that benefits both ourselves and collaborators.

Not only can we understand what we did to fix our own errors or improve our work, but others can better understand our code to reproduce it.

---
[Ellen Spertus](https://stackoverflow.blog/2021/12/23/best-practices-for-writing-code-comments/) outlines 9 rules to follow:
<br>

1. Comments should not duplicate the code

2. Good comments do not excuse unclear code
3. If you can’t write a clear comment, there may be a problem with the code
4. Comments should dispel confusion, not cause it

---
5. Explain unidiomatic code in comments

6. Provide links to the original source of copied code
7. Include links to external references where they will be most helpful
8. Add comments when fixing bugs
9. Use comments to mark incomplete implementations

---
##### **1. Comments should not duplicate the code**
- Comments should add value to whoever is reading your code. 
- Duplicating code adds unneccesary bulk and can actually make it more difficult to understand the code.
<br>

**Can you think of a bad example?**

---
Here is an example of what you should **not** do:
```bash
x=5

if [ $x = 5 ]; then
    echo "x equals 5." # if x = 5 then ouput x equals 5

else
    echo "x does not equal 5." # otherwise output x does not equal 5

fi
```

---
##### **2. Good comments do not excuse unclear code**
- Our aim should always be having clear code, rather than relying on our comments to add clarity.
- Remember, we should not be adding more bulk to the code that makes it more difficult to understand.

```bash
Add example here
```

---
##### **3. If you can’t write a clear comment, there may be a problem with the code**
>Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to 
debug it.

\- Kernighan's Law

---
##### **4. Comments should dispel confusion, not cause it**
- If our comments are adding further confusion, we should either rewrite the comment or remove it entirely.
- A could comment should always be written with the intent to help better understand what is being done.

---
##### **5. Explain unidiomatic code in comments**
- If we've purposefully written code that others may find unecessary, we need to comment our reasoning.
- Others may try to simplify our code if we don't explain our reasoning.
<br>

**Can you think of an example?**

---
##### **6. Provide links to the original source of copied code**
- Often times, we'll use code that others have written. It's important to give credit to the original source, but as well as give us a reminder as to where we got the code to reference it later if we need.
- Referencing the source can also provide other information such as what the problem was, why the solution was recommended and how it can be improved. It also means, we don't have to comment all of these details again in our own code.

---
An example:
```bash
# I got these 9 rules from Ellen Spertus' blog post on
# StackOverflow: https://stackoverflow.blog/2021/12/23/
# best-practices-for-writing-code-comments/
```
- It's best to include the URL so other's don't have to search for the exact location. 
- Remember: **never** copy code that you don't personally understand.
- Code from StackOverflow falls under Create Commons licenses so a reference comment is needed.

---
##### **7. Include links to external references where they will be most helpful**
- References don't just have to be used for copied code. They can also provide information on decisions made or changes in practices

---
##### **8. Add comments when fixing bugs**
- Comments can help others understand what we modified, if the modification is still needed, and how to test our modifications
- Although `git blame` can be used to find the commit that modified the code, a good comment can help locate the change and are quite brief.

---
##### **9. Use comments to mark incomplete implementations**
- Sometimes we have limitations in our knowledge or time. Adding code documenting these limitations can allow us to better address and fix the issues.

---
##### **Some other good practices:**
- Comments should be clear and efficient. Don't add more information than necessary, but don't be too vague
- Remember to update your comments if you update your code. Old comments can add more confusion.
- Inline comments can add noise as they're mixed with our code. Spacing can be helpful here:

```python
colors = [[213/255,94/255,0],         # vermillion
          [86/255,180/255,233/255],   # sky blue
          [230/255,159/255,0],        # orange
          [204/255,121/255,167/255]]  # reddish purple
```

---
>Code tells you how, comments tell you why.

\- Jeff Atwood, Co-founder of StackOverflow

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Technical Documentation` 
## `Writing`

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
What is technical documentation writing?

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
Why is it important to write a good technical documentation?

---
Technical documents are necessary for reproducibility as they relay important information about your project to others. Writing technical documents is not easy but should not be overlooked.

A well done technical document will communicate the goals of a project and in doing so, can generate interest in the project.

---
GitHub outlines several pieces of information to include:
1. What the project does
2. Why the project is useful
3. How users can get started with the project
4. Where users can get help with the project
5. Who maintains and contributes to the project
<br>

This is just part of the story and we'll add more to this in the coming slides.

---
##### **README**
- Technical documentation writing is typically found in a `README.md` file. 
- If the `README.md` file is placed in our repo's root, `doc` folder, or hidden in the `.github` directory, GitHub will place the contents of the `README.md` on the main repo page.
- The `README.md` file will be the first thing visitors see when they come to the project page so it's important to make it as appealing as possible.

---
##### **Examples**
Let's walk through some good examples of `README.md` files:
- [Create Go App CLI](https://github.com/create-go-app/cli#readme)
- [Human Activity Recognition](https://github.com/ma-shamshiri/Human-Activity-Recognition#readme)
- [Markdownify](https://github.com/amitmerchant1990/electron-markdownify#readme)
- [More!](https://github.com/matiassingers/awesome-readme)

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
What did you like about these README files?

What similarities can you see?

---
##### **What should be included?**
1. Name of the project
2. What the project does
3. The project's usages
4. How to get started
5. Where to find help
6. Who contributes

---
##### **1. Name of the Project**
- The name of your project should be unambiguous.

---
##### **2. What the project does**
- This should be a description of the project.
- Provide context to the project and any reference links.
- Include features or background information
- *Can be titled "Description"*

---
##### **3. The project's usages**
- This should include how the project can be used.
- Provide examples using the code along with the expected output of said code.
- It should be a smaller example. Longer examples can be linked to.
- *Can be titled "Usages"*

---
##### **4. How to get started**
- This is the installation guide.
- Think of your particular audience and how much detail you might need to include.
- Add a requirements section if there are specific dependencies or needs to run in a particular programming language.
- *Can be titled "Installation"*

---
##### **5. Where to find help**
- Direct people on where to find help if they need.
- This could be the issues page on GitHub, a forum, or an email address.
- *Can be titled "Support"*

---
##### **6. Who contributes**
- This should outline how others can contribute to your project and what your requirements are for accepting contributions.
- *Can be titled "Contributing"*

---
##### **Additional Additions**
- **Visuals:** Visuals can grab people's attention, but they can also be helpful for showcasing what the code does. Include screenshots or GIFs that demonstrate your project.
- **Badges:** Badges provide metadata such as issue tracking, test results and downloads. [Shields.io](https://shields.io/) provides this service and you can also look at their [GitHub](https://github.com/badges/shields) for more information.
- **Acknowledgements:** Include the authors or anyone that helped with the project.

---
##### **Markdown**
- As noted by the extension, `README.md` files are usually written in markdown, thus using markdown syntax for styling.
- [GitHub](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) provides a good reference on how to write your README in markdown.

---
##### **Headings**
```markdown
# Largest Heading
## Second Largest Heading
### Third Largest Heading
```
![w:1000 center](pics/headings.png)

---
##### **Text Styling**
```markdown
**bold**
*italic*
~~strikethrough~~
**this is a *nested* example**
***bold and italic***
```
![w:1000 center](pics/text-styling.png)

---
##### **Quoting**
```markdown
> Block quote some text
```
![w:1000 center](pics/blockquote.png)

---
##### **Unordered Lists**
```markdown
- this is an unordered list
- second item
    - nested
        - second nest
```
![w:1000 center](pics/unordered.png)

---
##### **Ordered Lists**
```markdown
1. This is an ordered list
2. This is the second item
    - with some additional information
3. This is the third
```
![W:1000 center](pics/ordered.png)

---
##### **Codeblock**
Wrap your code in ``` to create a codeblock.

![W:1000 center](pics/codeblock.png)

---
##### **Links**
```markdown
[Rachael's GitHub](https://github.com/rachaellam)
```
![W:1000 center](pics/link.png)

---
##### **Images**
```markdown
![w:1000 center](pics/picture.png)
```
![w:500 center](pics/bobs-burgers-louise.gif)
As we see, images can also be GIFs. We can also play around with the size and alignment.

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Folder Structure`

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
What is folder structure and why is important?

---
A good folder structure is important for reproducibility because it easily allows for others to navigate and implement our projects. If someone references a file that is self contained, they know they won't have to change the file path to gain access.

For example, what is the difference between these two paths:

1. `"/Users/rachaellam/Documents/all-projects/this-project/data/"`

2. `"this-project/data/"`

---
Folder structure can vary based on the project but a basic one to follow is...
- **/inputs**
    - Everything that will not be edited including raw data and references
- **/outputs**
    - Everything that was created during the project and your results
- **/scripts**
    - All code that was written for the project

---
[Wilson et. al](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510#sec009) also outline a file structure that is similar...
- **/doc**
    - All text documents including documentation or references
- **/data**
    - All raw data and metadata
- **/results**
    - Files generated during the analysis including generated data or cleaned data
    - Results can be further divided into subdirectories that contain intermediate files and finished files
- **/src**
    - All code that was written for the project

---
**References**

Reproducibility:
- [Reproducibility and Research Integrity](https://doi.org/10.1080/08989621.2016.1257387)
- [Reproducibility, Replicability, and Reliability](https://doi.org/10.1162/99608f92.dbfce7f9)

---
Commenting:
- [Elena Kosourova](https://towardsdatascience.com/the-art-of-writing-efficient-code-comments-692213ed71b1)
- [Ellen Spertus](https://stackoverflow.blog/2021/12/23/best-practices-for-writing-code-comments/)

---
Technical Documentation Writing:
- [GitHub README](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes)
- [GitHub Markdown](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [KyuWoo Choi](https://www.freecodecamp.org/news/what-i-learned-from-an-old-github-project-that-won-3-000-stars-in-a-week-628349a5ee14/)
- [Make a README](https://www.makeareadme.com/)
- [Matias Singers](https://github.com/matiassingers/awesome-readme)

---
Folder Structure:
- [Rohan Alexander](https://www.tellingstorieswithdata.com/reproducible-workflows.html)
- [Wilson et. al](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510#sec009)

