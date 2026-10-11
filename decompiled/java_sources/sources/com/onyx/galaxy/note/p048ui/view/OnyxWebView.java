package com.onyx.galaxy.note.p048ui.view;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.http.SslError;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.PermissionRequest;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.config.DebugConfig;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.utils.AutoCloseWebView;
import com.onyx.galaxy.note.utils.NoCrashWebViewClient;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u00104\u001a\u000203¢\u0006\u0004\b5\u00106B\u001b\b\u0016\u0012\u0006\u00104\u001a\u000203\u0012\b\u00108\u001a\u0004\u0018\u000107¢\u0006\u0004\b5\u00109B#\b\u0016\u0012\u0006\u00104\u001a\u000203\u0012\b\u00108\u001a\u0004\u0018\u000107\u0012\u0006\u0010;\u001a\u00020:¢\u0006\u0004\b5\u0010<B+\b\u0016\u0012\u0006\u00104\u001a\u000203\u0012\b\u00108\u001a\u0004\u0018\u000107\u0012\u0006\u0010;\u001a\u00020:\u0012\u0006\u0010=\u001a\u00020:¢\u0006\u0004\b5\u0010>J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007J\u0016\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aJ0\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070 2 \u0010\u001f\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00020\u001dj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0007`\u001eJJ\u0010&\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00020\u001d\"\u0004\b\u0000\u0010\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#2 \u0010%\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00020\u001dj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u001eJ\\\u0010+\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u00072\b\b\u0002\u0010(\u001a\u00020\u001a2\"\b\u0002\u0010\u001f\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00020\u001dj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0007`\u001e2\u001e\b\u0002\u0010*\u001a\u0018\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00020\u001dj\b\u0012\u0004\u0012\u00020)`\u001eJP\u0010+\u001a\u00020\u0000\"\u0004\b\u0000\u0010\"2\u0006\u0010'\u001a\u00020\u00072\b\b\u0002\u0010(\u001a\u00020\u001a2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#2\"\b\u0002\u0010%\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00020\u001dj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u001eJR\u0010-\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u00072\"\b\u0002\u0010\u001f\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00020\u001dj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0007`\u001e2\u001e\b\u0002\u0010*\u001a\u0018\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00020\u001dj\b\u0012\u0004\u0012\u00020)`\u001eJF\u0010-\u001a\u00020\u0000\"\u0004\b\u0000\u0010\"2\u0006\u0010,\u001a\u00020\u00072\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#2\"\b\u0002\u0010%\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00020\u001dj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u001eJ\u000e\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.R\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u0006?"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/OnyxWebView;", "Lcom/onyx/galaxy/note/utils/AutoCloseWebView;", "", "i", "j", C6999h.f39688c, C6998g.f39679a, "", "url", "", "shouldInterceptUrl", "Landroid/webkit/WebResourceRequest;", AbstractLogger.REQUEST, "Landroid/webkit/WebResourceResponse;", "shouldInterceptRequest", "onWebViewTimeout", "onSSLDateInvalid", "onDocumentFinishLoading", "onDataLoaded", "loadUrl", "assetPath", "openAsset", "openWebpage", "htmlText", "openHtmlText", "name", "", "nativeObject", "registerNativeObject", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "onEvaluateResult", "Landroid/webkit/ValueCallback;", "createEvaluateCallback", "T", "Ljava/lang/Class;", "returnType", "returnObjectHandler", "createTextResultHandler", "funcName", "argsObject", "", "onEvaluateFail", "executeJavascriptSentence", "variableName", "executeJavascriptVariable", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "callback", "setWebViewCallback", C6997f.f39671c, "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attributeSet", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"JavascriptInterface"})
@SourceDebugExtension({"SMAP\nOnyxWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxWebView.kt\ncom/onyx/galaxy/note/ui/view/OnyxWebView\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,237:1\n41#2,5:238\n*S KotlinDebug\n*F\n+ 1 OnyxWebView.kt\ncom/onyx/galaxy/note/ui/view/OnyxWebView\n*L\n191#1:238,5\n*E\n"})
/* loaded from: classes9.dex */
public class OnyxWebView extends AutoCloseWebView {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public OnyxWebViewCallback callback;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnyxWebView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final void m51447d(Function1 onEvaluateResult, String str) {
        Intrinsics.checkNotNullParameter(onEvaluateResult, "$onEvaluateResult");
        if (str == null || Intrinsics.areEqual(str, "null") || Intrinsics.areEqual(str, OcrValues.ENGINE_UNDEFINED)) {
            onEvaluateResult.invoke(null);
        } else {
            onEvaluateResult.invoke(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static final void m51448e(OnyxWebView this_apply, String funcName, Ref.ObjectRef argsJson, Function1 onEvaluateResult, Function1 onEvaluateFail) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(funcName, "$funcName");
        Intrinsics.checkNotNullParameter(argsJson, "$argsJson");
        Intrinsics.checkNotNullParameter(onEvaluateResult, "$onEvaluateResult");
        Intrinsics.checkNotNullParameter(onEvaluateFail, "$onEvaluateFail");
        try {
            this_apply.evaluateJavascript("javascript:" + funcName + '(' + ((String) argsJson.element) + ')', this_apply.createEvaluateCallback(onEvaluateResult));
        } catch (Throwable th) {
            onEvaluateFail.invoke(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnyxWebView executeJavascriptSentence$default(OnyxWebView onyxWebView, String str, Object obj, Function1 function1, Function1 function12, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeJavascriptSentence");
        }
        if ((i & 2) != 0) {
            obj = Unit.INSTANCE;
        }
        if ((i & 4) != 0) {
            function1 = new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptSentence$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable String str2) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                    invoke2(str2);
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 8) != 0) {
            function12 = new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptSentence$2
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }
            };
        }
        return onyxWebView.executeJavascriptSentence(str, obj, (Function1<? super String, Unit>) function1, (Function1<? super Throwable, Unit>) function12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnyxWebView executeJavascriptVariable$default(OnyxWebView onyxWebView, String str, Function1 function1, Function1 function12, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeJavascriptVariable");
        }
        if ((i & 2) != 0) {
            function1 = new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptVariable$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable String str2) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                    invoke2(str2);
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            function12 = new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptVariable$2
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }
            };
        }
        return onyxWebView.executeJavascriptVariable(str, (Function1<? super String, Unit>) function1, (Function1<? super Throwable, Unit>) function12);
    }

    /* renamed from: f */
    public static final void m51449f(OnyxWebView this_apply, String variableName, Function1 onEvaluateResult, Function1 onEvaluateFail) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(variableName, "$variableName");
        Intrinsics.checkNotNullParameter(onEvaluateResult, "$onEvaluateResult");
        Intrinsics.checkNotNullParameter(onEvaluateFail, "$onEvaluateFail");
        try {
            this_apply.evaluateJavascript("javascript:" + variableName, this_apply.createEvaluateCallback(onEvaluateResult));
        } catch (Throwable th) {
            onEvaluateFail.invoke(th);
        }
    }

    @NotNull
    public final ValueCallback<String> createEvaluateCallback(@NotNull final Function1<? super String, Unit> onEvaluateResult) {
        Intrinsics.checkNotNullParameter(onEvaluateResult, "onEvaluateResult");
        return new ValueCallback() { // from class: com.sunia.HTREnginev2.tgk
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                OnyxWebView.m51447d(Function1.this, (String) obj);
            }
        };
    }

    @NotNull
    public final <T> Function1<String, Unit> createTextResultHandler(@NotNull final Class<T> returnType, @NotNull final Function1<? super T, Unit> returnObjectHandler) {
        Intrinsics.checkNotNullParameter(returnType, "returnType");
        Intrinsics.checkNotNullParameter(returnObjectHandler, "returnObjectHandler");
        return new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$createTextResultHandler$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable String str) {
                returnObjectHandler.invoke(JSONUtils.INSTANCE.parseObject(str, (Class) returnType));
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final OnyxWebView executeJavascriptSentence(@NotNull final String funcName, @NotNull Object argsObject, @NotNull final Function1<? super String, Unit> onEvaluateResult, @NotNull final Function1<? super Throwable, Unit> onEvaluateFail) {
        Intrinsics.checkNotNullParameter(funcName, "funcName");
        Intrinsics.checkNotNullParameter(argsObject, "argsObject");
        Intrinsics.checkNotNullParameter(onEvaluateResult, "onEvaluateResult");
        Intrinsics.checkNotNullParameter(onEvaluateFail, "onEvaluateFail");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        String json = JSONUtils.INSTANCE.toJson(argsObject);
        objectRef.element = json != null ? json : "";
        post(new Runnable() { // from class: com.sunia.HTREnginev2.sgk
            @Override // java.lang.Runnable
            public final void run() {
                OnyxWebView.m51448e(OnyxWebView.this, funcName, objectRef, onEvaluateResult, onEvaluateFail);
            }
        });
        return this;
    }

    @NotNull
    public final OnyxWebView executeJavascriptVariable(@NotNull final String variableName, @NotNull final Function1<? super String, Unit> onEvaluateResult, @NotNull final Function1<? super Throwable, Unit> onEvaluateFail) {
        Intrinsics.checkNotNullParameter(variableName, "variableName");
        Intrinsics.checkNotNullParameter(onEvaluateResult, "onEvaluateResult");
        Intrinsics.checkNotNullParameter(onEvaluateFail, "onEvaluateFail");
        post(new Runnable() { // from class: com.sunia.HTREnginev2.rgk
            @Override // java.lang.Runnable
            public final void run() {
                OnyxWebView.m51449f(OnyxWebView.this, variableName, onEvaluateResult, onEvaluateFail);
            }
        });
        return this;
    }

    /* renamed from: g */
    public final void m51450g() {
        registerNativeObject("debugger", OnyxWebViewDebugger.INSTANCE);
    }

    /* renamed from: h */
    public final void m51451h() {
        setWebChromeClient(new WebChromeClient() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$initWebChromeClient$1
            @Override // android.webkit.WebChromeClient
            public void onPermissionRequest(@NotNull PermissionRequest request) {
                Intrinsics.checkNotNullParameter(request, "request");
                request.grant(request.getResources());
            }
        });
    }

    /* renamed from: i */
    public final void m51452i() {
        WebView.setWebContentsDebuggingEnabled(DebugConfig.INSTANCE.isDebuggable());
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getSettings().setMixedContentMode(0);
        getSettings().setCacheMode(-1);
    }

    /* renamed from: j */
    public final void m51453j() {
        setWebViewClient(new NoCrashWebViewClient() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$initWebViewClient$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(@Nullable WebView view, @Nullable String url) {
                OnyxWebView.this.onDataLoaded();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(@Nullable WebView view, @NotNull WebResourceRequest request, @Nullable WebResourceError error) {
                Intrinsics.checkNotNullParameter(request, "request");
                super.onReceivedError(view, request, error);
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                String simpleName = Reflection.getOrCreateKotlinClass(OnyxWebView.class).getSimpleName();
                StringBuilder sb = new StringBuilder();
                sb.append("WebViewError ");
                sb.append(uri);
                sb.append(' ');
                sb.append(error != null ? Integer.valueOf(error.getErrorCode()) : null);
                sb.append(' ');
                sb.append((Object) (error != null ? error.getDescription() : null));
                Log.e(simpleName, sb.toString());
                if (request.isForMainFrame()) {
                    Integer valueOf = error != null ? Integer.valueOf(error.getErrorCode()) : null;
                    boolean z = true;
                    if ((valueOf == null || valueOf.intValue() != -2) && (valueOf == null || valueOf.intValue() != -8)) {
                        z = false;
                    }
                    if (z) {
                        OnyxWebView.this.onWebViewTimeout(uri);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(@NotNull WebView view, @NotNull SslErrorHandler handler, @NotNull SslError error) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(handler, "handler");
                Intrinsics.checkNotNullParameter(error, "error");
                if (DebugConfig.INSTANCE.isDebuggable()) {
                    handler.proceed();
                    return;
                }
                handler.cancel();
                if (error.getPrimaryError() == 4) {
                    OnyxWebView.this.onSSLDateInvalid();
                } else {
                    OnyxWebView onyxWebView = OnyxWebView.this;
                    onyxWebView.onWebViewTimeout(String.valueOf(onyxWebView.getUrl()));
                }
            }

            @Override // android.webkit.WebViewClient
            @Nullable
            public WebResourceResponse shouldInterceptRequest(@NotNull WebView view, @NotNull WebResourceRequest request) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(request, "request");
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                WebResourceResponse shouldInterceptRequest = OnyxWebView.this.shouldInterceptRequest(uri, request);
                return shouldInterceptRequest == null ? super.shouldInterceptRequest(view, request) : shouldInterceptRequest;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@NotNull WebView webView, @NotNull WebResourceRequest request) {
                Intrinsics.checkNotNullParameter(webView, "webView");
                Intrinsics.checkNotNullParameter(request, "request");
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                return OnyxWebView.this.shouldInterceptUrl(uri);
            }
        });
    }

    @Override // android.webkit.WebView
    public void loadUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        super.loadUrl(url);
        OnyxWebViewCallback onyxWebViewCallback = this.callback;
        if (onyxWebViewCallback != null) {
            onyxWebViewCallback.onDocumentStartLoading();
        }
    }

    public void onDataLoaded() {
        OnyxWebViewCallback onyxWebViewCallback = this.callback;
        if (onyxWebViewCallback != null) {
            onyxWebViewCallback.onDataLoaded();
        }
    }

    public void onDocumentFinishLoading() {
        OnyxWebViewCallback onyxWebViewCallback = this.callback;
        if (onyxWebViewCallback != null) {
            onyxWebViewCallback.onDocumentFinishLoading();
        }
    }

    public void onSSLDateInvalid() {
        OnyxWebViewCallback onyxWebViewCallback = this.callback;
        if (onyxWebViewCallback != null) {
            onyxWebViewCallback.onSSLDateInvalid();
        }
    }

    public void onWebViewTimeout(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        OnyxWebViewCallback onyxWebViewCallback = this.callback;
        if (onyxWebViewCallback != null) {
            onyxWebViewCallback.onWebViewTimeout();
        }
    }

    @NotNull
    public final OnyxWebView openAsset(@NotNull String assetPath) {
        Intrinsics.checkNotNullParameter(assetPath, "assetPath");
        loadUrl("file:///android_asset/" + assetPath);
        return this;
    }

    @NotNull
    public final OnyxWebView openHtmlText(@NotNull String htmlText) {
        Intrinsics.checkNotNullParameter(htmlText, "htmlText");
        loadData(htmlText, "text/html", "UTF-8");
        return this;
    }

    @NotNull
    public final OnyxWebView openWebpage(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        loadUrl(url);
        return this;
    }

    @NotNull
    public final OnyxWebView registerNativeObject(@NotNull String name, @NotNull Object nativeObject) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        addJavascriptInterface(nativeObject, name);
        return this;
    }

    @NotNull
    public final OnyxWebView setWebViewCallback(@NotNull OnyxWebViewCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        return this;
    }

    @Nullable
    public WebResourceResponse shouldInterceptRequest(@NotNull String url, @NotNull WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(request, "request");
        return null;
    }

    public boolean shouldInterceptUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (UriUtils.INSTANCE.isWebsiteOrFile(url)) {
            return false;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ContextKt.openWithLocalApplication$default(context, url, null, false, 6, null);
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnyxWebView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @NotNull
    public final <T> OnyxWebView executeJavascriptVariable(@NotNull String variableName, @NotNull final Class<T> returnType, @NotNull final Function1<? super T, Unit> returnObjectHandler) {
        Intrinsics.checkNotNullParameter(variableName, "variableName");
        Intrinsics.checkNotNullParameter(returnType, "returnType");
        Intrinsics.checkNotNullParameter(returnObjectHandler, "returnObjectHandler");
        return executeJavascriptVariable$default(this, variableName, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptVariable$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable String str) {
                OnyxWebView.this.createTextResultHandler(returnType, returnObjectHandler).invoke(str);
            }
        }, (Function1) null, 4, (Object) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnyxWebView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.attr.webViewStyle);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxWebView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        m51452i();
        m51453j();
        m51451h();
        m51450g();
        setBackgroundColor(0);
    }

    public static /* synthetic */ OnyxWebView executeJavascriptVariable$default(OnyxWebView onyxWebView, String str, Class cls, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeJavascriptVariable");
        }
        if ((i & 4) != 0) {
            function1 = new Function1<Object, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptVariable$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Object obj2) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                    invoke2(obj2);
                    return Unit.INSTANCE;
                }
            };
        }
        return onyxWebView.executeJavascriptVariable(str, cls, function1);
    }

    @NotNull
    public final <T> OnyxWebView executeJavascriptSentence(@NotNull String funcName, @NotNull Object argsObject, @NotNull final Class<T> returnType, @NotNull final Function1<? super T, Unit> returnObjectHandler) {
        Intrinsics.checkNotNullParameter(funcName, "funcName");
        Intrinsics.checkNotNullParameter(argsObject, "argsObject");
        Intrinsics.checkNotNullParameter(returnType, "returnType");
        Intrinsics.checkNotNullParameter(returnObjectHandler, "returnObjectHandler");
        return executeJavascriptSentence$default(this, funcName, argsObject, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptSentence$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable String str) {
                OnyxWebView.this.createTextResultHandler(returnType, returnObjectHandler).invoke(str);
            }
        }, (Function1) null, 8, (Object) null);
    }

    public static /* synthetic */ OnyxWebView executeJavascriptSentence$default(OnyxWebView onyxWebView, String str, Object obj, Class cls, Function1 function1, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeJavascriptSentence");
        }
        if ((i & 2) != 0) {
            obj = Unit.INSTANCE;
        }
        if ((i & 8) != 0) {
            function1 = new Function1<Object, Unit>() { // from class: com.onyx.galaxy.note.ui.view.OnyxWebView$executeJavascriptSentence$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Object obj3) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj3) {
                    invoke2(obj3);
                    return Unit.INSTANCE;
                }
            };
        }
        return onyxWebView.executeJavascriptSentence(str, obj, cls, function1);
    }
}
