getStepData = ->
  dataset = null
  $.ajax
    url: "/steps.json"
    data: "GET"
    dataType: "json"
    async: false
    success: (data) ->
      dataset = prepDataForD3(data)
  dataset

prepNodesForD3 = (steps) ->
  nodes = []
  $.each steps, (index, step) ->
    nodes.push
      id: step.id
      reflexive: false
  nodes

prepLinksForD3 = (edges, nodes) ->
  links = []
  $.each edges, (index, edge) ->
    links.push
      source: nodes.filter((e) ->
        e.id is edge.predecessor_id
      )[0]
      target: nodes.filter((e) ->
        e.id is edge.successor_id
      )[0]
      left: false
      right: true
  links

prepDataForD3 = (data) ->
  data.nodes = prepNodesForD3(data.steps)
  data.links = prepLinksForD3(data.edges, data.nodes)
  data

# set up initial nodes and links
#  - nodes are known by 'id', not by index in array.
#  - reflexive edges are indicated on the node (as a bold black circle).
#  - links are always source < target; edge directions are set by 'left' and 'right'.

window.getDataForD3 = (cb) ->
  data  = getStepData()
  cb({
    nodes: data.nodes,
    links: data.links
    })

# window.data = getStepData()
# window.nodes = data.nodes
# window.lastNodeId = 2 # Replace to actually get
# window.links = data.links
