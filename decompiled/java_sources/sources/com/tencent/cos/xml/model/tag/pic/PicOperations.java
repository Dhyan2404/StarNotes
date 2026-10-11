package com.tencent.cos.xml.model.tag.pic;

import com.tencent.cos.xml.CosTrackService;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class PicOperations {
    private static final String TAG = "PicOperations";
    private boolean isPicInfo;
    private List<PicOperationRule> rules;

    public PicOperations(boolean z, List<PicOperationRule> list) {
        this.isPicInfo = z;
        this.rules = list;
    }

    public String toJsonStr() {
        List<PicOperationRule> list = this.rules;
        if (list != null && !list.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("is_pic_info", this.isPicInfo ? 1 : 0);
                JSONArray jSONArray = new JSONArray();
                Iterator<PicOperationRule> it2 = this.rules.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next().toJsonObject());
                }
                jSONObject.put("rules", jSONArray);
                return jSONObject.toString();
            } catch (JSONException e) {
                CosTrackService.getInstance().reportError(TAG, e);
                e.printStackTrace();
            }
        }
        return "{}";
    }
}
