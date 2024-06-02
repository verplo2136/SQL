# Assignment 1: Design a Logical Model

## Question 1
Create a logical model for a small bookstore. 📚

At the minimum it should have employee, order, sales, customer, and book entities (tables). Determine sensible column and table design based on what you know about these concepts. Keep it simple, but work out sensible relationships to keep tables reasonably sized. Include a date table. There are several tools online you can use, I'd recommend [_Draw.io_](https://www.drawio.com/) or [_LucidChart_](https://www.lucidchart.com/pages/).

![Database ER diagram (Q1)] 
([02_assignments/design_a_logical_model.drawio.png](https://github.com/verplo2136/SQL/pull/1/commits/d7e0e81987bbb904fbbb5e9c70feda289ea50d9f))

## Question 2
We want to create employee shifts, splitting up the day into morning and evening. Add this to the ERD.

([02_assignments/design_a_logical_model2.drawio.png](https://github.com/verplo2136/SQL/blob/0618fbd42d098cd6958bf532c0aac990c946a0a5/02_assignments/design_a_logical_model2.drawio.png))

## Question 3
The store wants to keep customer addresses. Propose two architectures for the CUSTOMER_ADDRESS table, one that will retain changes, and another that will overwrite. Which is type 1, which is type 2?

([02_assignments/design_a_logical_model2.drawio.png](https://github.com/verplo2136/SQL/pull/1/commits/591702a2b6bc50fc713a4341fd7cd92cb90a8fbd))

_Hint, search type 1 vs type 2 slowly changing dimensions._

Bonus: Are there privacy implications to this, why or why not?

In Type 1 SCD, where existing data is overwritten with new values, there's a risk of losing historical information, potentially affecting privacy and data accuracy.

In Type 2 SCD, where historical data is preserved alongside new entries, there's a risk of unauthorized access to past records, which could lead to privacy breaches.

In both cases, careful handling of personally identifiable information (such as customer addresses) is essential to comply with privacy regulations like GDPR and CCPA. Failure to protect this data adequately could result in breaches of privacy and trust, as well as legal consequences for the organization.

## Question 4
Review the AdventureWorks Schema [here](https://i.stack.imgur.com/LMu4W.gif)

Highlight at least two differences between it and your ERD. Would you change anything in yours?

The AdventureWorks ERD offers a robust representation of business domains, encompassing Production, Person, Sales, and Purchasing departments. It provides valuable information on versioning and printing instructions, enhancing its usability. However, it falls short in clarifying column types.

In contrast, my ERD excels in specifying column types, ensuring clear data representation. However, it utilizes only two colors, which may hinder understanding. To improve, I would explore incorporating a more comprehensive color scheme to enhance clarity and facilitate easier comprehension.

# Criteria

[Assignment Rubric](./assignment_rubric.md)

# Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `June 1, 2024`
* The branch name for your repo should be: `model-design`
* What to submit for this assignment:
    * This markdown (design_a_logical_model.md) should be populated.
    * Two Entity-Relationship Diagrams (preferably in a pdf, jpeg, png format).
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/sql/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `model-design`.
- [ ] Ensure that the repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that the link is accessible in a private browser window.

If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-3-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
