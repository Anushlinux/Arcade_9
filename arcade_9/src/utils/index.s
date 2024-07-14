import { surpriseMePrompts } from '../constants' 
import Home from './Home';
import CreatePost from './CreatePost';

export { Home, CreatePost };

export function getRandomPrompt(prompt) {
    const randomIndex = Math.floor(Math.random() * surpriseMePrompts.length);

    const randomPrompt = surpriseMePrompts[randomIndex];

    if(randomIndex === prompt) {
        return getRandomPrompt(prompt);
    }

    return randomPrompt;
}