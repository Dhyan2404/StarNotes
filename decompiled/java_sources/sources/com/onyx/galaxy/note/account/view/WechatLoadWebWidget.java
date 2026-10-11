package com.onyx.galaxy.note.account.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Picture;
import android.net.Uri;
import android.util.AttributeSet;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.couchbase.lite.internal.core.C4Replicator;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.utils.AutoCloseWebView;
import com.onyx.galaxy.note.utils.NoCrashWebViewClient;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 /2\u00020\u0001:\u0005/0123B\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b(\u0010)B\u001b\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b(\u0010,B#\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010+\u001a\u0004\u0018\u00010*\u0012\u0006\u0010-\u001a\u00020\"¢\u0006\u0004\b(\u0010.J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\"\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006J\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0003J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002R?\u0010\u001e\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR?\u0010!\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0019\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;", "Landroid/widget/RelativeLayout;", "", "url", "", "loadUrl", "", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "loadUrlWithHeader", "Lcom/onyx/galaxy/note/utils/AutoCloseWebView;", "getWebView", "imgUrl", C6998g.f39679a, "Landroid/content/Context;", "context", "d", "c", "b", "", C6997f.f39671c, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "jsonString", "e", "Lkotlin/jvm/functions/Function1;", "getOnLoadFinishFunc", "()Lkotlin/jvm/functions/Function1;", "setOnLoadFinishFunc", "(Lkotlin/jvm/functions/Function1;)V", "onLoadFinishFunc", "getQrCodeFunc", "setQrCodeFunc", "qrCodeFunc", "", "I", "count", C6999h.f39688c, "Lcom/onyx/galaxy/note/utils/AutoCloseWebView;", "webView", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "RequestQrCodeImage", "WechatLoadFinishedEvent", "WechatQRCodeEvent", "WechatQRVerifiedEvent", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class WechatLoadWebWidget extends RelativeLayout {

    @NotNull
    public static final String ACTION_BIND = "bind";

    @NotNull
    public static final String ACTION_DESTROY = "destroy";

    @NotNull
    public static final String ACTION_LOGIN = "login";

    @NotNull
    public static final String ACTION_SECURITY = "security";

    @NotNull
    public static final String ACTION_SYMBOL = "_";

    @NotNull
    public static final String ACTION_SYMBOL_REPLACE = "v2";

    @NotNull
    public static final String ACTION_UNBIND = "unbind";

    /* renamed from: i */
    @NotNull
    public static final String f53504i = "imagelistener";

    /* renamed from: j */
    public static final int f53505j = 0;

    /* renamed from: k */
    public static final int f53506k = 1;

    /* renamed from: l */
    public static final int f53507l = 2;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Function1<? super String, Unit> onLoadFinishFunc;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Function1<? super String, Unit> qrCodeFunc;

    /* renamed from: g, reason: from kotlin metadata */
    public int count;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public AutoCloseWebView webView;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;", "", "(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;)V", "getImageUrl", "", "imgUrl", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public final class RequestQrCodeImage {
        public RequestQrCodeImage() {
        }

        @JavascriptInterface
        public final void getImageUrl(@NotNull String imgUrl) {
            Intrinsics.checkNotNullParameter(imgUrl, "imgUrl");
            if (WechatLoadWebWidget.this.count == 1) {
                WechatLoadWebWidget.this.m41989g(imgUrl);
            }
            WechatLoadWebWidget.this.count = 2;
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatLoadFinishedEvent;", "", "", "component1", "code", "copy", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getCode", "()Ljava/lang/String;", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class WechatLoadFinishedEvent {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String code;

        public WechatLoadFinishedEvent(@NotNull String code) {
            Intrinsics.checkNotNullParameter(code, "code");
            this.code = code;
        }

        public static /* synthetic */ WechatLoadFinishedEvent copy$default(WechatLoadFinishedEvent wechatLoadFinishedEvent, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wechatLoadFinishedEvent.code;
            }
            return wechatLoadFinishedEvent.copy(str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        @NotNull
        public final WechatLoadFinishedEvent copy(@NotNull String code) {
            Intrinsics.checkNotNullParameter(code, "code");
            return new WechatLoadFinishedEvent(code);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof WechatLoadFinishedEvent) && Intrinsics.areEqual(this.code, ((WechatLoadFinishedEvent) other).code);
        }

        @NotNull
        public final String getCode() {
            return this.code;
        }

        public int hashCode() {
            return this.code.hashCode();
        }

        @NotNull
        public String toString() {
            return "WechatLoadFinishedEvent(code=" + this.code + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;", "", "", "component1", "qrCodeUrl", "copy", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getQrCodeUrl", "()Ljava/lang/String;", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class WechatQRCodeEvent {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String qrCodeUrl;

        public WechatQRCodeEvent(@NotNull String qrCodeUrl) {
            Intrinsics.checkNotNullParameter(qrCodeUrl, "qrCodeUrl");
            this.qrCodeUrl = qrCodeUrl;
        }

        public static /* synthetic */ WechatQRCodeEvent copy$default(WechatQRCodeEvent wechatQRCodeEvent, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wechatQRCodeEvent.qrCodeUrl;
            }
            return wechatQRCodeEvent.copy(str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getQrCodeUrl() {
            return this.qrCodeUrl;
        }

        @NotNull
        public final WechatQRCodeEvent copy(@NotNull String qrCodeUrl) {
            Intrinsics.checkNotNullParameter(qrCodeUrl, "qrCodeUrl");
            return new WechatQRCodeEvent(qrCodeUrl);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof WechatQRCodeEvent) && Intrinsics.areEqual(this.qrCodeUrl, ((WechatQRCodeEvent) other).qrCodeUrl);
        }

        @NotNull
        public final String getQrCodeUrl() {
            return this.qrCodeUrl;
        }

        public int hashCode() {
            return this.qrCodeUrl.hashCode();
        }

        @NotNull
        public String toString() {
            return "WechatQRCodeEvent(qrCodeUrl=" + this.qrCodeUrl + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J!\u0010\u0007\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;", "", "", "component1", "component2", "code", "state", "copy", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getCode", "()Ljava/lang/String;", "b", "getState", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class WechatQRVerifiedEvent {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @Nullable
        public final String code;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @Nullable
        public final String state;

        public WechatQRVerifiedEvent(@Nullable String str, @Nullable String str2) {
            this.code = str;
            this.state = str2;
        }

        public static /* synthetic */ WechatQRVerifiedEvent copy$default(WechatQRVerifiedEvent wechatQRVerifiedEvent, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wechatQRVerifiedEvent.code;
            }
            if ((i & 2) != 0) {
                str2 = wechatQRVerifiedEvent.state;
            }
            return wechatQRVerifiedEvent.copy(str, str2);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final String getState() {
            return this.state;
        }

        @NotNull
        public final WechatQRVerifiedEvent copy(@Nullable String code, @Nullable String state) {
            return new WechatQRVerifiedEvent(code, state);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof WechatQRVerifiedEvent)) {
                return false;
            }
            WechatQRVerifiedEvent wechatQRVerifiedEvent = (WechatQRVerifiedEvent) other;
            return Intrinsics.areEqual(this.code, wechatQRVerifiedEvent.code) && Intrinsics.areEqual(this.state, wechatQRVerifiedEvent.state);
        }

        @Nullable
        public final String getCode() {
            return this.code;
        }

        @Nullable
        public final String getState() {
            return this.state;
        }

        public int hashCode() {
            String str = this.code;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.state;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "WechatQRVerifiedEvent(code=" + this.code + ", state=" + this.state + ')';
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.view.WechatLoadWebWidget$a */
    /* loaded from: classes9.dex */
    public static final class C10730a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f53517e;

        /* renamed from: f */
        public final /* synthetic */ WechatLoadWebWidget f53518f;

        public C10730a(String str, WechatLoadWebWidget wechatLoadWebWidget) {
            this.f53517e = str;
            this.f53518f = wechatLoadWebWidget;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            String replace$default;
            Intrinsics.checkNotNullParameter(it2, "it");
            replace$default = StringsKt__StringsJVMKt.replace$default(this.f53517e, it2, Constant.OPEN_WEIXIN_HOST_BASE, false, 4, (Object) null);
            Debug.INSTANCE.m32035d(this.f53518f.getClass(), "updateQrImage result imgUrl:" + replace$default, new Object[0]);
            Function1<String, Unit> qrCodeFunc = this.f53518f.getQrCodeFunc();
            if (qrCodeFunc != null) {
                qrCodeFunc.invoke(replace$default);
            }
            GlobalBundle.INSTANCE.postEvent(new WechatQRCodeEvent(replace$default));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WechatLoadWebWidget(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: e */
    public static final void m41984e(WebView webView, Picture picture) {
        webView.loadUrl("javascript:window.imagelistener.getImageUrl(document.getElementsByTagName('img')[0].src);");
    }

    /* renamed from: b */
    public final void m41985b(String url) {
        if (m41988f()) {
            return;
        }
        Uri parse = Uri.parse(url);
        GlobalBundle.INSTANCE.postEvent(new WechatQRVerifiedEvent(parse.getQueryParameter("code"), parse.getQueryParameter("state")));
    }

    /* renamed from: c */
    public final void m41986c(String url) {
        if (m41988f()) {
            return;
        }
        String queryParameter = Uri.parse(url).getQueryParameter("code");
        if (queryParameter == null) {
            queryParameter = "";
        }
        Function1<? super String, Unit> function1 = this.onLoadFinishFunc;
        if (function1 != null) {
            function1.invoke(queryParameter);
        }
        GlobalBundle.INSTANCE.postEvent(new WechatLoadFinishedEvent(queryParameter));
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: d */
    public final void m41987d(Context context) {
        final AutoCloseWebView autoCloseWebView = new AutoCloseWebView(context);
        autoCloseWebView.setPadding(0, 0, 0, 0);
        autoCloseWebView.getSettings().setJavaScriptEnabled(true);
        autoCloseWebView.addJavascriptInterface(new RequestQrCodeImage(), f53504i);
        autoCloseWebView.getSettings().setSupportZoom(true);
        autoCloseWebView.getSettings().setDomStorageEnabled(true);
        autoCloseWebView.requestFocus();
        autoCloseWebView.getSettings().setSupportZoom(true);
        autoCloseWebView.getSettings().setBuiltInZoomControls(true);
        autoCloseWebView.setPictureListener(new WebView.PictureListener() { // from class: com.sunia.HTREnginev2.s6o
            @Override // android.webkit.WebView.PictureListener
            public final void onNewPicture(WebView webView, Picture picture) {
                WechatLoadWebWidget.m41984e(webView, picture);
            }
        });
        autoCloseWebView.setWebViewClient(new NoCrashWebViewClient() { // from class: com.onyx.galaxy.note.account.view.WechatLoadWebWidget$initView$1$2
            /* renamed from: a */
            public final String m41991a(String redirectUrl) {
                List split$default;
                String replace$default;
                String queryParameter = Uri.parse(autoCloseWebView.getUrl()).getQueryParameter("state");
                if (queryParameter == null) {
                    return redirectUrl;
                }
                split$default = StringsKt__StringsKt.split$default((CharSequence) queryParameter, new String[]{"_"}, false, 0, 6, (Object) null);
                replace$default = StringsKt__StringsJVMKt.replace$default((String) split$default.get(0), WechatLoadWebWidget.ACTION_SYMBOL_REPLACE, "", false, 4, (Object) null);
                return replace$default;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(@Nullable WebView view, @Nullable WebResourceRequest request, @Nullable WebResourceError error) {
                super.onReceivedError(view, request, error);
                if (error != null && error.getErrorCode() == -2) {
                    GlobalBundle.INSTANCE.postEvent(new WechatLoadWebWidget.WechatQRCodeEvent(""));
                    ToastUtils.show$default(ToastUtils.INSTANCE, C7106R.string.network_bad, false, 2, (Object) null);
                }
            }

            @Override // android.webkit.WebViewClient
            @Nullable
            public WebResourceResponse shouldInterceptRequest(@NotNull WebView view, @NotNull WebResourceRequest request) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(request, "request");
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                Debug.INSTANCE.m32035d(WechatLoadWebWidget.class, "url:" + uri, new Object[0]);
                return super.shouldInterceptRequest(view, request);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@NotNull WebView view, @NotNull WebResourceRequest request) {
                List listOf;
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(request, "request");
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                String m41991a = m41991a(uri);
                if (Intrinsics.areEqual(m41991a, "login")) {
                    WechatLoadWebWidget.this.m41986c(uri);
                    return true;
                }
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"bind", "unbind", "destroy", "security"});
                if (!listOf.contains(m41991a)) {
                    return false;
                }
                WechatLoadWebWidget.this.m41985b(uri);
                return true;
            }
        });
        autoCloseWebView.setWebChromeClient(new WebChromeClient());
        this.webView = autoCloseWebView;
        addView(autoCloseWebView, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* renamed from: f */
    public final boolean m41988f() {
        return this.count == 0;
    }

    /* renamed from: g */
    public final void m41989g(String imgUrl) {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = ServiceFactory.loadOnyxApiV2Url$default(ServiceFactory.INSTANCE, null, 1, null).doOnNext(new C10730a(imgUrl, this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    @Nullable
    public final Function1<String, Unit> getOnLoadFinishFunc() {
        return this.onLoadFinishFunc;
    }

    @Nullable
    public final Function1<String, Unit> getQrCodeFunc() {
        return this.qrCodeFunc;
    }

    @Nullable
    public final AutoCloseWebView getWebView() {
        return this.webView;
    }

    public final void loadUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.count = 1;
        AutoCloseWebView autoCloseWebView = this.webView;
        if (autoCloseWebView != null) {
            autoCloseWebView.loadUrl(url);
        }
    }

    public final void loadUrlWithHeader(@NotNull String url, @NotNull Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.count = 1;
        AutoCloseWebView autoCloseWebView = this.webView;
        if (autoCloseWebView != null) {
            autoCloseWebView.loadUrl(url, headers);
        }
    }

    public final void setOnLoadFinishFunc(@Nullable Function1<? super String, Unit> function1) {
        this.onLoadFinishFunc = function1;
    }

    public final void setQrCodeFunc(@Nullable Function1<? super String, Unit> function1) {
        this.qrCodeFunc = function1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WechatLoadWebWidget(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WechatLoadWebWidget(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.count = 1;
        m41987d(context);
    }
}
