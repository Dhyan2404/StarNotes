package com.trans.android.poi;

import android.graphics.Shader;
import com.onyx.common.util.JLog;
import com.trans.android.service.ServiceUtils;
import java.awt.Paint;

/* loaded from: classes10.dex */
public class POIUtils {
    private static final String TAG = "POIUtils";
    private static POIService service;

    private static POIService getService() {
        if (service == null) {
            POIService pOIService = (POIService) ServiceUtils.getService(POIService.class);
            service = pOIService;
            if (pOIService == null) {
                service = new EmptyPOIService();
                JLog.m41642e(TAG, "Not found POIService", new Object[0]);
            }
        }
        return service;
    }

    public static Shader getShader(Paint paint) {
        return getService().getShader(paint);
    }

    public static boolean isPOIPaint(Paint paint) {
        return getService().isPOIPaint(paint);
    }
}
