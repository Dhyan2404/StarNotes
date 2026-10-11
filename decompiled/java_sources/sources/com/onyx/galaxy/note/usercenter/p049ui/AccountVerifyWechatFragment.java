package com.onyx.galaxy.note.usercenter.p049ui;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.event.LoadQrCodeEvent;
import com.onyx.galaxy.note.account.event.RefreshQrCodeEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyWechatBinding;
import com.onyx.galaxy.note.p048ui.view.WechatLoadingDrawable;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel;
import com.onyx.galaxy.note.utils.AutoCloseWebView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "onDestroyView", "onResume", "n0", "", NotificationCompat.CATEGORY_EVENT, "m0", "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;", "e1", "Lkotlin/Lazy;", "l0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;", "wechatViewModel", "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;", "f1", "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;", "loadingDrawable", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyWechatFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public LayoutAccountVerifyWechatBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy wechatViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final WechatLoadingDrawable loadingDrawable;

    public AccountVerifyWechatFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountVerifyWechatViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.AccountVerifyWechatFragment$wechatViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountVerifyWechatViewModel invoke() {
                FragmentActivity requireActivity = AccountVerifyWechatFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountVerifyWechatViewModel) new ViewModelProvider(requireActivity).get(AccountVerifyWechatViewModel.class);
            }
        });
        this.wechatViewModel = lazy;
        this.loadingDrawable = new WechatLoadingDrawable();
    }

    /* renamed from: l0 */
    public final AccountVerifyWechatViewModel m51572l0() {
        return (AccountVerifyWechatViewModel) this.wechatViewModel.getValue();
    }

    /* renamed from: m0 */
    public final void m51573m0(Object event) {
        if (event instanceof VerifySuccessEvent) {
            GlobalBundle.INSTANCE.postEvent(new VerifySuccessEvent());
            m51572l0().reset();
            return;
        }
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding = null;
        if (!(event instanceof RefreshQrCodeEvent)) {
            if (event instanceof LoadQrCodeEvent) {
                LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding2 = this.binding;
                if (layoutAccountVerifyWechatBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    layoutAccountVerifyWechatBinding = layoutAccountVerifyWechatBinding2;
                }
                LoadQrCodeEvent loadQrCodeEvent = (LoadQrCodeEvent) event;
                layoutAccountVerifyWechatBinding.webWidget.loadUrlWithHeader(loadQrCodeEvent.getUrl(), loadQrCodeEvent.getHeaders());
                return;
            }
            return;
        }
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding3 = this.binding;
        if (layoutAccountVerifyWechatBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding3 = null;
        }
        RequestBuilder error = Glide.with(layoutAccountVerifyWechatBinding3.getRoot()).load(((RefreshQrCodeEvent) event).getUrl()).placeholder(this.loadingDrawable).error((Drawable) this.loadingDrawable);
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding4 = this.binding;
        if (layoutAccountVerifyWechatBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyWechatBinding = layoutAccountVerifyWechatBinding4;
        }
        error.into(layoutAccountVerifyWechatBinding.qrCodeImage);
    }

    /* renamed from: n0 */
    public final void m51574n0() {
        GlobalBundle.INSTANCE.register(m51572l0());
        EventBusHolderKt.ensureRegister(VerifyCodeBundle.INSTANCE.getEventBus(), m51572l0());
        MutableLiveData<Object> event = m51572l0().getEvent();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        DataBindingKt.observeOnce(event, viewLifecycleOwner, new AccountVerifyWechatFragment$initLayout$1(this));
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding = this.binding;
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding2 = null;
        if (layoutAccountVerifyWechatBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding = null;
        }
        AutoCloseWebView webView = layoutAccountVerifyWechatBinding.webWidget.getWebView();
        if (webView != null) {
            webView.enableAutoClose(false);
        }
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding3 = this.binding;
        if (layoutAccountVerifyWechatBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding3 = null;
        }
        layoutAccountVerifyWechatBinding3.qrCodeImage.setImageDrawable(this.loadingDrawable);
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding4 = this.binding;
        if (layoutAccountVerifyWechatBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyWechatBinding2 = layoutAccountVerifyWechatBinding4;
        }
        layoutAccountVerifyWechatBinding2.qrCodeImage.performClick();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        LayoutAccountVerifyWechatBinding inflate = LayoutAccountVerifyWechatBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding2 = this.binding;
        if (layoutAccountVerifyWechatBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding2 = null;
        }
        layoutAccountVerifyWechatBinding2.setWechatViewModel(m51572l0());
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding3 = this.binding;
        if (layoutAccountVerifyWechatBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding3 = null;
        }
        layoutAccountVerifyWechatBinding3.executePendingBindings();
        m51574n0();
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding4 = this.binding;
        if (layoutAccountVerifyWechatBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutAccountVerifyWechatBinding = layoutAccountVerifyWechatBinding4;
        }
        View root = layoutAccountVerifyWechatBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        GlobalBundle.INSTANCE.unregister(m51572l0());
        VerifyCodeBundle verifyCodeBundle = VerifyCodeBundle.INSTANCE;
        verifyCodeBundle.releaseWechatTimer();
        EventBusHolderKt.ensureUnRegister(verifyCodeBundle.getEventBus(), m51572l0());
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding = this.binding;
        if (layoutAccountVerifyWechatBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding = null;
        }
        AutoCloseWebView webView = layoutAccountVerifyWechatBinding.webWidget.getWebView();
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroyView();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LayoutAccountVerifyWechatBinding layoutAccountVerifyWechatBinding = this.binding;
        if (layoutAccountVerifyWechatBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutAccountVerifyWechatBinding = null;
        }
        layoutAccountVerifyWechatBinding.getRoot().requestLayout();
    }
}
