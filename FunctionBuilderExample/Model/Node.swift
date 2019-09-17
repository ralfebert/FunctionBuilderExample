// © 2019 Ralf Ebert — FunctionBuilderExample
// License: https://opensource.org/licenses/MIT

import Foundation

@_functionBuilder
struct NodeListBuilder {
    
    static func buildBlock(_ children: Node...) -> [Node] {
        return children
    }
    
}

class Node {

    var name: String
    var children: [Node]

    init(name: String) {
        self.name = name
        self.children = []
    }

    init(name: String, @NodeListBuilder _ children: () -> [Node]) {
        self.name = name
        self.children = children()
    }

}
