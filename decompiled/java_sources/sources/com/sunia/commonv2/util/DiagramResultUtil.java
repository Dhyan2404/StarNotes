package com.sunia.commonv2.util;

import android.util.Log;
import com.google.gson.GsonBuilder;
import com.sunia.HTREnginev2.sdk.editor.Editor;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.bean.diagram.JixBeanElementBean;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class DiagramResultUtil {
    private static final String TAG = "DiagramResultUtil";

    public static String getResult(Editor editor, String str) {
        try {
            List<JixBeanElementBean> elements = ((JixBeanElementBean) new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().fromJson(str, JixBeanElementBean.class)).getElements();
            StringBuffer stringBuffer = new StringBuffer();
            for (JixBeanElementBean jixBeanElementBean : elements) {
                Iterator<JixBeanElementBean> it2 = jixBeanElementBean.getElements().iterator();
                while (it2.hasNext()) {
                    stringBuffer.append(it2.next().getLabel());
                    stringBuffer.append(" ");
                }
                if (elements.indexOf(jixBeanElementBean) != elements.size() - 1) {
                    stringBuffer.append("\n");
                }
            }
            LogUtil.m57653d(TAG, "mathML=" + editor.latexToMathML(stringBuffer.toString()));
            return "";
        } catch (Exception e) {
            LogUtil.m57657w("HWRSimpleResult", Log.getStackTraceString(e));
            return "";
        }
    }
}
