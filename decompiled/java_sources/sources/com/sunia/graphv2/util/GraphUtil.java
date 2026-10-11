package com.sunia.graphv2.util;

import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.graph.MixtureElementBean;
import com.sunia.commonv2.util.HWRUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class GraphUtil {
    public static String getGraphUserPropertyValue(MixtureElementBean mixtureElementBean, String str) {
        if (HWRUtil.isEmpty(mixtureElementBean) || HWRUtil.isEmpty(mixtureElementBean.getUserProperty())) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject(mixtureElementBean.getUserProperty().toString());
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
        } catch (JSONException e) {
            LogUtil.m57654e("GraphDrawBase", "解析userProperty失败");
            LogUtil.m57655e("GraphDrawBase", e);
        }
        return "";
    }
}
