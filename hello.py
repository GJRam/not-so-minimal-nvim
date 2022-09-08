#write breadth-first search algorithm
def bfs(graph, start, end):
    visited = set()
    queue = [start]
    while queue:
        vertex = queue.pop(0)
        if vertex == end:
            return True
        elif vertex not in visited:
            visited.add(vertex)
            queue.extend(graph[vertex] - visited)
    return False

def dfs(graph, start, end):
    visited = set()
    stack = [start]
    while stack:
        vertex = stack.pop()
        if vertex == end:
            return True
        elif vertex not in visited:
            visited.add(vertex)
            stack.extend(graph[vertex] - visited)
    return False


def traverse_inorder(tree):
    if tree:
        traverse_inorder(tree.left)
        print(tree.data)
        traverse_inorder(tree.right)

class TreeNode:
    def __init__(self, data):
        self.data = data
        self.left : TreeNode = None
        self.right : TreeNode = None


node = TreeNode(1)
node.left = TreeNode(2)
node.right = TreeNode(3)

traverse_inorder(node)



