package com.tencent.qmsp.oaid2;

import android.content.Context;
import java.lang.reflect.Method;

/* renamed from: com.tencent.qmsp.oaid2.n0 */
/* loaded from: classes10.dex */
public class C16889n0 implements InterfaceC16864b {

    /* renamed from: b */
    public static Class f93786b;

    /* renamed from: c */
    public static Object f93787c;

    /* renamed from: d */
    public static Method f93788d;

    /* renamed from: e */
    public static Method f93789e;

    /* renamed from: a */
    public Context f93790a;

    public C16889n0() {
        try {
            C16866c.m60154c("xm start");
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f93786b = cls;
            f93787c = cls.newInstance();
            f93788d = f93786b.getMethod("getOAID", Context.class);
            f93789e = f93786b.getMethod("getAAID", Context.class);
        } catch (Exception e) {
            C16866c.m60152a("xm reflect exception!" + e);
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93790a = context;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        Method method;
        Object obj = f93787c;
        if (obj == null || (method = f93789e) == null) {
            return null;
        }
        return m60215a(this.f93790a, obj, method);
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        return (f93786b == null || f93787c == null) ? false : true;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return true;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        Method method;
        Object obj = f93787c;
        if (obj == null || (method = f93788d) == null) {
            return null;
        }
        return m60215a(this.f93790a, obj, method);
    }

    /* renamed from: a */
    public final String m60215a(Context context, Object obj, Method method) {
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
