tag Item
  prop name

  def ondragstart(e)
    # Drag can be element or selection
    # If it's selection, we don't want it
    let et = e:_event:target
    unless et instanceof HTMLElement
      e.prevent()
      return

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
