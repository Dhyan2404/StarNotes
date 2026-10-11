package com.trans.android.batik;

import android.graphics.Shader;
import android.text.Layout;
import com.onyx.common.util.JLog;
import com.trans.android.service.ServiceUtils;
import java.awt.Paint;
import java.text.AttributedCharacterIterator;

/* loaded from: classes10.dex */
public class BatikUtils {
    private static final String TAG = "BatikUtils";
    private static BatikService service;

    public static Layout.Alignment getAlignment(AttributedCharacterIterator.Attribute attribute, Object obj) {
        return getService().getAlignment(attribute, obj);
    }

    private static BatikService getService() {
        if (service == null) {
            BatikService batikService = (BatikService) ServiceUtils.getService(BatikService.class);
            service = batikService;
            if (batikService == null) {
                service = new EmptyBatikService();
                JLog.m41642e(TAG, "Not found BatikService", new Object[0]);
            }
        }
        return service;
    }

    public static Shader getShader(Paint paint) {
        return getService().getShader(paint);
    }

    public static boolean isBatikAlignmentAttribute(AttributedCharacterIterator.Attribute attribute) {
        return getService().isBatikAlignmentAttribute(attribute);
    }

    public static boolean isBatikAttribute(AttributedCharacterIterator.Attribute attribute) {
        return getService().isBatikAttribute(attribute);
    }

    public static boolean isBatikPaint(Paint paint) {
        return getService().isBatikPaint(paint);
    }
}
