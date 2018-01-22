## Depth first search

Time Complexity: O(v + e)
Space Complexity: Recursive: O(h) where h is the depth of the tree
                  Iterative: O(v) since stack would hold all verticies in worst case

DFS is useful for:

1. Finding minimum spanning tree and all pair shortest path tree
2. Detecting cycle in graph (check for the presence of back edges)
3. Topological Sorting
...