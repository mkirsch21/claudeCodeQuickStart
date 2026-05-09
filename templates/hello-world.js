import Anthropic from "@anthropic-ai/sdk";

const client = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

async function main() {
  console.log("🚀 Sending request to Claude...\n");

  const response = await client.messages.create({
    model: "claude-3-5-sonnet-20241022",
    max_tokens: 1024,
    messages: [
      {
        role: "user",
        content: "Hello! What is 2 + 2?",
      },
    ],
  });

  console.log("✅ Response from Claude:\n");
  console.log(response.content[0].text);
}

main().catch((error) => {
  console.error("❌ Error:", error.message);
  process.exit(1);
});
