
    What smells do you identify? For each smell, what refactoring did you choose to apply?

    I initially called them Duplicated Code, Long Parameter List, and Comments. In thinking a bit more, I'd replace Long Parameter List with Speculative Generality. I don't really think the parameter list is outrageous at five parameters, but there's a flag.

    In going over the refactorings, I realized that the smelliest smell was the flag, and treated it with Replace Conditional with Polymorphism. This allowed me to remove the comments, as they indicate the change to the foreground color is due to screen mode, and by making screen modes into classes any differences between implementations are implicitly because of screen mode.

    I still had Duplicated Code (the call to paint()). But that feels like an API call, so I expect that it's stable. I suppose we could put a private call in the parent class that the child classes call up to, but it doesn't really feel necessary, and we wind up passing back and forth which is its own smell.


    Which smell did you address first, and why did you choose that first?
    Speculative Generality. Squash the flag.
