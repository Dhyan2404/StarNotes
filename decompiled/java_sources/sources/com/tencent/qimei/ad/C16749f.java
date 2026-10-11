package com.tencent.qimei.ad;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.tencent.qimei.p092m.C16805f;

/* renamed from: com.tencent.qimei.ad.f */
/* loaded from: classes10.dex */
public class C16749f {

    /* renamed from: a */
    public final Object f93412a;

    /* renamed from: b */
    public String f93413b;

    /* renamed from: c */
    public C16750g f93414c;

    /* renamed from: d */
    public final C16805f f93415d;

    public C16749f(String str) {
        Object obj = new Object();
        this.f93412a = obj;
        this.f93413b = str;
        this.f93414c = null;
        this.f93415d = new C16805f(obj, 30000);
    }

    /* renamed from: a */
    public C16750g m59850a() {
        return this.f93414c;
    }

    /* renamed from: b */
    public void m59852b() {
        this.f93415d.m59988b();
    }

    @JavascriptInterface
    public void callback(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.f93414c = new C16750g(str, this.f93413b, str2, str3);
        }
        this.f93415d.m59987a();
    }

    /* renamed from: a */
    public void m59851a(String str) {
        this.f93413b = str;
    }
}
