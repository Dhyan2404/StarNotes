package com.onyx.galaxy.note.usercenter.viewmodel;

import android.view.View;
import android.widget.ImageView;
import androidx.databinding.BindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.bumptech.glide.Glide;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringList;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyMethods;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterEvents;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b(\u0010)J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0006R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001d0\u00178\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010\u001bR\"\u0010'\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "getCurrentAccount", "Landroid/view/View;", "view", "", "modifyNickname", "changeAvatar", "bindOrUnbindPhone", "bindOrUnbindEmail", "bindOrUnbindWechat", "bindOrUnbindHuawei", "resetPassword", "logOut", "logOff", "cancelUserAgreement", "copyAccountId", "", "getCountOfBondSocialAccount", "Lcom/onyx/android/sdk/base/extension/StringList;", "getSupportedVerifyMethods", "reloadAccountInfo", "Landroidx/lifecycle/MutableLiveData;", "i", "Landroidx/lifecycle/MutableLiveData;", "getAccount", "()Landroidx/lifecycle/MutableLiveData;", LoginAuthConst.ACCOUNT_AUTH, "", "j", "getEvents", "events", C4921e.f26537n, "I", "getTriggerFlag", "()I", "setTriggerFlag", "(I)V", "triggerFlag", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAccountCenterViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCenterViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"})
/* loaded from: classes9.dex */
public final class AccountCenterViewModel extends BaseViewModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<OnyxAccountModel> account = new MutableLiveData<>();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> events = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    public int triggerFlag = 1000;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;", "", "()V", "loadIntoImageView", "", "imageView", "Landroid/widget/ImageView;", "url", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @BindingAdapter({"url"})
        @JvmStatic
        public final void loadIntoImageView(@NotNull ImageView imageView, @Nullable String url) {
            Intrinsics.checkNotNullParameter(imageView, "imageView");
            Glide.with(imageView).load(url).placeholder(C10651R.drawable.icon_avatar).into(imageView);
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12913a<T, R> implements Function {

        /* renamed from: e */
        public static final C12913a<T, R> f62523e = new C12913a<>();

        /* renamed from: a */
        public final void m51887a(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m51887a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    @BindingAdapter({"url"})
    @JvmStatic
    public static final void loadIntoImageView(@NotNull ImageView imageView, @Nullable String str) {
        INSTANCE.loadIntoImageView(imageView, str);
    }

    public final void bindOrUnbindEmail(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        OnyxAccountModel currentAccount = getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        if (currentAccount.getEmail() == null) {
            this.events.postValue(UserCenterEvents.BIND_EMAIL);
        } else {
            this.events.postValue(UserCenterEvents.REBIND_EMAIL);
        }
    }

    public final void bindOrUnbindHuawei(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        OnyxAccountModel currentAccount = getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        if (currentAccount.getHuawei() == null) {
            this.events.postValue(UserCenterEvents.BIND_HUAWEI);
        } else {
            this.events.postValue(UserCenterEvents.UNBIND_HUAWEI);
        }
    }

    public final void bindOrUnbindPhone(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        OnyxAccountModel currentAccount = getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        if (currentAccount.getPhone() == null) {
            this.events.postValue(UserCenterEvents.BIND_PHONE);
        } else {
            this.events.postValue(UserCenterEvents.REBIND_PHONE);
        }
    }

    public final void bindOrUnbindWechat(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        OnyxAccountModel currentAccount = getCurrentAccount();
        if (currentAccount == null) {
            return;
        }
        if (currentAccount.getWechat() == null) {
            this.events.postValue(UserCenterEvents.BIND_WECHAT);
        } else {
            this.events.postValue(UserCenterEvents.UNBIND_WECHAT);
        }
    }

    public final void cancelUserAgreement(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.events.postValue(UserCenterEvents.CANCEL_AGREEMENT);
    }

    public final void changeAvatar(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.events.postValue(UserCenterEvents.CHANGE_AVATAR);
    }

    public final void copyAccountId(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        OnyxAccountModel currentAccount = getCurrentAccount();
        ContextKt.copyToClipboard(currentAccount != null ? currentAccount.getDisplayId() : null);
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.user_account_id_copied, false, 2, (Object) null);
    }

    @NotNull
    public final MutableLiveData<OnyxAccountModel> getAccount() {
        return this.account;
    }

    public final int getCountOfBondSocialAccount() {
        OnyxAccountModel currentAccount = getCurrentAccount();
        int i = (currentAccount == null || currentAccount.getPhone() == null) ? 0 : 1;
        OnyxAccountModel currentAccount2 = getCurrentAccount();
        if (currentAccount2 != null && currentAccount2.getEmail() != null) {
            i++;
        }
        OnyxAccountModel currentAccount3 = getCurrentAccount();
        if (currentAccount3 != null && currentAccount3.getWechat() != null) {
            i++;
        }
        OnyxAccountModel currentAccount4 = getCurrentAccount();
        return (currentAccount4 == null || currentAccount4.getHuawei() == null) ? i : i + 1;
    }

    @Nullable
    public final OnyxAccountModel getCurrentAccount() {
        OnyxAccountModel value = this.account.getValue();
        return value == null ? AccountDataBundle.INSTANCE.getOnyxAccount() : value;
    }

    @NotNull
    public final MutableLiveData<String> getEvents() {
        return this.events;
    }

    @NotNull
    public final StringList getSupportedVerifyMethods() {
        OnyxAccountModel currentAccount;
        StringList stringList = new StringList();
        OnyxAccountModel currentAccount2 = getCurrentAccount();
        if (currentAccount2 != null && currentAccount2.getPhone() != null) {
            stringList.add(AccountVerifyMethods.PHONE);
        }
        OnyxAccountModel currentAccount3 = getCurrentAccount();
        if (currentAccount3 != null && currentAccount3.getEmail() != null) {
            stringList.add(AccountVerifyMethods.EMAIL);
        }
        if (!(!stringList.isEmpty()) && (currentAccount = getCurrentAccount()) != null && currentAccount.getWechat() != null) {
            stringList.add(AccountVerifyMethods.WECHAT);
        }
        return stringList;
    }

    public final int getTriggerFlag() {
        return this.triggerFlag;
    }

    public final void logOff(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.events.postValue(UserCenterEvents.LOG_OFF);
    }

    public final void logOut(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.events.postValue(UserCenterEvents.LOG_OUT);
    }

    public final void modifyNickname(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.events.postValue(UserCenterEvents.MODIFY_NICKNAME);
    }

    public final void reloadAccountInfo() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> onErrorReturn = new ReloadAccountAction().build().observeOn(AndroidSchedulers.mainThread()).onErrorReturn(C12913a.f62523e);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, onErrorReturn, null, null, 3, null);
    }

    public final void resetPassword(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.events.postValue(UserCenterEvents.RESET_PASSWORD);
    }

    public final void setTriggerFlag(int i) {
        this.triggerFlag = i;
    }
}
