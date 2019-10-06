tag Item
  prop name

  def ondragstart(e)
    # Firefox workaround:
    e.event:data-transfer.set-data("text/plain", "")
    currentdrag = {data: name, source: self}

  def render
    <self draggable=true>
      name

tag ItemRow
  prop items

  def render
    <self>
      for item in items
        <Item name=item>

tag Tier
  prop name
  prop items

  def render
    <self>
      <div.name>
        name
      <ItemRow items=items>

tag ExtraItems
  prop items

  def render
    <self>
      <h2>
        "Extra Items"
      <ItemRow items=items>

tag TierList
  def setup
    @items = {
      "S": ["One", "Two"],
      "A": ["Three"],
      "B": [],
      "C": ["Four"],
      "D": ["Five"],
      "F": ["Six", "Seven"],
      "X": ["Eight", "Nine", "Ten"],
    }

  def render
    <self>
      <Tier name="S" items=(@items.S)>
      <Tier name="A" items=(@items.A)>
      <Tier name="B" items=(@items.B)>
      <Tier name="C" items=(@items.C)>
      <Tier name="D" items=(@items.D)>
      <Tier name="F" items=(@items.F)>
      <ExtraItems items=(@items.X)>

tag Instruction
  def render
    <self>
      <p>
        "Drag and drop items to arrange tiers."
      <p>
        "Right click to unassign items."

tag App
  def render
    <self>
      <header>
        "Tier List Maker"
      <TierList>
      <Instruction>

Imba.mount <App>
