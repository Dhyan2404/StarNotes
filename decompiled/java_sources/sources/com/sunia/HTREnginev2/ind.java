package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class ind {

    /* renamed from: a */
    public static final int f73407a;

    /* renamed from: b */
    public static final Method f73408b;

    static {
        try {
            f73407a = ((Integer) Canvas.class.getField("MATRIX_SAVE_FLAG").get(null)).intValue();
            f73408b = Canvas.class.getMethod("save", Integer.TYPE);
        } catch (Throwable th) {
            throw m54726b(th);
        }
    }

    /* renamed from: a */
    public static void m54725a(Canvas canvas, int i) {
        try {
            f73408b.invoke(canvas, Integer.valueOf(i));
        } catch (Throwable th) {
            throw m54726b(th);
        }
    }

    /* renamed from: b */
    public static RuntimeException m54726b(Throwable th) {
        if (th != null) {
            return (RuntimeException) m54727c(th);
        }
        throw new NullPointerException("t");
    }

    /* renamed from: c */
    public static <T extends Throwable> T m54727c(Throwable th) throws Throwable {
        throw th;
    }
}
