package com.trans.android.poi;

import android.graphics.Shader;
import java.awt.Paint;

/* loaded from: classes10.dex */
class EmptyPOIService implements POIService {
    @Override // com.trans.android.poi.POIService
    public Shader getShader(Paint paint) {
        return null;
    }

    @Override // com.trans.android.poi.POIService
    public boolean isPOIPaint(Paint paint) {
        return false;
    }
}
