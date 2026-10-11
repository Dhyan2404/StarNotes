package com.onyx.galaxy.note.usercenter.p049ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.event.ReloadMessageEvent;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.cloud.service.WebpageService;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.constant.WebJSConstants;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentUserCenterBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.usercenter.handler.MemberPriceHandler;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterFragment;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0013H\u0007J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\b\u0010 \u001a\u00020\u0004H\u0002R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "root", "Landroid/view/View;", "setContentView", "onDestroyView", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onNetworkChanged", "Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;", "onMessageReload", "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;", "onVipRoleChange", "p0", "m0", "s0", "t0", "", "title", "", "highlight", "r0", "q0", "u0", "v0", "Lcom/onyx/galaxy/note/databinding/FragmentUserCenterBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentUserCenterBinding;", "binding", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "e1", "Lkotlin/Lazy;", "o0", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "f1", "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;", "memberPriceHandler", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUserCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterFragment\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,266:1\n32#2,5:267\n32#2,5:272\n32#2,5:277\n32#2,5:282\n32#2,5:287\n*S KotlinDebug\n*F\n+ 1 UserCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterFragment\n*L\n66#1:267,5\n106#1:272,5\n109#1:277,5\n121#1:282,5\n124#1:287,5\n*E\n"})
/* loaded from: classes17.dex */
public final class UserCenterFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentUserCenterBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final MemberPriceHandler memberPriceHandler;

    public UserCenterFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.UserCenterFragment$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                FragmentActivity requireActivity = UserCenterFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (AccountCenterViewModel) FragmentActivityKt.getViewModel(requireActivity, AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
        this.memberPriceHandler = new MemberPriceHandler();
    }

    /* renamed from: n0 */
    public static final void m51816n0(UserCenterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.finishActivity(this$0);
    }

    /* renamed from: m0 */
    public final void m51817m0() {
        FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        fragmentUserCenterBinding.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fyn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserCenterFragment.m51816n0(UserCenterFragment.this, view);
            }
        });
    }

    /* renamed from: o0 */
    public final AccountCenterViewModel m51818o0() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063242, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this);
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroy();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        fragmentUserCenterBinding.webView.destroy();
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMessageReload(@NotNull ReloadMessageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        OnyxWebView webView = fragmentUserCenterBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.REFRESH_MESSAGE_STATUS, (Object) null, (Function1) null, (Function1) null, 14, (Object) null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkChanged(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
            if (fragmentUserCenterBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentUserCenterBinding = null;
            }
            if (ViewKt.isVisible(fragmentUserCenterBinding.webView)) {
                return;
            }
            m51820q0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVipRoleChange(@NotNull VipRoleChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
            if (fragmentUserCenterBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentUserCenterBinding = null;
            }
            OnyxWebView webView = fragmentUserCenterBinding.webView;
            Intrinsics.checkNotNullExpressionValue(webView, "webView");
            OnyxWebView.executeJavascriptSentence$default(webView, WebJSConstants.REFRESH_USER_SHIP, (Object) null, (Function1) null, (Function1) null, 14, (Object) null);
        }
    }

    /* renamed from: p0 */
    public final void m51819p0() {
        m51822s0();
    }

    /* renamed from: q0 */
    public final void m51820q0() {
        final UserCenterFragment$loadWebpage$callback$1 userCenterFragment$loadWebpage$callback$1 = new UserCenterFragment$loadWebpage$callback$1(this);
        String userCenterService = WebpageService.INSTANCE.getUserCenterService();
        FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
        FragmentUserCenterBinding fragmentUserCenterBinding2 = null;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        fragmentUserCenterBinding.webView.setWebViewCallback(userCenterFragment$loadWebpage$callback$1);
        FragmentUserCenterBinding fragmentUserCenterBinding3 = this.binding;
        if (fragmentUserCenterBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding3 = null;
        }
        fragmentUserCenterBinding3.webView.registerNativeObject("native", userCenterFragment$loadWebpage$callback$1);
        FragmentUserCenterBinding fragmentUserCenterBinding4 = this.binding;
        if (fragmentUserCenterBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding4 = null;
        }
        fragmentUserCenterBinding4.webView.openWebpage(userCenterService);
        FragmentUserCenterBinding fragmentUserCenterBinding5 = this.binding;
        if (fragmentUserCenterBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding2 = fragmentUserCenterBinding5;
        }
        LinearLayout loadingView = fragmentUserCenterBinding2.loadingView;
        Intrinsics.checkNotNullExpressionValue(loadingView, "loadingView");
        ViewExtKt.startAlphaAnimation$default(loadingView, 0.0f, 1.0f, 0L, null, 13, null);
        NetworkCheckAction.Companion.checkNetwork$default(NetworkCheckAction.INSTANCE, null, new Function1<Throwable, Unit>() { // from class: com.onyx.galaxy.note.usercenter.ui.UserCenterFragment$loadWebpage$1
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
                UserCenterFragment$loadWebpage$callback$1.this.onWebViewTimeout();
            }
        }, null, false, 5, null);
    }

    /* renamed from: r0 */
    public final void m51821r0(final String title, final boolean highlight) {
        Object obj = new Object(title, highlight) { // from class: com.onyx.galaxy.note.usercenter.ui.UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final String title;

            /* renamed from: b, reason: from kotlin metadata */
            public final boolean highlight;

            {
                this.title = title;
                this.highlight = highlight;
            }

            public final boolean getHighlight() {
                return this.highlight;
            }

            @NotNull
            public final String getTitle() {
                return this.title;
            }
        };
        FragmentUserCenterBinding fragmentUserCenterBinding = this.binding;
        if (fragmentUserCenterBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding = null;
        }
        OnyxWebView webView = fragmentUserCenterBinding.webView;
        Intrinsics.checkNotNullExpressionValue(webView, "webView");
        OnyxWebView.executeJavascriptSentence$default(webView, "window.setAccountButtonState", obj, (Function1) null, (Function1) null, 12, (Object) null);
    }

    /* renamed from: s0 */
    public final void m51822s0() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        if (onyxAccount == null) {
            return;
        }
        String accountBindPrimaryType = AppConfigManager.INSTANCE.getAccountBindPrimaryType();
        FragmentUserCenterBinding fragmentUserCenterBinding = null;
        if ((onyxAccount.getPhone() == null) && Intrinsics.areEqual(accountBindPrimaryType, "phone")) {
            FragmentUserCenterBinding fragmentUserCenterBinding2 = this.binding;
            if (fragmentUserCenterBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentUserCenterBinding2 = null;
            }
            fragmentUserCenterBinding2.accountSettingText.setText(C10651R.string.user_tip_go_to_bind_phone);
            FragmentUserCenterBinding fragmentUserCenterBinding3 = this.binding;
            if (fragmentUserCenterBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentUserCenterBinding = fragmentUserCenterBinding3;
            }
            TextView accountSettingText = fragmentUserCenterBinding.accountSettingText;
            Intrinsics.checkNotNullExpressionValue(accountSettingText, "accountSettingText");
            ViewKt.setTextColorResource(accountSettingText, C10651R.color.error_200);
            return;
        }
        if ((onyxAccount.getEmail() == null) && Intrinsics.areEqual(accountBindPrimaryType, "email")) {
            FragmentUserCenterBinding fragmentUserCenterBinding4 = this.binding;
            if (fragmentUserCenterBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentUserCenterBinding4 = null;
            }
            fragmentUserCenterBinding4.accountSettingText.setText(C10651R.string.user_tip_go_to_bind_email);
            FragmentUserCenterBinding fragmentUserCenterBinding5 = this.binding;
            if (fragmentUserCenterBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentUserCenterBinding = fragmentUserCenterBinding5;
            }
            TextView accountSettingText2 = fragmentUserCenterBinding.accountSettingText;
            Intrinsics.checkNotNullExpressionValue(accountSettingText2, "accountSettingText");
            ViewKt.setTextColorResource(accountSettingText2, C10651R.color.error_200);
            return;
        }
        FragmentUserCenterBinding fragmentUserCenterBinding6 = this.binding;
        if (fragmentUserCenterBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentUserCenterBinding6 = null;
        }
        fragmentUserCenterBinding6.accountSettingText.setText(C10651R.string.user_title_account_setting);
        FragmentUserCenterBinding fragmentUserCenterBinding7 = this.binding;
        if (fragmentUserCenterBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding = fragmentUserCenterBinding7;
        }
        TextView accountSettingText3 = fragmentUserCenterBinding.accountSettingText;
        Intrinsics.checkNotNullExpressionValue(accountSettingText3, "accountSettingText");
        ViewKt.setTextColorResource(accountSettingText3, C10651R.color.color_user_text_light);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment
    @NotNull
    public View setContentView(@NotNull LayoutInflater inflater, @Nullable ViewGroup root) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentUserCenterBinding inflate = FragmentUserCenterBinding.inflate(inflater, root, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        FragmentUserCenterBinding fragmentUserCenterBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.setLifecycleOwner(getViewLifecycleOwner());
        m51819p0();
        m51817m0();
        m51820q0();
        FragmentUserCenterBinding fragmentUserCenterBinding2 = this.binding;
        if (fragmentUserCenterBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentUserCenterBinding = fragmentUserCenterBinding2;
        }
        View root2 = fragmentUserCenterBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        return root2;
    }

    /* renamed from: t0 */
    public final void m51823t0() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        if (onyxAccount == null) {
            return;
        }
        String accountBindPrimaryType = AppConfigManager.INSTANCE.getAccountBindPrimaryType();
        if ((onyxAccount.getPhone() == null) && Intrinsics.areEqual(accountBindPrimaryType, "phone")) {
            m51821r0(ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_go_to_bind_phone), true);
            return;
        }
        if ((onyxAccount.getEmail() == null) && Intrinsics.areEqual(accountBindPrimaryType, "email")) {
            m51821r0(ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_go_to_bind_email), true);
        } else {
            m51821r0(ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_account_setting), false);
        }
    }

    /* renamed from: u0 */
    public final void m51824u0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(m51818o0().getTriggerFlag()));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_ACCOUNT_CENTER_CLICK, linkedHashMap));
    }

    /* renamed from: v0 */
    public final void m51825v0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(m51818o0().getTriggerFlag()));
        linkedHashMap.put("user_tag", Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(AccountDataBundle.INSTANCE.isNewUser()))));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_JOIN_VIP_CLICK, linkedHashMap));
    }
}
