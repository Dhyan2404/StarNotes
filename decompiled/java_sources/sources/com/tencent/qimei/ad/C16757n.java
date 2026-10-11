package com.tencent.qimei.ad;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.smtt.sdk.ValueCallback;
import com.tencent.smtt.sdk.WebSettings;
import com.tencent.smtt.sdk.WebView;

/* renamed from: com.tencent.qimei.ad.n */
/* loaded from: classes10.dex */
public class C16757n {

    /* renamed from: b */
    public Context f93428b;

    /* renamed from: a */
    public WebView f93427a = null;

    /* renamed from: c */
    public final C16749f f93429c = new C16749f("x5");

    public C16757n(Context context) {
        this.f93428b = context;
    }

    /* renamed from: a */
    public final void m59857a() {
        this.f93427a.evaluateJavascript("javascript:new Fingerprint().getNative()", (ValueCallback) null);
    }

    /* renamed from: b */
    public void m59858b() {
        new Handler(Looper.getMainLooper()).post(new RunnableC16756m(this));
        this.f93429c.m59852b();
    }

    /* renamed from: a */
    public static /* synthetic */ void m59856a(C16757n c16757n) {
        if (c16757n.f93427a == null) {
            WebView webView = new WebView(c16757n.f93428b);
            c16757n.f93427a = webView;
            if (webView.getX5WebViewExtension() == null) {
                c16757n.f93429c.m59851a("x5_sys");
            }
            c16757n.f93427a.removeJavascriptInterface("searchBoxJavaBridge_");
            c16757n.f93427a.removeJavascriptInterface("accessibility");
            c16757n.f93427a.removeJavascriptInterface("accessibilityTraversal");
            WebSettings settings = c16757n.f93427a.getSettings();
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
            settings.setSavePassword(false);
            settings.setAllowFileAccess(true);
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(-1);
            c16757n.f93427a.addJavascriptInterface(c16757n.f93429c, "JSInterface");
            c16757n.f93427a.setWebViewClient(new C16755l(c16757n));
        }
        c16757n.f93427a.loadUrl(C16762a.m59868a(c16757n.f93428b));
    }
}
