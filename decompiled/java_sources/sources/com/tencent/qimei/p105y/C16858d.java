package com.tencent.qimei.p105y;

import android.content.Context;
import androidx.annotation.Nullable;
import com.tencent.qimei.p104x.C16854b;
import com.tencent.qimei.p106z.InterfaceC16859a;

/* renamed from: com.tencent.qimei.y.d */
/* loaded from: classes10.dex */
public class C16858d implements InterfaceC16857c {

    /* renamed from: a */
    public static volatile C16858d f93703a;

    /* renamed from: b */
    public InterfaceC16857c f93704b;

    /* renamed from: b */
    public static C16858d m60143b() {
        if (f93703a == null) {
            synchronized (C16858d.class) {
                if (f93703a == null) {
                    f93703a = new C16858d();
                }
            }
        }
        return f93703a;
    }

    @Nullable
    /* renamed from: a */
    public final InterfaceC16857c m60144a() {
        InterfaceC16859a m60140a = C16854b.m60139a().m60140a("SdkInfo");
        if (!(m60140a instanceof InterfaceC16857c)) {
            return null;
        }
        InterfaceC16857c interfaceC16857c = (InterfaceC16857c) m60140a;
        this.f93704b = interfaceC16857c;
        return interfaceC16857c;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16857c
    @Nullable
    /* renamed from: c */
    public synchronized Context mo60059c() {
        InterfaceC16857c m60144a = m60144a();
        if (m60144a == null) {
            return null;
        }
        return m60144a.mo60059c();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16857c
    public String getSdkVersion() {
        InterfaceC16857c m60144a = m60144a();
        return m60144a == null ? "" : m60144a.getSdkVersion();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16857c
    /* renamed from: h */
    public String mo60064h() {
        InterfaceC16857c m60144a = m60144a();
        return m60144a == null ? "" : m60144a.mo60064h();
    }
}
