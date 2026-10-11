package com.huawei.stylus.penengine.instantshape;

import android.content.Context;
import android.graphics.Path;
import android.view.MotionEvent;
import com.huawei.penkit.impl.manager.forming.OpenFormingManager;

/* loaded from: classes4.dex */
public class InstantShapeGenerator {

    /* renamed from: a */
    public OpenFormingManager f39003a;

    public InstantShapeGenerator(Context context) {
        this.f39003a = new OpenFormingManager(context);
    }

    public void destroy() {
        OpenFormingManager openFormingManager = this.f39003a;
        if (openFormingManager != null) {
            openFormingManager.destroy();
        }
        this.f39003a = null;
    }

    public int getCurveType() {
        OpenFormingManager openFormingManager = this.f39003a;
        if (openFormingManager == null) {
            return 0;
        }
        return openFormingManager.getCurveType();
    }

    public Path getPath() {
        OpenFormingManager openFormingManager = this.f39003a;
        return openFormingManager == null ? new Path() : openFormingManager.getPath();
    }

    public Path getPathFromString(String str, float f) {
        if (str == null || str.length() == 0) {
            return new Path();
        }
        OpenFormingManager openFormingManager = this.f39003a;
        return openFormingManager == null ? new Path() : openFormingManager.getFormedShapePathFromString(str, f);
    }

    public String getStringResult() {
        OpenFormingManager openFormingManager = this.f39003a;
        return openFormingManager == null ? "" : openFormingManager.getFormedShapeStringResult();
    }

    public void notifyViewSizeChange(int i, int i2) {
        OpenFormingManager openFormingManager = this.f39003a;
        if (openFormingManager == null) {
            return;
        }
        openFormingManager.notifyViewSizeChange(i, i2);
    }

    public void processTouchEvent(MotionEvent motionEvent) {
        OpenFormingManager openFormingManager = this.f39003a;
        if (openFormingManager == null) {
            return;
        }
        openFormingManager.processFormingEvent(motionEvent);
    }

    public void setStopTime(int i) {
        OpenFormingManager openFormingManager = this.f39003a;
        if (openFormingManager == null) {
            return;
        }
        openFormingManager.setStopTime(i);
    }
}
