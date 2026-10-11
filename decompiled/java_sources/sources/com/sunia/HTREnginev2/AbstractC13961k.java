package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.sunia.HTREnginev2.k */
/* loaded from: classes10.dex */
public abstract class AbstractC13961k {

    /* renamed from: d */
    public static final AtomicInteger f74858d = new AtomicInteger();

    /* renamed from: a */
    public final String f74859a = "p" + Integer.toString(f74858d.getAndIncrement());

    /* renamed from: b */
    public final long f74860b = System.currentTimeMillis();

    /* renamed from: c */
    public BoundBox f74861c;

    /* renamed from: a */
    public abstract BoundBox mo52909a();

    /* renamed from: a */
    public abstract void mo52910a(Paint paint, Canvas canvas, float f);

    /* renamed from: b */
    public BoundBox m55095b() {
        if (this.f74861c == null) {
            this.f74861c = mo52909a();
        }
        return this.f74861c;
    }

    /* renamed from: c */
    public abstract String mo52911c();
}
