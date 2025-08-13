import Foundation

// Configuration File for Data-Driven Automation Script Parser

// Script Definition
struct Script {
    let name: String
    let triggers: [Trigger]
    let actions: [Action]
}

// Trigger Definition
struct Trigger {
    let type: String
    let condition: String
    let value: String
}

// Action Definition
struct Action {
    let type: String
    let target: String
    let value: String
}

// Data-Driven Automation Script Parser Configuration
let parserConfig = [
    "script": Script(
        name: "My Automation Script",
        triggers: [
            Trigger(type: "timer", condition: "every 10 minutes", value: ""),
            Trigger(type: "event", condition: "button clicked", value: "buttonId")
        ],
        actions: [
            Action(type: "email", target: "myemail@example.com", value: "Hello, World!"),
            Action(type: "api", target: "https://example.com/api/endpoint", value: "json data")
        ]
    )
]

// Script Parser Function
func parseScript(_ script: Script) -> [String] {
    var output: [String] = []
    
    // Parse Triggers
    for trigger in script.triggers {
        output.append("Trigger: \(trigger.type) - \(trigger.condition) - \(trigger.value)")
    }
    
    // Parse Actions
    for action in script.actions {
        output.append("Action: \(action.type) - \(action.target) - \(action.value)")
    }
    
    return output
}

// Run Script Parser
let parsedScript = parseScript(parserConfig["script"]!)
print(parsedScript)