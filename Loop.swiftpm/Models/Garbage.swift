import SwiftUI

struct Garbage: Identifiable, Hashable {
    let id: String
    let color: Color
    let name: String
    let symbolName: String
    let definition: String
    let types: String
    let recycleProcess: String
    let tips: [String]
    let funFact: String
    let emojis: [Emoji]
    // Quiz game items
    let gameItems: [Emoji]
    
    struct Emoji: Hashable {
        let symbol: String
        let description: String
    }
}

extension Garbage {
    
    static func getAll() -> [Garbage] { [paper, plastic, glass, metal, waste, oil, batteries] }
    
    static let paper = Garbage(
        id: "paper",
        color: .blue,
        name: "Paper",
        symbolName: "newspaper",
        definition: "Paper is a versatile and widely used material made from wood pulp, and it can be recycled to create new paper products. Recycling paper helps conserve natural resources, reduces greenhouse gas emissions, and saves energy.",
        types: "Paper comes in various forms, including newsprint, office paper, cardstock, cardboard, coated paper, and tissue paper. Each type has its unique properties, such as weight, color, finish, and strength, which determine its usage in various applications like newspapers, letters, packaging, magazines, and tissue products.",
        recycleProcess: "The recycling process for paper begins with the collection and sorting of paper waste. After sorting, the paper is mixed with water and chemicals to create a pulp. Depending on the type of paper, a deinking process may be applied to remove ink and other printing residues. The clean pulp is then drained, pressed, and dried to create new paper products. This recycling process helps save natural resources, reduce waste, and minimize pollution.",
        tips: ["Flatten cardboard boxes before recycling.", "Remove plastic windows from envelopes and food packaging.", "Avoid shredding paper unless necessary, as it can reduce its recyclability."],
        funFact: "Recycling one ton of paper can save 17 trees, 26m\u{00B2} of water, and 4,000 kWh of electricity.",
        emojis: [
            Emoji(symbol: "🗞️", description: "Newsprint"),
            Emoji(symbol: "📄", description: "Office Paper"),
            Emoji(symbol: "📦", description: "Cardboard"),
            Emoji(symbol: "🧻", description: "Tissue Paper")
        ],
        gameItems: [
            Emoji(symbol: "📰", description: "Newspaper"),
            Emoji(symbol: "📦", description: "Cardboard Box"),
            Emoji(symbol: "🧃", description: "Apple Juice Box"),
            Emoji(symbol: "🥛", description: "Milk Pack"),
            Emoji(symbol: "📓", description: "Sketchbook"),
            Emoji(symbol: "🛍️", description: "Shopping Bag"),
            Emoji(symbol: "🥤", description: "Disposable Cup")
        ]
    )
    
    static let plastic = Garbage(
        id: "plastic",
        color: .green,
        name: "Plastic",
        symbolName: "balloon.2",
        definition: "Plastic is a synthetic material made from polymers and is widely used in various products due to its durability and versatility. Recycling plastic reduces waste in landfills, conserves resources, and prevents pollution.",
        types: "Plastics come in various forms, including PET (polyethylene terephthalate), HDPE (high-density polyethylene), PVC (polyvinyl chloride), LDPE (low-density polyethylene), PP (polypropylene), and PS (polystyrene). Each type has its unique properties and uses, such as bottles, packaging, pipes, toys, and food containers.",
        recycleProcess: "The plastic recycling process begins with the collection and sorting of plastic waste by type. The plastics are then cleaned, shredded, and melted to form pellets or granules. These pellets can be used to manufacture new plastic products, helping to save resources and reduce waste.",
        tips: ["Rinse plastic containers before recycling to remove residue.", "Check local recycling guidelines, as not all types of plastic may be accepted.", "Remove caps and lids from bottles and containers."],
        funFact: "Recycling a single plastic bottle can save enough energy to power a 60-watt light bulb for 3 hours.",
        emojis: [
            Emoji(symbol: "♳", description: "PETE Plastic"),
            Emoji(symbol: "♴", description: "HDPE Plastic"),
            Emoji(symbol: "♵", description: "PVC Plastic"),
            Emoji(symbol: "♶", description: "LDPE Plastic"),
            Emoji(symbol: "♷", description: "PP Plastic"),
            Emoji(symbol: "♸", description: "PS Plastic"),
            Emoji(symbol: "♹", description: "Other Plastics")
        ],
        gameItems: [
            Emoji(symbol: "🧴", description: "Dispenser"),
            Emoji(symbol: "🥤", description: "Drinking Straw"),
            Emoji(symbol: "🍬", description: "Candy Wrapper"),
            Emoji(symbol: "🥡", description: "Takeout Container"),
            Emoji(symbol: "💧", description: "Water Bottle"),
            Emoji(symbol: "🪥", description: "Toothbrush"),
            Emoji(symbol: "🥄", description: "Yogurt Cup"),
            Emoji(symbol: "🍔", description: "Food Wrapper"),
            Emoji(symbol: "🍴", description: "Plastic Utensils"),
            Emoji(symbol: "☕", description: "Styrofoam Cup")
        ]
    )
    
