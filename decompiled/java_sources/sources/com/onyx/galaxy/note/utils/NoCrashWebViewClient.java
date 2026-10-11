package com.onyx.galaxy.note.utils;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/NoCrashWebViewClient;", "Landroid/webkit/WebViewClient;", "()V", "onRenderProcessGone", "", "webView", "Landroid/webkit/WebView;", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public class NoCrashWebViewClient extends WebViewClient {
    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@NotNull WebView webView, @NotNull RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(detail, "detail");
        return WebViewExt.INSTANCE.handleWebViewCrash(webView);
    }
}
