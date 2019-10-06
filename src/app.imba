import Instruction from "./Instruction"
import TierList from "./TierList"

# Drag and Drop API is awful, so we're hacking it
window:currentdrag = {}

tag App
  def ondragend(e)
    window:currentdrag = {}

  def render
    <self>
      <header>
        "Tier List Maker"
      <TierList>
      <Instruction>

Imba.mount <App>
