package com.tencent.qimei.p102v;

import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p085f.InterfaceC16777a;
import com.tencent.qimei.p092m.C16802c;
import com.tencent.qimei.sdk.p099S.DataFormatter;

/* renamed from: com.tencent.qimei.v.b */
/* loaded from: classes10.dex */
public class C16844b implements InterfaceC16777a {

    /* renamed from: a */
    public final /* synthetic */ DataFormatter[] f93675a;

    /* renamed from: b */
    public final /* synthetic */ C16845c f93676b;

    public C16844b(C16845c c16845c, DataFormatter[] dataFormatterArr) {
        this.f93676b = c16845c;
        this.f93675a = dataFormatterArr;
    }

    @Override // com.tencent.qimei.p085f.InterfaceC16777a
    /* renamed from: a */
    public void mo59930a() {
        this.f93675a[0] = this.f93676b.m60125a(C16802c.m59979a(C16773a.m59900b(), "spread_data"), C16845c.f93677a);
    }
}
