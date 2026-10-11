package com.google.android.material.transition.platform;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class MaterialArcMotion extends PathMotion {
    /* renamed from: a */
    public static PointF m25585a(float f, float f2, float f3, float f4) {
        return f2 > f4 ? new PointF(f3, f2) : new PointF(f, f4);
    }

    @Override // android.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        PointF m25585a = m25585a(f, f2, f3, f4);
        path.quadTo(m25585a.x, m25585a.y, f3, f4);
        return path;
    }
}
