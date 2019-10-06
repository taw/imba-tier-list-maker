import Tier from "./Tier"
import ExtraItems from "./ExtraItems"

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

  def onunassign(e, payload)
    let name = payload:name
    for tier of @items
      if tier === "X"
        continue
      let idx = @items[tier].indexOf(name)
      if idx >= 0
        @items[tier].splice(idx, 1)
        @items.X.push name
        break

  def render
    <self>
      <Tier name="S" items=(@items.S)>
      <Tier name="A" items=(@items.A)>
      <Tier name="B" items=(@items.B)>
      <Tier name="C" items=(@items.C)>
      <Tier name="D" items=(@items.D)>
      <Tier name="F" items=(@items.F)>
      <ExtraItems items=(@items.X)>

export default TierList
