package com.onyx.galaxy.note.usercenter.p049ui;

import android.view.View;
import android.webkit.JavascriptInterface;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.ReloadMessageEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.FragmentMessageCenterBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback;
import com.onyx.galaxy.note.usercenter.p049ui.MessageCenterFragment;
import com.onyx.galaxy.note.usercenter.p049ui.MessageCenterFragment$loadWebpage$callback$1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0004\u001a\u00020\u0002H\u0017J\b\u0010\u0005\u001a\u00020\u0002H\u0007J\b\u0010\u0006\u001a\u00020\u0002H\u0017J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¨\u0006\u000b"}, m61528d2 = {"com/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1", "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;", "", "navigateBack", "onDocumentFinishLoading", "onMessageRead", "onWebViewTimeout", "onSSLDateInvalid", "", "subTitleRes", C6997f.f39671c, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MessageCenterFragment$loadWebpage$callback$1 implements OnyxWebViewCallback {

    /* renamed from: a */
    public final /* synthetic */ MessageCenterFragment f62448a;

    public MessageCenterFragment$loadWebpage$callback$1(MessageCenterFragment messageCenterFragment) {
        this.f62448a = messageCenterFragment;
    }

    /* renamed from: d */
    public static final void m51731d(MessageCenterFragment this$0) {
        FragmentMessageCenterBinding fragmentMessageCenterBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentMessageCenterBinding = this$0.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        fragmentMessageCenterBinding.backButton.performClick();
    }

    /* renamed from: e */
    public static final void m51732e(MessageCenterFragment this$0) {
        FragmentMessageCenterBinding fragmentMessageCenterBinding;
        FragmentMessageCenterBinding fragmentMessageCenterBinding2;
        FragmentMessageCenterBinding fragmentMessageCenterBinding3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentMessageCenterBinding = this$0.binding;
        FragmentMessageCenterBinding fragmentMessageCenterBinding4 = null;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMessageCenterBinding.titleBar, false);
        fragmentMessageCenterBinding2 = this$0.binding;
        if (fragmentMessageCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMessageCenterBinding2.webView, true);
        fragmentMessageCenterBinding3 = this$0.binding;
        if (fragmentMessageCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMessageCenterBinding4 = fragmentMessageCenterBinding3;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMessageCenterBinding4.webViewTimeoutLayout.getRoot(), false);
    }

    /* renamed from: g */
    public static final void m51733g(MessageCenterFragment this$0, int i) {
        FragmentMessageCenterBinding fragmentMessageCenterBinding;
        FragmentMessageCenterBinding fragmentMessageCenterBinding2;
        FragmentMessageCenterBinding fragmentMessageCenterBinding3;
        FragmentMessageCenterBinding fragmentMessageCenterBinding4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentMessageCenterBinding = this$0.binding;
        FragmentMessageCenterBinding fragmentMessageCenterBinding5 = null;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMessageCenterBinding.titleBar, true);
        fragmentMessageCenterBinding2 = this$0.binding;
        if (fragmentMessageCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding2 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMessageCenterBinding2.webView, false);
        fragmentMessageCenterBinding3 = this$0.binding;
        if (fragmentMessageCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(fragmentMessageCenterBinding3.webViewTimeoutLayout.getRoot(), true);
        fragmentMessageCenterBinding4 = this$0.binding;
        if (fragmentMessageCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMessageCenterBinding5 = fragmentMessageCenterBinding4;
        }
        fragmentMessageCenterBinding5.webViewTimeoutLayout.tvErrorSubTitle.setText(ResManager.INSTANCE.getStringSafely(i));
    }

    /* renamed from: f */
    public final void m51734f(final int subTitleRes) {
        FragmentMessageCenterBinding fragmentMessageCenterBinding;
        fragmentMessageCenterBinding = this.f62448a.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        View root = fragmentMessageCenterBinding.getRoot();
        final MessageCenterFragment messageCenterFragment = this.f62448a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.tmj
            @Override // java.lang.Runnable
            public final void run() {
                MessageCenterFragment$loadWebpage$callback$1.m51733g(MessageCenterFragment.this, subTitleRes);
            }
        });
        this.f62448a.m51725r0();
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    @Nullable
    public String getHeaders() {
        return OnyxWebViewCallback.DefaultImpls.getHeaders(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public int getThemeCode() {
        return OnyxWebViewCallback.DefaultImpls.getThemeCode(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void navigate(@NotNull String str, @NotNull String str2) {
        OnyxWebViewCallback.DefaultImpls.navigate(this, str, str2);
    }

    @JavascriptInterface
    public final void navigateBack() {
        FragmentActivity requireActivity = this.f62448a.requireActivity();
        final MessageCenterFragment messageCenterFragment = this.f62448a;
        requireActivity.runOnUiThread(new Runnable() { // from class: com.sunia.HTREnginev2.umj
            @Override // java.lang.Runnable
            public final void run() {
                MessageCenterFragment$loadWebpage$callback$1.m51731d(MessageCenterFragment.this);
            }
        });
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDataLoaded() {
        OnyxWebViewCallback.DefaultImpls.onDataLoaded(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onDocumentFinishLoading() {
        FragmentMessageCenterBinding fragmentMessageCenterBinding;
        fragmentMessageCenterBinding = this.f62448a.binding;
        if (fragmentMessageCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMessageCenterBinding = null;
        }
        View root = fragmentMessageCenterBinding.getRoot();
        final MessageCenterFragment messageCenterFragment = this.f62448a;
        root.post(new Runnable() { // from class: com.sunia.HTREnginev2.smj
            @Override // java.lang.Runnable
            public final void run() {
                MessageCenterFragment$loadWebpage$callback$1.m51732e(MessageCenterFragment.this);
            }
        });
        this.f62448a.m51725r0();
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onDocumentStartLoading() {
        OnyxWebViewCallback.DefaultImpls.onDocumentStartLoading(this);
    }

    @JavascriptInterface
    public final void onMessageRead() {
        AccountDataBundle.INSTANCE.getEventBusHolder().post(ReloadMessageEvent.INSTANCE);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onReloadAccount() {
        OnyxWebViewCallback.DefaultImpls.onReloadAccount(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    public void onSSLDateInvalid() {
        m51734f(C10651R.string.user_tip_network_ssl_date_invalid);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onTokenExpired() {
        OnyxWebViewCallback.DefaultImpls.onTokenExpired(this);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void onWebViewTimeout() {
        m51734f(C10651R.string.user_tip_bad_network);
    }

    @Override // com.onyx.galaxy.note.p048ui.view.OnyxWebViewCallback
    @JavascriptInterface
    public void reportStatistic(@NotNull String str) {
        OnyxWebViewCallback.DefaultImpls.reportStatistic(this, str);
    }
}
