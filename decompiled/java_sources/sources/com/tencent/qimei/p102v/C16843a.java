package com.tencent.qimei.p102v;

import android.text.TextUtils;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p085f.InterfaceC16777a;
import com.tencent.qimei.p092m.C16802c;
import com.tencent.qimei.sdk.p099S.DataFormatter;

/* renamed from: com.tencent.qimei.v.a */
/* loaded from: classes10.dex */
public class C16843a implements InterfaceC16777a {

    /* renamed from: a */
    public final /* synthetic */ DataFormatter f93672a;

    /* renamed from: b */
    public final /* synthetic */ DataFormatter f93673b;

    /* renamed from: c */
    public final /* synthetic */ C16845c f93674c;

    public C16843a(C16845c c16845c, DataFormatter dataFormatter, DataFormatter dataFormatter2) {
        this.f93674c = c16845c;
        this.f93672a = dataFormatter;
        this.f93673b = dataFormatter2;
    }

    @Override // com.tencent.qimei.p085f.InterfaceC16777a
    /* renamed from: a */
    public void mo59930a() {
        this.f93672a.m60083a().putAll(this.f93673b.m60083a());
        String m60126a = this.f93674c.m60126a(this.f93672a, C16845c.f93677a);
        if (TextUtils.isEmpty(m60126a)) {
            return;
        }
        C16802c.m59980a(C16773a.m59900b(), m60126a, "spread_data");
    }
}
