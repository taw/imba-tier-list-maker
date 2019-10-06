import ItemRow from "./ItemRow"

tag Tier
  prop name
  prop items

  def render
    <self>
      <div.name>
        name
      <ItemRow items=items>

export default Tier
