# user-agent-detector

To do:

1. Add tests
2. See if there is a gem that might help parse the user agent name
3. Is application controller the best place to check the user agent? I chose it because I did not want to limit myself to any particular routes or actions.

Challenges:

1. I have not set up a new rails project in some time so it took awhile to get my DB working.
2. Once that was done, I completed most of the assignment in the alloted time.
3. I did get stuck on the ajax call, I knew I wanted to use `remote: true` in my button and `format.js` in the controller, but I could not figure out how to render the partial correctly on success. I kept trying different approaches and finally hit on the right one. Then I realized I was updating the counter with the ajax requests, so I had to filter those out.