    static let glass = Garbage(
        id: "glass",
        color: .red,
        name: "Glass",
        symbolName: "wineglass",
        definition: "Glass is a versatile and widely used material made from silica, soda ash, and limestone. Recycling glass saves energy, reduces raw material extraction, and lowers greenhouse gas emissions.",
        types: "Glass comes in various colors and forms, including clear, brown, green, and blue. It is commonly used for containers, windows, and decorative items.",
        recycleProcess: "The glass recycling process starts with the collection and sorting of glass waste by color. The sorted glass is cleaned and crushed into small pieces called cullet. The cullet is then melted and molded into new glass products, saving energy and resources compared to producing glass from raw materials.",
        tips: ["Rinse glass containers before recycling.", "Separate glass by color if required by local recycling guidelines.", "Do not recycle ceramics, window glass, or light bulbs in the same bin as container glass."],
        funFact: "Recycling one glass bottle can save enough energy to power a computer for 25 minutes.",
        emojis: [
            Emoji(symbol: "🫙", description: "Clear Glass"),
            Emoji(symbol: "🍾", description: "Green Glass"),
            Emoji(symbol: "🔮", description: "Blue Glass")
        ],
        gameItems: [
            Emoji(symbol: "🍾", description: "Wine Bottle"),
            Emoji(symbol: "🍯", description: "Jar"),
            Emoji(symbol: "🧪", description: "Perfume Bottle"),
            Emoji(symbol: "🍽️", description: "Glass Plate"),
            Emoji(symbol: "🏺", description: "Glass Vase"),
            Emoji(symbol: "🪞", description: "Mirror"),
            Emoji(symbol: "💡", description: "Fluorescent Tube"),
            Emoji(symbol: "💡", description: "Incandescent Bulb")
        ]

    )
    
    static let metal = Garbage(
        id: "metal",
        color: .gray,
        name: "Metal",
        symbolName: "key.horizontal",
        definition: "Metals are durable, versatile materials used in various products, from packaging to electronics. Recycling metals conserves natural resources, saves energy, and reduces greenhouse gas emissions.",
        types: "Metals can be categorized into ferrous (containing iron) and non-ferrous (not containing iron). Common metals include aluminum, steel, copper, and brass, used in various applications like cans, wiring, pipes, and machinery.",
        recycleProcess: "Metal recycling begins with the collection and sorting of metal waste. The metals are then shredded, crushed, or baled for transportation. After cleaning and processing, the metal scraps are melted and cast into new products, reducing the need for mining and conserving natural resources.",
        tips: ["Rinse metal containers before recycling.", "Crush aluminum cans to save space in the recycling bin.", "Check local guidelines for recycling other metals, such as copper, brass, and lead."],
        funFact: "Recycling one aluminum can save enough energy to run a TV for 3 hours.",
        emojis: [
            Emoji(symbol: "🔗", description: "Steel"),
            Emoji(symbol: "🗜️", description: "Alluminium"),
            Emoji(symbol: "🥫", description: "Brass")
        ],
        gameItems: [
            Emoji(symbol: "🥤", description: "Soda Can"),
            Emoji(symbol: "🥫", description: "Food Can"),
            Emoji(symbol: "🍫", description: "Aluminum Foil"),
            Emoji(symbol: "🥄", description: "Spoon"),
            Emoji(symbol: "🪝", description: "Hanger"),
            Emoji(symbol: "🪝", description: "Wire Hanger")
        ]
    )
    
