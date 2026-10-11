package com.tencent.qimei.p105y;

import androidx.annotation.Nullable;
import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p104x.C16854b;
import com.tencent.qimei.p106z.InterfaceC16859a;

/* renamed from: com.tencent.qimei.y.a */
/* loaded from: classes10.dex */
public class C16855a implements InterfaceC16856b {

    /* renamed from: a */
    public final String f93701a;

    /* renamed from: b */
    public InterfaceC16856b f93702b;

    public C16855a(String str) {
        this.f93701a = str;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: a */
    public String mo60056a() {
        return m60142c() == null ? "" : m60142c().mo60056a();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: b */
    public String mo60058b() {
        return m60142c() == null ? "" : m60142c().mo60058b();
    }

    @Nullable
    /* renamed from: c */
    public final InterfaceC16856b m60142c() {
        InterfaceC16856b interfaceC16856b = this.f93702b;
        if (interfaceC16856b != null) {
            return interfaceC16856b;
        }
        C16854b m60139a = C16854b.m60139a();
        StringBuilder m59796a = C16733a.m59796a("BizInfo");
        m59796a.append(this.f93701a);
        InterfaceC16859a m60140a = m60139a.m60140a(m59796a.toString());
        if (!(m60140a instanceof InterfaceC16856b)) {
            return null;
        }
        InterfaceC16856b interfaceC16856b2 = (InterfaceC16856b) m60140a;
        this.f93702b = interfaceC16856b2;
        return interfaceC16856b2;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: d */
    public String mo60060d() {
        return m60142c() == null ? "" : m60142c().mo60060d();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: e */
    public String mo60061e() {
        return m60142c() == null ? "" : m60142c().mo60061e();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: f */
    public void mo60062f() {
        if (m60142c() == null) {
            return;
        }
        m60142c().mo60062f();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: g */
    public String mo60063g() {
        return m60142c() == null ? "" : m60142c().mo60063g();
    }
}
