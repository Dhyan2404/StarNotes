package com.tencent.qimei.ae;

import com.tencent.qimei.ae.C16760c;
import com.tencent.qimei.p092m.C16802c;

/* renamed from: com.tencent.qimei.ae.a */
/* loaded from: classes10.dex */
public class C16758a extends C16760c.a {

    /* renamed from: d */
    public final /* synthetic */ C16760c f93430d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16758a(C16760c c16760c, String str, String str2) {
        super(str, str2);
        this.f93430d = c16760c;
    }

    @Override // com.tencent.qimei.ae.C16760c.a
    /* renamed from: a */
    public String mo59859a(String str) {
        String replace = str.replace("https://tun-cos-1258344701.file.myqcloud.com/fp.js", "tun-cos-1258344701.js");
        C16802c.m59980a(this.f93430d.f93435d, replace, "tun-cos-1258344701.html");
        return replace;
    }
}
