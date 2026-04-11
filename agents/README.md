# Study Bible Agents

This directory contains specialized AI agents designed to analyze and extract different aspects of biblical texts. Each agent is configured as a YAML file and focuses on a specific analytical task.

## Agents Overview

### 1. Audience Perspective Analyzer (`audience.yaml`)
**Goal:** To infer what the audience could understand from the text at the time it was written.

**Instructions:**
- Analyze the text in its historical context
- Infer what contemporary audiences might have understood or interpreted
- List possible interpretations based on the era's knowledge, beliefs, and norms
- Explicitly avoid inferences from today's perspective
- Base interpretations on textual evidence and historical plausibility

**Extracts:** Possible contemporary interpretations of the text.

### 2. Author Perspective Analyzer (`author.yaml`)
**Goal:** To infer the origin, author, thoughts, audience, and when the text was written.

**Instructions:**
- Analyze the text to infer its origin or historical/cultural context
- Identify possible authors based on style, content, or clues in the text
- Speculate on the author's thoughts, intentions, or perspectives
- Infer the target audience of the text
- Infer the time period when the text was written
- Base inferences on textual evidence but acknowledge speculative nature

**Extracts:** Origin, author, thoughts, audience, and time period of the text.

### 3. Noun Identifier (`noun.yaml`)
**Goal:** To identify nouns in text, provide English translations, and summarize contextual actions or states.

**Instructions:**
- Identify all nouns in the provided text
- For nouns in languages other than English, provide accurate English translations
- For each noun, provide a summary of the contextual actions, states, or participations mentioned in the text
- Ensure the analysis is comprehensive and language-agnostic

**Extracts:** Nouns with their translations and contextual summaries of related actions, states, or participations.

### 4. Phrase Identifier (`phrase.yaml`)
**Goal:** To identify key phrases and sentences in text, provide English translations, and summarize contextual actions or states.

**Instructions:**
- Identify all phrases and sentences in the provided text
- For phrases and sentences in languages other than English, provide accurate English translations
- For each phrase or sentence, provide a summary of the contextual actions, states, or participations mentioned in the text
- Ensure the analysis is comprehensive and language-agnostic

**Extracts:** Key phrases and sentences with their translations and contextual summaries of related actions, states, or participations.

### 5. Question Analyzer (`question.yaml`)
**Goal:** To analyze text, identify questions it answers, and provide possible answers to those questions.

**Instructions:**
- Analyze the text to determine what questions it is answering
- For each identified question, list possible answers derived from the text
- Ensure the questions and answers are directly supported by the text
- Be comprehensive but focused on the text's content

**Extracts:** Questions that the text answers along with possible answers based on the content.

### 6. Teaching and Goal Analyzer (`teaching.yaml`)
**Goal:** To identify teachings and the goal of the text.

**Instructions:**
- Analyze the text to extract key teachings or lessons
- Determine the primary goal or purpose of the text
- Ensure the analysis is based directly on the text's content
- Be comprehensive but focused on the text's main messages

**Extracts:** Key teachings (lessons, principles, or insights) and the overall goal or purpose of the text.

### 7. Text Translator (`translation.yaml`)
**Goal:** To provide accurate English translations of texts in any language.

**Instructions:**
- Translate the entire provided text into English
- Maintain the original meaning and tone as closely as possible
- Preserve important nuances, wordplay, or cultural references where present
- If the text is in Greek or other classical languages, provide accurate translations
- Note any translation challenges or alternative interpretations if applicable

**Extracts:** Primary English translation, alternate translations with notes, and overall translation notes including cultural context.

### 8. Verb Identifier (`verb.yaml`)
**Goal:** To identify all verbs in text, provide English translations, and summarize their contextual usage.

**Instructions:**
- Identify all verbs in the provided text, including all verb forms (finite, infinitive, participle, etc.)
- For verbs in languages other than English, provide accurate English translations
- For each verb, provide a summary of its contextual usage and meaning in the text
- Include linking verbs, auxiliary verbs, and all grammatical verb forms
- Ensure the analysis is comprehensive and language-agnostic

**Extracts:** Verbs with their translations and summaries of contextual usage, including tense, voice, mood, and grammatical role.

## Common Configuration

All agents share the following configuration:
- **Model:** gpt-5.4-nano
- **Reasoning Effort:** high
- **Output Format:** JSON
- **Language Support:** Multi-language (Greek, English, Hebrew, Latin, etc.)

## Usage

These agents are designed to work together to provide comprehensive analysis of biblical texts. Each agent focuses on extracting specific types of information, allowing for detailed linguistic, historical, and theological analysis.