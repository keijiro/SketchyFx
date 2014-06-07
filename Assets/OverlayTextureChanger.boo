import UnityEngine
import System.Collections

class OverlayTextureChanger (MonoBehaviour):
    public interval = 0.02f
    public textures as (Texture)

    def Start() as IEnumerator:
        fx = GetComponent[of ScreenOverlay]()
        while true:
            for texture in textures:
                fx.texture = texture
                yield WaitForSeconds(interval)