    static let waste = Garbage(
        id: "waste",
        color: .orange,
        name: "Waste",
        symbolName: "trash",
        definition: "Trash, or non-recyclable waste, includes items that cannot be processed in traditional recycling facilities. Proper disposal of trash is essential to prevent pollution and reduce waste in landfills.",
        types: "Waste can be classified into various categories, such as organic waste, hazardous waste, and electronic waste. Each type requires a different disposal method to minimize environmental impact.",
        recycleProcess: "Waste recycling involves the collection, sorting, and processing of waste materials. Organic waste can be composted to create nutrient-rich soil. Hazardous waste and electronic waste require specialized treatment to prevent pollution and harm to the environment.",
        tips: ["Avoid placing recyclable materials in the trash bin.", "Use biodegradable or reusable alternatives for disposable products, such as bags and utensils.", "Separate hazardous waste and e-waste for proper disposal."],
        funFact: "The average person generates about 2kg of trash per day.",
        emojis: [
            Emoji(symbol: "🍌", description: "Organic Waste"),
            Emoji(symbol: "☣️", description: "Hazardous Waste"),
            Emoji(symbol: "📺", description: "Electronic Waste")
        ],
        gameItems: [
            Emoji(symbol: "🍽️", description: "Ceramic Plate"),
            Emoji(symbol: "🍌", description: "Banana Peel"),
            Emoji(symbol: "🍏", description: "Apple Core"),
            Emoji(symbol: "🍕", description: "Leftover Pizza"),
            Emoji(symbol: "🍗", description: "Chicken Bones"),
            Emoji(symbol: "☕", description: "Coffee Grounds"),
            Emoji(symbol: "🥚", description: "Eggshells"),
            Emoji(symbol: "🫖", description: "Tea Bag"),
            Emoji(symbol: "🥕", description: "Vegetable Peelings"),
            Emoji(symbol: "🍽️", description: "Used Napkins"),
            Emoji(symbol: "🍽️", description: "Broken Ceramics"),
            Emoji(symbol: "🌱", description: "Plant Pot")
        ]
    )
    
    static let oil = Garbage(
        id: "oil",
        color: .purple,
        name: "Oil",
        symbolName: "oilcan",
        definition: "Used oil, such as motor oil and cooking oil, can be harmful to the environment if not disposed of properly. Recycling oil helps conserve resources and reduces pollution.",
        types: "There are several types of oil, including cooking oil, motor oil, and lubricating oil. Each type has its specific uses and disposal requirements.",
        recycleProcess: "Oil recycling starts with the collection of used oil. Cooking oil can be filtered and processed into biodiesel or animal feed. Motor and lubricating oils can be refined and reused in automotive and industrial applications, reducing the demand for new oil and conserving resources.",
        tips: ["Collect used oil in a clean, leak-proof container.", "Do not mix different types of oil together.", "Locate a designated oil recycling facility or collection point in your area."],
        funFact: "Recycling 8 liters of used motor oil can save enough electricity to power an average home for one day.",
        emojis: [
            Emoji(symbol: "🍟", description: "Cooking Oil"),
            Emoji(symbol: "🛢️", description: "Motor Oil"),
            Emoji(symbol: "⚙️", description: "Lubricating Oil")
        ],
        gameItems: [
            Emoji(symbol: "🚗", description: "Motor Oil"),
            Emoji(symbol: "🍳", description: "Cooking Oil"),
            Emoji(symbol: "🔧", description: "Lubricant Spray")
        ]
    )
    
    static let batteries = Garbage(
        id: "batteries",
        color: .yellow,
        name: "Batteries",
        symbolName: "minus.plus.batteryblock",
        definition: "Batteries contain various chemicals and metals that can be harmful to the environment if not disposed of properly. Recycling batteries conserves resources and prevents pollution.",
        types: "Batteries come in various forms, such as alkaline, lithium-ion, nickel-cadmium, and lead-acid. Each type has different applications, like consumer electronics, vehicles, and industrial equipment.",
        recycleProcess: "Battery recycling begins with the collection and sorting of used batteries. The batteries are then disassembled, and the valuable materials, such as metals and chemicals, are extracted. These materials can be used to produce new batteries or other products, reducing waste and conserving resources.",
        tips: ["Store used batteries in a dry, cool place until ready for recycling.", "Do not dispose of batteries in regular trash bins.", "Locate a designated battery recycling facility or collection point in your area."],
        funFact: "Recycling one car battery can save enough energy to power a 60-watt light bulb for over 40 hours.",
        emojis: [
            Emoji(symbol: "🔋", description: "Alkaline Battery"),
            Emoji(symbol: "📱", description: "Phone Lithium Battery"),
            Emoji(symbol: "🚙", description: "Car Lead-acid Battery")
        ],
        gameItems: [
            Emoji(symbol: "🔋", description: "Alkaline Battery"),
            Emoji(symbol: "🔋", description: "Rechargeable Battery"),
            Emoji(symbol: "⌚", description: "Button Cell Battery"),
            Emoji(symbol: "🚘", description: "Car Battery")
        ]
    )
}
