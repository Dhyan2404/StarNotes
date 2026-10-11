package com.tencent.qimei.ad;

import com.tencent.qimei.p093n.C16806a;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;

/* renamed from: com.tencent.qimei.ad.l */
/* loaded from: classes10.dex */
public class C16755l extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ C16757n f93425a;

    public C16755l(C16757n c16757n) {
        this.f93425a = c16757n;
    }

    public void onPageFinished(WebView webView, String str) {
        try {
            this.f93425a.m59857a();
        } catch (Throwable th) {
            C16806a.m59992a(th);
        }
    }
}
