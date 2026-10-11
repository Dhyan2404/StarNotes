package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.common.cloud.service.WebpageService;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.databinding.FragmentMessageCenterBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.usercenter.p049ui.MessageCenterFragment;
import com.onyx.galaxy.note.utils.WebViewExt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "root", "Landroid/view/View;", "setContentView", "onDestroyView", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onNetworkChanged", "o0", "t0", "r0", "u0", "Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class MessageCenterFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentMessageCenterBinding binding;

    /* renamed from: p0 */
    public static final void m51721p0(MessageCenterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51727u0();
    }

    /* renamed from: q0 */
    public static final void m51722q0(MessageCenterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this$0.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        OnyxWebView webView = fragmentMessageCenterBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, "window.onReadAll", (Object) null, (Function1) null, (Function1) null, 14, (Object) null);
    }

    /* renamed from: s0 */
    public static final void m51723s0(MessageCenterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this$0.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        LinearLayout loadingView = fragmentMessageCenterBinding.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 0.0f, 0L, null, 13, null);
    }

    /* renamed from: o0 */
    public final void m51724o0() {
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this.binding;
        FragmentMessageCenterBinding fragmentMessageCenterBinding2 = null;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        fragmentMessageCenterBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pmj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessageCenterFragment.m51721p0(MessageCenterFragment.this, view);
            }
        });
        FragmentMessageCenterBinding fragmentMessageCenterBinding3 = this.binding;
        if (fragmentMessageCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding3 = null;
        }
        fragmentMessageCenterBinding3.readAllButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qmj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessageCenterFragment.m51722q0(MessageCenterFragment.this, view);
            }
        });
        FragmentMessageCenterBinding fragmentMessageCenterBinding4 = this.binding;
        if (fragmentMessageCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding4 = null;
        }
        fragmentMessageCenterBinding4.getRoot().setFocusableInTouchMode(true);
        FragmentMessageCenterBinding fragmentMessageCenterBinding5 = this.binding;
        if (fragmentMessageCenterBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding5 = null;
        }
        fragmentMessageCenterBinding5.getRoot().requestFocus();
        FragmentMessageCenterBinding fragmentMessageCenterBinding6 = this.binding;
        if (fragmentMessageCenterBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMessageCenterBinding2 = fragmentMessageCenterBinding6;
        }
        View root = fragmentMessageCenterBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.addBackPressListener(root, new MessageCenterFragment$addViewEvents$3(this));
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063249, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        fragmentMessageCenterBinding.webView.destroy();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChanged(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            FragmentMessageCenterBinding fragmentMessageCenterBinding = this.binding;
            if (fragmentMessageCenterBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentMessageCenterBinding = null;
            }
            if (ViewKt.isVisible(fragmentMessageCenterBinding.webView)) {
                return;
            }
            m51726t0();
        }
    }

    /* renamed from: r0 */
    public final void m51725r0() {
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        fragmentMessageCenterBinding.getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.rmj
            @Override // java.lang.Runnable
            public final void run() {
                MessageCenterFragment.m51723s0(MessageCenterFragment.this);
            }
        }, j);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment
    @NotNull
    public View setContentView(@NotNull LayoutInflater inflater, @Nullable ViewGroup root) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentMessageCenterBinding inflate = FragmentMessageCenterBinding.inflate(inflater, root, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentMessageCenterBinding fragmentMessageCenterBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        m51724o0();
        m51726t0();
        FragmentMessageCenterBinding fragmentMessageCenterBinding2 = this.binding;
        if (fragmentMessageCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMessageCenterBinding = fragmentMessageCenterBinding2;
        }
        View root2 = fragmentMessageCenterBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        return root2;
    }

    /* renamed from: t0 */
    public final void m51726t0() {
        final MessageCenterFragment$loadWebpage$callback$1 messageCenterFragment$loadWebpage$callback$1 = new MessageCenterFragment$loadWebpage$callback$1(this);
        String messageCenterService = WebpageService.INSTANCE.getMessageCenterService();
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this.binding;
        FragmentMessageCenterBinding fragmentMessageCenterBinding2 = null;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        fragmentMessageCenterBinding.webView.setWebViewCallback(messageCenterFragment$loadWebpage$callback$1);
        FragmentMessageCenterBinding fragmentMessageCenterBinding3 = this.binding;
        if (fragmentMessageCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding3 = null;
        }
        fragmentMessageCenterBinding3.webView.registerNativeObject("native", messageCenterFragment$loadWebpage$callback$1);
        FragmentMessageCenterBinding fragmentMessageCenterBinding4 = this.binding;
        if (fragmentMessageCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding4 = null;
        }
        fragmentMessageCenterBinding4.webView.openWebpage(messageCenterService);
        FragmentMessageCenterBinding fragmentMessageCenterBinding5 = this.binding;
        if (fragmentMessageCenterBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMessageCenterBinding2 = fragmentMessageCenterBinding5;
        }
        LinearLayout loadingView = fragmentMessageCenterBinding2.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 1.0f, 0L, null, 13, null);
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, null, new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MessageCenterFragment$loadWebpage$1
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
                MessageCenterFragment$loadWebpage$callback$1.this.onWebViewTimeout();
            }
        }, null, false, 5, null);
    }

    /* renamed from: u0 */
    public final void m51727u0() {
        WebViewExt webViewExt = WebViewExt.INSTANCE;
        FragmentMessageCenterBinding fragmentMessageCenterBinding = this.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        OnyxWebView webView = fragmentMessageCenterBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        webViewExt.onBackPressed(webView, new Function0<Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.MessageCenterFragment$onBackPressed$1
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
                FragmentKt.finishActivity(MessageCenterFragment.this);
            }
        });
    }
}
