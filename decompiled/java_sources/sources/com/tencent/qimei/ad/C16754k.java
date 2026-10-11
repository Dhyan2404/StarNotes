package com.tencent.qimei.ad;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.ad.k */
/* loaded from: classes10.dex */
public class C16754k {

    /* renamed from: b */
    public Context f93423b;

    /* renamed from: a */
    public WebView f93422a = null;

    /* renamed from: c */
    public final C16749f f93424c = new C16749f(NotificationCompat.CATEGORY_SYSTEM);

    public C16754k(Context context) {
        this.f93423b = context;
    }

    /* renamed from: a */
    public void m59854a() {
        new Handler(Looper.getMainLooper()).post(new RunnableC16753j(this));
        this.f93424c.m59852b();
    }

    /* renamed from: a */
    public final void m59855a(WebView webView) {
        webView.evaluateJavascript("javascript:new Fingerprint().getNative()", new C16751h(this));
    }

    /* renamed from: a */
    public static /* synthetic */ void m59853a(C16754k c16754k) {
        if (c16754k.f93422a == null) {
            try {
                WebView webView = new WebView(c16754k.f93423b);
                c16754k.f93422a = webView;
                webView.removeJavascriptInterface("searchBoxJavaBridge_");
                c16754k.f93422a.removeJavascriptInterface("accessibility");
                c16754k.f93422a.removeJavascriptInterface("accessibilityTraversal");
                WebSettings settings = c16754k.f93422a.getSettings();
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                settings.setSavePassword(false);
                settings.setJavaScriptEnabled(true);
                settings.setAllowFileAccess(true);
                settings.setCacheMode(-1);
                c16754k.f93422a.addJavascriptInterface(c16754k.f93424c, "JSInterface");
                c16754k.f93422a.setWebViewClient(new C16752i(c16754k));
            } catch (RuntimeException e) {
                C16806a.m59992a(e);
            }
        }
        c16754k.f93422a.loadUrl(C16762a.m59868a(c16754k.f93423b));
    }
}
