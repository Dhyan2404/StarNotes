package com.sunia.HTREnginev2;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbaaj;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbpb;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class cep {
    /* renamed from: a */
    public static Rect m53436a(List list, @Nullable Matrix matrix) {
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
        RectF rectF = new RectF(i2, i3, i, i4);
        if (matrix != null) {
            matrix.mapRect(rectF);
        }
        Rect rect = new Rect();
        rectF.round(rect);
        return rect;
    }

    /* renamed from: b */
    public static zbpb m53437b(zbaaj zbaajVar) {
        return zbaajVar.zbi() ? zbaajVar.zbc().zbd() : zbaajVar.zbH() ? zbaajVar.zbf().zbc() : zbaajVar.zbe();
    }

    /* renamed from: c */
    public static List m53438c(zbpb zbpbVar) {
        double sin = Math.sin(Math.toRadians(zbpbVar.zba()));
        double cos = Math.cos(Math.toRadians(zbpbVar.zba()));
        Point point = new Point((int) (zbpbVar.zbd() + (zbpbVar.zbf() * cos)), (int) (zbpbVar.zbe() + (zbpbVar.zbf() * sin)));
        double d = point.x;
        double zbc = zbpbVar.zbc() * sin;
        double zbc2 = r0[1].y + (zbpbVar.zbc() * cos);
        Point point2 = r0[0];
        int i = point2.x;
        Point point3 = r0[2];
        int i2 = point3.x;
        Point point4 = r0[1];
        Point[] pointArr = {new Point(zbpbVar.zbd(), zbpbVar.zbe()), point, new Point((int) (d - zbc), (int) zbc2), new Point(i + (i2 - point4.x), point2.y + (point3.y - point4.y))};
        return Arrays.asList(pointArr);
    }
}
