package com.onyx.galaxy.note.usercenter.p049ui;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.MainThread;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentManager;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.event.StatisticMemberPayPageClickEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.view.PayDialog;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.common.action.PayAction;
import com.onyx.galaxy.note.common.base.BaseCompatActivity;
import com.onyx.galaxy.note.common.constant.WebJSConstants;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ActivityHtmlWindowBinding;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.p048ui.view.WebViewLoadingStatus;
import com.onyx.galaxy.note.usercenter.handler.FileDownloadEvent;
import com.onyx.galaxy.note.usercenter.handler.FileDownloadHandler;
import com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler;
import com.onyx.galaxy.note.usercenter.p049ui.HtmlWindowActivity;
import com.onyx.galaxy.note.utils.WebViewExt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0017J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0003J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0002R\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;", "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "onBackPressed", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onNetworkChanged", "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;", "onDownloadStatus", "M", "H", "N", "Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;", "newStatus", "Q", "previousStatus", "S", "J", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "params", "L", "", "id", "P", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Lcom/onyx/galaxy/note/databinding/ActivityHtmlWindowBinding;", "w0", "Lcom/onyx/galaxy/note/databinding/ActivityHtmlWindowBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;", "x0", "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;", "fileDownloadHandler", "y0", "Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;", "loadingStatus", "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "z0", "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "memberPriceHandler", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHtmlWindowActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HtmlWindowActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
/* loaded from: classes17.dex */
public final class HtmlWindowActivity extends BaseCompatActivity {

    /* renamed from: w0, reason: from kotlin metadata */
    public ActivityHtmlWindowBinding binding;

    /* renamed from: x0, reason: from kotlin metadata */
    @NotNull
    public final FileDownloadHandler fileDownloadHandler = new FileDownloadHandler();

    /* renamed from: y0, reason: from kotlin metadata */
    @NotNull
    public WebViewLoadingStatus loadingStatus = WebViewLoadingStatus.LOADING;

