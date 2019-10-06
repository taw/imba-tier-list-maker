tag Item
  prop name

  def ondragstart(e)
    # Firefox workaround:
    e.event:data-transfer.set-data("text/plain", "")
    window:currentdrag = {name: name, source: self}

  def oncontextmenu(e)
    e.prevent
    trigger("unassign", {name: name})

  def render
    <self draggable=true>
      name

export default Item
