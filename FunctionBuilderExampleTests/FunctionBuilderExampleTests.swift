// © 2019 Ralf Ebert — FunctionBuilderExample
// License: https://opensource.org/licenses/MIT

@testable import FunctionBuilderExample
import XCTest

class FunctionBuilderExampleTests: XCTestCase {

    func testNode() {

        // - root
        //     - foo
        //         - Alice
        //         - Bob
        //     - bar

        let root = Node(name: "root", children: [
            Node(name: "foo", children: [
                Node(name: "Alice"),
                Node(name: "Bob")
            ]),
            Node(name: "bar")
        ])

        XCTAssertEqual(root.name, "root")
        XCTAssertEqual(root.children[0].name, "foo")
        XCTAssertEqual(root.children[0].children[0].name, "Alice")
        XCTAssertEqual(root.children[0].children[1].name, "Bob")
        XCTAssertEqual(root.children[1].name, "bar")

    }

}
