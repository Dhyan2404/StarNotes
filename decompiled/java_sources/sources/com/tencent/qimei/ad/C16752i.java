package com.tencent.qimei.ad;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.ad.i */
/* loaded from: classes10.dex */
public class C16752i extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ C16754k f93420a;

    public C16752i(C16754k c16754k) {
        this.f93420a = c16754k;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        try {
            this.f93420a.m59855a(webView);
        } catch (Exception e) {
            C16806a.m59992a(e);
        }
    }
}
