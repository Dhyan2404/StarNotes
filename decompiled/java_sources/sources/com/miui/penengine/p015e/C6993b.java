package com.miui.penengine.p015e;

import android.content.Context;
import android.os.Build;
import com.miui.penengine.estimate.MiuiMotionEventInfo;
import com.miui.penengine.facade.algorithm.JNIPathEstimateInterface;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6989c;
import com.miui.penengine.p016f.C7002a;
import com.miui.penengine.p016f.C7007f;
import com.miui.penengine.p016f.C7010i;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.miui.penengine.e.b */
/* loaded from: classes7.dex */
public class C6993b implements InterfaceC6994c {

    /* renamed from: f */
    public static final String f39642f = "b";

    /* renamed from: g */
    public static final boolean f39643g = true;

    /* renamed from: h */
    public static volatile C6993b f39644h;

    /* renamed from: a */
    public C7010i f39645a;

    /* renamed from: b */
    public float f39646b = 120.0f;

    /* renamed from: c */
    public float f39647c = 1.0f;

    /* renamed from: d */
    public boolean f39648d = false;

    /* renamed from: e */
    public boolean f39649e = false;

    /* renamed from: c */
    public static C6993b m31315c() {
        if (f39644h == null) {
            synchronized (C6993b.class) {
                if (f39644h == null) {
                    f39644h = new C6993b();
                }
            }
        }
        return f39644h;
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public int mo31316a(List<MiuiMotionEventInfo> list, List<MiuiMotionEventInfo> list2) {
        if (!this.f39648d) {
            return -1;
        }
        if (!this.f39649e) {
            return -4;
        }
        if (list == null || list.isEmpty() || list2 == null) {
            C6985b.m31267a(f39642f, "Input error.");
            return -2;
        }
        Iterator<MiuiMotionEventInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            C6989c m31290a = C6989c.m31290a(it2.next());
            if (m31290a != null) {
                this.f39645a.m31429a(m31290a);
            }
        }
        C7007f[] m31433d = this.f39645a.m31433d();
        if (m31433d == null) {
            C6985b.m31267a(f39642f, "Output error.");
            return -3;
        }
        list2.clear();
        MiuiMotionEventInfo miuiMotionEventInfo = list.get(list.size() - 1);
        for (C7007f c7007f : m31433d) {
            MiuiMotionEventInfo miuiMotionEventInfo2 = new MiuiMotionEventInfo(c7007f.m31403b(), c7007f.m31405c(), c7007f.m31400a());
            float distanceTo = miuiMotionEventInfo2.distanceTo(miuiMotionEventInfo);
            if (distanceTo > 300.0f) {
                C6985b.m31271e(f39642f, "Abnormal point, distance: " + distanceTo + " x: " + miuiMotionEventInfo2.getX() + " y: " + miuiMotionEventInfo2.getY());
            } else {
                list2.add(new MiuiMotionEventInfo(c7007f.m31403b(), c7007f.m31405c(), c7007f.m31400a()));
            }
        }
        return 0;
    }

    /* renamed from: b */
    public float m31320b() {
        return this.f39647c;
    }

    /* renamed from: d */
    public float m31322d() {
        return this.f39646b;
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public void mo31318a(Context context) {
        if (this.f39648d) {
            C6985b.m31269c(f39642f, "Init repeat");
            return;
        }
        C7010i c7010i = new C7010i(context);
        this.f39645a = c7010i;
        c7010i.m31427a(37);
        this.f39648d = true;
    }

    /* renamed from: b */
    public void m31321b(float f) {
        this.f39647c = f;
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public boolean mo31319a() {
        this.f39649e = C7002a.m31362a(Build.DEVICE) && JNIPathEstimateInterface.isEstimateSystemSoEnable();
        C6985b.m31267a(f39642f, "Now enable is " + this.f39649e);
        return this.f39649e;
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public void mo31317a(float f) {
        this.f39646b = f;
    }
}
