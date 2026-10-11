package com.miui.penengine.p016f;

import android.content.Context;
import com.miui.penengine.facade.algorithm.JNIPathEstimateInterface;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6989c;
import com.miui.penengine.p014d.C6990d;

/* renamed from: com.miui.penengine.f.i */
/* loaded from: classes7.dex */
public class C7010i {

    /* renamed from: b */
    public static final String f39793b = "i";

    /* renamed from: a */
    public final InterfaceC7004c f39794a;

    public C7010i(Context context) {
        this(new C7011j(context));
    }

    /* renamed from: a */
    public void m31429a(C6989c c6989c) {
        if (c6989c == null) {
            return;
        }
        try {
            this.f39794a.mo31380a(c6989c);
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("addPoint error "), f39793b);
        }
    }

    /* renamed from: b */
    public InterfaceC7004c m31430b() {
        return this.f39794a;
    }

    /* renamed from: c */
    public C7007f m31432c() {
        C7007f[] m31433d = m31433d();
        if (m31433d != null) {
            return m31433d[m31433d.length - 1];
        }
        return null;
    }

    /* renamed from: d */
    public C7007f[] m31433d() {
        try {
            return this.f39794a.mo31381a();
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("getPredictPoints error "), f39793b);
            return null;
        }
    }

    public C7010i(InterfaceC7004c interfaceC7004c) {
        this.f39794a = interfaceC7004c;
        C6985b.m31269c(f39793b, "Use " + interfaceC7004c.getClass().getSimpleName() + ", version " + interfaceC7004c.mo31382b());
    }

    /* renamed from: a */
    public void m31426a() {
        JNIPathEstimateInterface.destroy();
    }

    /* renamed from: b */
    public void m31431b(long j) {
        this.f39794a.mo31379a(j);
    }

    /* renamed from: a */
    public void m31428a(long j) {
        this.f39794a.mo31384b(j);
    }

    /* renamed from: a */
    public void m31427a(int i) {
        this.f39794a.mo31383b(i);
    }
}
