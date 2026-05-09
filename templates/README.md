# Templates

Example projects to get you started with Claude Code.

## Hello World

The simplest example - connect to Claude API and get a response.

```bash
cd templates
node hello-world.js
```

**Setup:**
1. Ensure `ANTHROPIC_API_KEY` is set
2. Run the script
3. See a response from Claude

## Creating Your Own Template

1. Create a new `.js` file in this directory
2. Import the Anthropic client
3. Use the Claude API to build your project

### Example Template Structure

```javascript
import Anthropic from "@anthropic-ai/sdk";

const client = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

async function main() {
  // Your code here
}

main().catch(console.error);
```

## Available Resources

- [Anthropic Documentation](https://docs.anthropic.com)
- [Claude API Reference](https://docs.anthropic.com/api/messages)
- [Node.js SDK](https://github.com/anthropics/anthropic-sdk-python)
