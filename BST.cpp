/* Binary Search Tree - recursive
 * Fall 2018
 * DSA
 * For the sake of demonstration and clarity we are going to use
 * only a numerical value in the nodes of the tree. An element
 * that is comparable could be used instead, but the syntax is
 * more complicated than we need to deal with to understand
 * Binary Search trees. This is the actual class definition.
 *
 * BST ADT
 * add element
 * remove element if in tree
 * remove minimum
 * remove maximum
 * search for element - boolean result
 * traversals
 */
#include "bst.hpp"
#include "doctest.hpp"
#include <functional>
#include <iostream>
#include <queue>

using namespace std;

// ructor, destructor, copy
BST::BST(int k) {
	key = k;
	left = right = nullptr;
}

BST::BST(int k, BST* l, BST* r) {
	key = k;
	left = l;
	right = r;
}

BST::~BST() {
	delete left;
	delete right;
}

BST::BST(BST& other) {}

// private methods
void BST::visit() { cout << key << endl; }

/* Accessors */
bool BST::isLeaf() { return left == nullptr && right == nullptr; }

BST* BST::getLeft() { return left; }

BST* BST::getRight() { return right; }

BST* BST::find(int num) {
	if (num == key)
		return this;
	if (num < key && left != nullptr)
		return left->find(num);
	if (num > key && right != nullptr)
		return right->find(num);
	return nullptr;
}

BST* BST::min() {

	if (left != nullptr) {
		BST* leftMin = left->min();

		if (leftMin != nullptr) {
			return leftMin;
		}
	}

	return this;
}

bool BST::contains(int num) { return find(num) != nullptr; }

void BST::inOrder(visitor_func visitor) {
	if (left != nullptr)
		left->inOrder(visitor);
	visitor(this);
	if (right != nullptr)
		right->inOrder(visitor);
}
void BST::preOrder(visitor_func visitor) {
	visitor(this);
	if (left != nullptr)
		left->preOrder(visitor);
	if (right != nullptr)
		right->preOrder(visitor);
}
void BST::postOrder(visitor_func visitor) {
	if (left != nullptr)
		left->postOrder(visitor);
	if (right != nullptr)
		right->postOrder(visitor);
	visitor(this);
}

void BST::breadthFirst(visitor_func visitor) {
	queue<BST*> nodes;
	nodes.push(this);

	while (!nodes.empty()) {
		BST* node = nodes.front();
		nodes.pop();

		visitor(node);

		if (node->left != nullptr) {
			nodes.push(node->left);
		}
		if (node->right != nullptr) {
			nodes.push(node->right);
		}
	}
}

/* Mutators */
bool BST::add(BST* subtree) {
	int num = subtree->key;

	if (key == num)
		return false;
	if (key > num) {
		if (left != nullptr)
			left->add(num);
		else
			left = subtree;
	}
	if (key < num) {
		if (right != nullptr)
			right->add(num);
		else
			right = subtree;
	}
	return true;
}

bool BST::add(int num) { return add(new BST(num)); }

BST* BST::remove(int val) {
	if (key < val) {
		right = right->remove(val);
	}
	if (key > val) {
		left = left->remove(val);
	}

	if (key == val) {
		if (left == nullptr) {
			return right;
		} else if (right == nullptr) {
			return left;
		} else {
			BST* elt = right->min();
			key = elt->key;
			right = right->remove(elt->key);
		}
	}
	return this;
}

TEST_CASE("bst doesn't explode") {
	visitor_func printVisitor = [](BST* node) {
		std::cout << node->key << std::endl;
	};

	BST* bst = new BST(5);
	bst->add(1);
	bst->add(2);
	bst->add(10);
	bst->add(6);
	bst->add(99999);

	SUBCASE("in order traversal") { bst->inOrder(printVisitor); }

	SUBCASE("pre order traversal") { bst->preOrder(printVisitor); }

	SUBCASE("post order traversal") { bst->postOrder(printVisitor); }

	SUBCASE("in order, without 5") {
		cout << "in order, no5" << endl;
		bst->remove(5);
		bst->inOrder(printVisitor);
	}

	SUBCASE("in order, without 6") {
		cout << "in order, no6" << endl;
		bst->remove(6);
		bst->inOrder(printVisitor);
	}
}
