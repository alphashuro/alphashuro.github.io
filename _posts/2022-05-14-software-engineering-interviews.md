---
layout: post
title: "Software engineering interviews"
date: 2022-05-16 19:51:32 +0200
categories: software-engineering
---

# Thoughts on software engineering interviews

## TL;DR

- technical assessments should be take home projects with no time limit
- the evaluation of the solution should involve 
    1. the team reading through the solution, evaluating it
    2. the engineer presenting their solution to members of the team in a situation designed to simulate a real project the team needs to work on

## Reasoning

Software engineering involves a lot of creative problem solving, 
and when you're stressed your brain makes very inaccurate decisions based more on emotion than thought.
Brain functions involved in problem solving, like goal directed behaviour, reinforcement learning, decision-making, etc happen in the frontal lobe.
// frontal lobe illustration

Information from your senses usually has to pass through the frontal lobe first before resulting in action, 
giving you the opportunity to think carefully before it goes to the amygdala to be processed for emotion, 
earning us the classification of an "intelligent species".
However, when you're in a stressful situation the brain begins to prefer speed over quality [of thought], and sends information directly to the amygdala.

See, from our brain's perspective, stress means _death is imminent, execute emergency procedures_.
So this effectively shuts down your thinking machine to act on reflex rather than intelligent thought.
This is sometimes known as an "amygdala hijack", the "fight or flight response", or [in some cases](https://www.youtube.com/watch?v=_JF0Jys5ITc) the "play dead" response.

Tech interviews are usually in these formats:
- live coding questions while being watched
- solving abstract or made up problems given a list of requirements
- solving real world technical or architectural problems during the interview

All of these scenarious tend to create this kind of stressful situation, because
1. Millenia of human evolution has driven us to see social interaction as a life and death affair, and it hasn't caught up with how much the world has changed in the last few centuries. Failed social interactions don't often result in death any more.
2. Sometimes, it actually _is_ a threat to the candidate's well being, if their survival or well being is reliant on it. In Africa, this is often the case.

Given that we want to see how well a candidate can solve problems, 
we shouldn't put them in a situation where their brain performs _worst_. 

## What I propose

Give the candidate mage a problem or feature that a hypothetical team needs to build, and ask them to go and design a proposal in their own time.
Have them present the solution to the interviewers, as if they were communicating their proposed solution with the team, ready to create tasks and implement.
The interviewers should of course still ask questions, just as a team would. "Why technology x?", "What alternatives were considered?", "How do we cater for y?" etc.

This would hopefully give a better idea of how well someone understands how to
1. use technology to solve a given problem
2. research on the go to fill gaps in knowledge
3. communicate the solution to team members effectively

## Other notes

- "But can they code?" - give an async take-home coding project before this to make sure
- "What if they didn't do it themselves?" - the questions should show that. Someone who really designed the solution can go quite deep into details about how they thought about it, and people who didn't can only give shallow answers and can't explain why certain tradeoffs were made.