    /* renamed from: z0, reason: from kotlin metadata */
    @NotNull
    public final MemberPriceHandler memberPriceHandler = new MemberPriceHandler();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WebViewLoadingStatus.values().length];
            try {
                iArr[WebViewLoadingStatus.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WebViewLoadingStatus.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WebViewLoadingStatus.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: I */
    public static final void m51636I(final HtmlWindowActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WebViewExt webViewExt = WebViewExt.INSTANCE;
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this$0.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        OnyxWebView webView = activityHtmlWindowBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        webViewExt.onBackPressed(webView, new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.HtmlWindowActivity$addViewEvents$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                HtmlWindowActivity.this.finish();
            }
        });
    }

    /* renamed from: K */
    public static final void m51637K(HtmlWindowActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this$0.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        LinearLayout loadingLayout = activityHtmlWindowBinding.loadingLayout;
        Intrinsics.checkNotNullExpressionValue(loadingLayout, "loadingLayout");
        ViewExtKt.startAlphaAnimation$default(loadingLayout, 0.0f, 0.0f, 0L, null, 13, null);
    }

    /* renamed from: R */
    public static final void m51638R(HtmlWindowActivity this$0, WebViewLoadingStatus previousStatus, WebViewLoadingStatus newStatus) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(previousStatus, "$previousStatus");
        Intrinsics.checkNotNullParameter(newStatus, "$newStatus");
        this$0.m51647S(previousStatus, newStatus);
    }

    /* renamed from: H */
    public final void m51639H() {
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        ImageView backButton = activityHtmlWindowBinding.backButton;
        Intrinsics.checkNotNullExpressionValue(backButton, "backButton");
        ViewKt.click$default(backButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rzh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HtmlWindowActivity.m51636I(HtmlWindowActivity.this, view);
            }
        }, 1, null);
    }

    /* renamed from: J */
    public final void m51640J() {
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        activityHtmlWindowBinding.getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.qzh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity.m51637K(HtmlWindowActivity.this);
            }
        }, j);
    }

    /* renamed from: L */
    public final void m51641L(final OrderArgs params) {
        StatisticsBundle.INSTANCE.postEvent(new StatisticMemberPayPageClickEvent(NoteTreeBundle.FilterManager.INSTANCE.getQuotaInfo().getDocCountIncludeDustbin()));
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        RxBaseAction.execute$default(new PayAction(supportFragmentManager, params, new PayDialog.PayListener() { // from class: com.onyx.galaxy.note.usercenter.ui.HtmlWindowActivity$handlePay$1
            @Override // com.onyx.android.sdk.pay.view.PayDialog.PayListener
            public void onPayResult(@NotNull PayResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result.isSuccess()) {
                    HtmlWindowActivity.this.m51645P(params.getOrderId());
                } else {
                    HtmlWindowActivity.this.m51644O(params.getOrderId());
                }
            }

            @Override // com.onyx.android.sdk.pay.view.PayDialog.PayListener
            public void onPaymentAgreement() {
                new PolicyDialog(HtmlWindowActivity.this, PolicyType.MEMBER_PAYMENT_AGREEMENT).show();
            }
        }), null, null, null, 7, null);
    }

    /* renamed from: M */
    public final void m51642M() {
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        TextView textView = activityHtmlWindowBinding.titleText;
        String stringExtra = getIntent().getStringExtra("title");
        if (stringExtra == null) {
            stringExtra = "";
        }
        textView.setText(stringExtra);
    }

    /* renamed from: N */
    public final void m51643N() {
        final HtmlWindowActivity$loadWebpage$callback$1 htmlWindowActivity$loadWebpage$callback$1 = new HtmlWindowActivity$loadWebpage$callback$1(this);
        String stringExtra = getIntent().getStringExtra("url");
        if (stringExtra == null) {
            stringExtra = "";
        }
        String stringExtra2 = getIntent().getStringExtra("title");
        String str = stringExtra2 != null ? stringExtra2 : "";
        if (!Boolean.parseBoolean(getIntent().getStringExtra(MessageConst.KEY_HAS_LOADING_CALLBACK))) {
            m51646Q(WebViewLoadingStatus.LOADED);
        }
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        ActivityHtmlWindowBinding activityHtmlWindowBinding2 = null;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        activityHtmlWindowBinding.titleText.setText(str);
        ActivityHtmlWindowBinding activityHtmlWindowBinding3 = this.binding;
        if (activityHtmlWindowBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding3 = null;
        }
        activityHtmlWindowBinding3.webView.setWebViewCallback(htmlWindowActivity$loadWebpage$callback$1);
        ActivityHtmlWindowBinding activityHtmlWindowBinding4 = this.binding;
        if (activityHtmlWindowBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding4 = null;
        }
        activityHtmlWindowBinding4.webView.registerNativeObject("native", htmlWindowActivity$loadWebpage$callback$1);
        ActivityHtmlWindowBinding activityHtmlWindowBinding5 = this.binding;
        if (activityHtmlWindowBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding5 = null;
        }
        activityHtmlWindowBinding5.webView.openWebpage(stringExtra);
        ActivityHtmlWindowBinding activityHtmlWindowBinding6 = this.binding;
        if (activityHtmlWindowBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding6 = null;
        }
        activityHtmlWindowBinding6.webView.setFocusable(true);
        ActivityHtmlWindowBinding activityHtmlWindowBinding7 = this.binding;
        if (activityHtmlWindowBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityHtmlWindowBinding2 = activityHtmlWindowBinding7;
        }
        activityHtmlWindowBinding2.webView.setFocusableInTouchMode(true);
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, null, new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.HtmlWindowActivity$loadWebpage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                HtmlWindowActivity$loadWebpage$callback$1.this.onWebViewTimeout();
            }
        }, null, false, 5, null);
    }

    /* renamed from: O */
    public final void m51644O(final String id) {
        Object obj = new Object(id) { // from class: com.onyx.galaxy.note.usercenter.ui.HtmlWindowActivity$payFail$nativeArgs$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String id;

            {
                this.id = id;
            }

            @NotNull
            public final String getId() {
                return this.id;
            }
        };
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        OnyxWebView webView = activityHtmlWindowBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.ERROR_FOR_PAY, obj, (Function1) null, (Function1) null, 12, (Object) null);
    }

    /* renamed from: P */
    public final void m51645P(final String id) {
        Object obj = new Object(id) { // from class: com.onyx.galaxy.note.usercenter.ui.HtmlWindowActivity$paySuccess$nativeArgs$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String id;

            {
                this.id = id;
            }

            @NotNull
            public final String getId() {
                return this.id;
            }
        };
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        OnyxWebView webView = activityHtmlWindowBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.SUCCESS_FOR_PAY, obj, (Function1) null, (Function1) null, 12, (Object) null);
    }

    /* renamed from: Q */
    public final void m51646Q(final WebViewLoadingStatus newStatus) {
        final WebViewLoadingStatus webViewLoadingStatus = this.loadingStatus;
        this.loadingStatus = newStatus;
        runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.szh
            @Override // java.lang.Runnable
            public final void run() {
                HtmlWindowActivity.m51638R(HtmlWindowActivity.this, webViewLoadingStatus, newStatus);
            }
        });
    }

    @MainThread
    /* renamed from: S */
    public final void m51647S(WebViewLoadingStatus previousStatus, WebViewLoadingStatus newStatus) {
        int i = WhenMappings.$EnumSwitchMapping$0[newStatus.ordinal()];
        ActivityHtmlWindowBinding activityHtmlWindowBinding = null;
        if (i == 1) {
            ActivityHtmlWindowBinding activityHtmlWindowBinding2 = this.binding;
            if (activityHtmlWindowBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityHtmlWindowBinding2 = null;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding2.webView, false);
            ActivityHtmlWindowBinding activityHtmlWindowBinding3 = this.binding;
            if (activityHtmlWindowBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityHtmlWindowBinding3 = null;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding3.timeoutLayoutBinding.getRoot(), false);
            ActivityHtmlWindowBinding activityHtmlWindowBinding4 = this.binding;
            if (activityHtmlWindowBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityHtmlWindowBinding4 = null;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding4.progressLayoutBinding.getRoot(), false);
            ActivityHtmlWindowBinding activityHtmlWindowBinding5 = this.binding;
            if (activityHtmlWindowBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityHtmlWindowBinding = activityHtmlWindowBinding5;
            }
            activityHtmlWindowBinding.loadingLayout.setAlpha(1.0f);
            return;
        }
        if (i == 2) {
            ActivityHtmlWindowBinding activityHtmlWindowBinding6 = this.binding;
            if (activityHtmlWindowBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityHtmlWindowBinding6 = null;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding6.webView, true);
            ActivityHtmlWindowBinding activityHtmlWindowBinding7 = this.binding;
            if (activityHtmlWindowBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityHtmlWindowBinding = activityHtmlWindowBinding7;
            }
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding.timeoutLayoutBinding.getRoot(), false);
            m51640J();
            return;
        }
        if (i != 3) {
            return;
        }
        ActivityHtmlWindowBinding activityHtmlWindowBinding8 = this.binding;
        if (activityHtmlWindowBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding8 = null;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding8.webView, false);
        ActivityHtmlWindowBinding activityHtmlWindowBinding9 = this.binding;
        if (activityHtmlWindowBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding9 = null;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding9.timeoutLayoutBinding.getRoot(), true);
        ActivityHtmlWindowBinding activityHtmlWindowBinding10 = this.binding;
        if (activityHtmlWindowBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityHtmlWindowBinding = activityHtmlWindowBinding10;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(activityHtmlWindowBinding.progressLayoutBinding.getRoot(), false);
        m51640J();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        activityHtmlWindowBinding.backButton.performClick();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063254, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        GlobalBundle.INSTANCE.unregister(this);
        this.fileDownloadHandler.getEventBusHolder().unRegister(this);
        this.fileDownloadHandler.dispose();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDownloadStatus(@NotNull FileDownloadEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Object downloadArgsForJavascript = event.getDownloadArgsForJavascript();
        ActivityHtmlWindowBinding activityHtmlWindowBinding = this.binding;
        if (activityHtmlWindowBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityHtmlWindowBinding = null;
        }
        OnyxWebView webView = activityHtmlWindowBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, "onEvent", downloadArgsForJavascript, (Function1) null, (Function1) null, 12, (Object) null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChanged(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Boolean valueOf = Boolean.valueOf(event.getConnected());
        if (!valueOf.booleanValue()) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.booleanValue();
            m51643N();
        }
    }
}
