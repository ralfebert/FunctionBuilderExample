// © 2019 Ralf Ebert — FunctionBuilderExample
// License: https://opensource.org/licenses/MIT

import Foundation

class Node {

    var name: String
    var children: [Node]

    init(name: String) {
        self.name = name
        self.children = []
    }

    init(name: String, children: [Node]) {
        self.name = name
        self.children = children
    }

}
