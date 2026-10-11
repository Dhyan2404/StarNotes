package com.sunia.HTREnginev2;

import android.graphics.Point;
import android.graphics.Rect;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class afp {
    /* renamed from: a */
    public static Rect m53014a(List list) {
        Iterator it2 = list.iterator();
        int i = Integer.MIN_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        while (it2.hasNext()) {
            Point point = (Point) it2.next();
            i2 = Math.min(i2, point.x);
            i = Math.max(i, point.x);
            i3 = Math.min(i3, point.y);
            i4 = Math.max(i4, point.y);
        }
        return new Rect(i2, i3, i, i4);
    }

    /* renamed from: b */
    public static List m53015b(com.google.android.gms.internal.mlkit_vision_text_common.zzf zzfVar) {
        double sin = Math.sin(Math.toRadians(zzfVar.zze));
        double cos = Math.cos(Math.toRadians(zzfVar.zze));
        double d = zzfVar.zza;
        double d2 = zzfVar.zzc;
        Point point = new Point((int) (d + (d2 * cos)), (int) (zzfVar.zzb + (d2 * sin)));
        double d3 = point.x;
        int i = zzfVar.zzd;
        double d4 = i * sin;
        double d5 = r0[1].y + (i * cos);
        Point point2 = r0[0];
        int i2 = point2.x;
        Point point3 = r0[2];
        int i3 = point3.x;
        Point point4 = r0[1];
        Point[] pointArr = {new Point(zzfVar.zza, zzfVar.zzb), point, new Point((int) (d3 - d4), (int) d5), new Point(i2 + (i3 - point4.x), point2.y + (point3.y - point4.y))};
        return Arrays.asList(pointArr);
    }
}
