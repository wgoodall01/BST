#ifndef BST_H
#define BST_H

/* Binary Search Tree - recursive
 * Fall 2018
 * DSA
 * For the sake of demonstration and clarity we are going to use
 * only a numerical value in the nodes of the tree. An element
 * that is comparable could be used instead, but the syntax is
 * more complicated than we need to deal with to understand
 * Binary Search trees. Since this class is not templated the
 * .h file is only a header file.
 */

#include <functional>
#include <queue>

class BST;

typedef std::function<void(BST*)> visitor_func;

class BST {
  private:
	BST* left;
	BST* right;

	/* some private helper functions */
	void visit();

  public:
	int key;

	explicit BST(int k);
	explicit BST(int k, BST* l, BST* r);
	~BST();
	BST(BST& other);

	/* Accessors */
	bool isLeaf();
	BST* getLeft();
	BST* getRight();

	BST* find(int num);
	BST* min();
	bool contains(int num);

	void inOrder(visitor_func visitor);
	void preOrder(visitor_func visitor);
	void postOrder(visitor_func visitor);

	void breadthFirst(visitor_func visitor);

	/* Mutators */
	bool add(int num);
	bool add(BST* subtree);
	BST* remove(int num);
};

#endif
