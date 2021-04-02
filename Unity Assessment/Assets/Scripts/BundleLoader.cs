using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using System;

public class BundleLoader : MonoBehaviour
{
    public string bundleUrl = "https://github.com/AndresDiaz1/Unity-Assessment/blob/main/Unity%20Assessment/Assets/StreamingAssets/cubea?raw=true";
    public string assetName = "BundledObject";

    public Vector3 xPosition;

    // Start is called before the first frame update
    IEnumerator Start()
    {
        using (WWW web = new WWW(bundleUrl))
        {
            yield return web;
            AssetBundle remoteAssetBundle = web.assetBundle;
            if (remoteAssetBundle == null)
            {
                Debug.LogError("Failed to download AssetBundle!");
                yield break;
            }
            Instantiate(remoteAssetBundle.LoadAsset(assetName), xPosition, Quaternion.identity);
            remoteAssetBundle.Unload(false);
        }
    }
}
