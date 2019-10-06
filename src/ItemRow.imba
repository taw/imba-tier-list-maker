import Item from "./Item"

tag ItemRow
  prop items

  def onremove(e, payload)
    let idx = items.indexOf(payload:name)
    if idx >= 0
      items.splice(idx, 1)

  def ondragenter(e)
    e.prevent

  def ondragover(e)
    e.prevent

  def ondrop(e)
    let drag = window:currentdrag
    # Remove from previous container
    drag:source.trigger("remove", {name: drag:name})
    # Add to current container
    items.push drag:name

  def render
    <self>
      for item in items
        <Item name=item>

export default ItemRow
