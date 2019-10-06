import ItemRow from "./ItemRow"

tag ExtraItems
  prop items

  def render
    <self>
      <h2>
        "Extra Items"
      <ItemRow items=items>

export default ExtraItems
