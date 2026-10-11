package com.onyx.galaxy.note.usercenter.viewmodel;

import android.view.View;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.PasswordResetAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterEvents;
import com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b:\u0010;J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u000e\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012R%\u0010\"\u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R%\u0010%\u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c8\u0006¢\u0006\f\n\u0004\b#\u0010\u001f\u001a\u0004\b$\u0010!R\"\u0010(\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010-\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010'\u001a\u0004\b-\u0010)\"\u0004\b.\u0010+R%\u00101\u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c8\u0006¢\u0006\f\n\u0004\b/\u0010\u001f\u001a\u0004\b0\u0010!R\u001d\u00107\u001a\b\u0012\u0004\u0012\u00020\u0002028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001d\u00109\u001a\b\u0012\u0004\u0012\u00020\u000b028\u0006¢\u0006\f\n\u0004\b8\u00104\u001a\u0004\b9\u00106¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "getTitle", "Landroid/view/View;", "view", "", "toggleNewPasswordVisibility", "toggleConfirmPasswordVisibility", "resetPassword", C6997f.f39671c, "", "e", "i", Constants.STRING_SIG, "getPurpose", "()Ljava/lang/String;", "setPurpose", "(Ljava/lang/String;)V", AccountVerifyPurpose.KEY_PURPOSE, "j", "getSocialAccount", "setSocialAccount", "socialAccount", C4921e.f26537n, "getToken", "setToken", "token", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "l", "Landroidx/lifecycle/MutableLiveData;", "getNewPassword", "()Landroidx/lifecycle/MutableLiveData;", "newPassword", "m", "getConfirmPassword", "confirmPassword", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "isNewPasswordVisible", Constants.BOOLEAN_VALUE_SIG, "setNewPasswordVisible", "(Z)V", C4921e.f26528e, "isConfirmPasswordVisible", "setConfirmPasswordVisible", "p", "getEvents", "events", "Landroidx/lifecycle/LiveData;", "q", "Landroidx/lifecycle/LiveData;", "getErrorText", "()Landroidx/lifecycle/LiveData;", "errorText", "r", "isNextEnabled", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPasswordResetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordResetViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,121:1\n1#2:122\n214#3:123\n*S KotlinDebug\n*F\n+ 1 PasswordResetViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel\n*L\n83#1:123\n*E\n"})
/* loaded from: classes9.dex */
public final class PasswordResetViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String purpose = "none";

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String socialAccount = "";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String token = "";

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> newPassword;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> confirmPassword;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isNewPasswordVisible;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean isConfirmPasswordVisible;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> events;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> errorText;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isNextEnabled;

    public PasswordResetViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>("");
        this.newPassword = mutableLiveData;
        this.confirmPassword = new MutableLiveData<>("");
        this.events = new MutableLiveData<>("");
        LiveData<String> switchMap = Transformations.switchMap(mutableLiveData, new Function1<String, LiveData<String>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel$errorText$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<String> invoke(String str) {
                MutableLiveData<String> confirmPassword = PasswordResetViewModel.this.getConfirmPassword();
                final PasswordResetViewModel passwordResetViewModel = PasswordResetViewModel.this;
                return Transformations.map(confirmPassword, new Function1<String, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel$errorText$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(String str2) {
                        String m51944f;
                        m51944f = PasswordResetViewModel.this.m51944f();
                        return m51944f;
                    }
                });
            }
        });
        this.errorText = switchMap;
        this.isNextEnabled = Transformations.map(switchMap, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel$isNextEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String value = PasswordResetViewModel.this.getErrorText().getValue();
                return Boolean.valueOf(value == null || value.length() == 0);
            }
        });
    }

    /* renamed from: g */
    public static final void m51942g(PasswordResetViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.events.postValue(UserCenterEvents.RESET_PASSWORD_SUCCESS);
    }

    /* renamed from: e */
    public final boolean m51943e() {
        if (!Intrinsics.areEqual(this.newPassword.getValue(), this.confirmPassword.getValue())) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_password_not_same), false, 2, (Object) null);
            return false;
        }
        String value = this.newPassword.getValue();
        Intrinsics.checkNotNull(value);
        if (StringKt.matchRegex(value, "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$")) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.user_tip_password_format), false, 2, (Object) null);
        return false;
    }

    /* renamed from: f */
    public final String m51944f() {
        String value = this.newPassword.getValue();
        Intrinsics.checkNotNull(value);
        String str = value;
        String value2 = this.confirmPassword.getValue();
        Intrinsics.checkNotNull(value2);
        String str2 = value2;
        ResManager resManager = ResManager.INSTANCE;
        return str.length() == 0 ? resManager.getStringSafely(C10651R.string.user_tip_password_is_null) : str.length() < resManager.getInteger(C10651R.integer.password_min_length) ? resManager.getStringSafely(C10651R.string.user_tip_password_is_short) : !StringKt.containCharacter(str) ? resManager.getStringSafely(C10651R.string.user_tip_password_no_char) : !StringKt.containNumber(str) ? resManager.getStringSafely(C10651R.string.user_tip_password_no_number) : !Intrinsics.areEqual(str, str2) ? resManager.getStringSafely(C10651R.string.user_tip_password_not_same) : "";
    }

    @NotNull
    public final MutableLiveData<String> getConfirmPassword() {
        return this.confirmPassword;
    }

    @NotNull
    public final LiveData<String> getErrorText() {
        return this.errorText;
    }

    @NotNull
    public final MutableLiveData<String> getEvents() {
        return this.events;
    }

    @NotNull
    public final MutableLiveData<String> getNewPassword() {
        return this.newPassword;
    }

    @NotNull
    public final String getPurpose() {
        return this.purpose;
    }

    @NotNull
    public final String getSocialAccount() {
        return this.socialAccount;
    }

    @NotNull
    public final String getTitle() {
        return ResManager.INSTANCE.getStringSafely(C10651R.string.user_prefix_account) + this.socialAccount;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    /* renamed from: isConfirmPasswordVisible, reason: from getter */
    public final boolean getIsConfirmPasswordVisible() {
        return this.isConfirmPasswordVisible;
    }

    /* renamed from: isNewPasswordVisible, reason: from getter */
    public final boolean getIsNewPasswordVisible() {
        return this.isNewPasswordVisible;
    }

    @NotNull
    public final LiveData<Boolean> isNextEnabled() {
        return this.isNextEnabled;
    }

    public final void resetPassword(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (m51943e()) {
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<Object> build = new PasswordResetAction(this.newPassword.getValue(), this.token).build();
            PasswordResetViewModel$resetPassword$1 passwordResetViewModel$resetPassword$1 = new Function1<Object, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel$resetPassword$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(AccountDataBundle.INSTANCE.isAlreadyLogin());
                }
            };
            LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
            logoutOnyxAccountAction.setSkipCloudLogout(true);
            Unit unit = Unit.INSTANCE;
            Observable<Object> doOnComplete = RxjavaKt.flatMapIf(build, passwordResetViewModel$resetPassword$1, logoutOnyxAccountAction.build()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.zyk
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    PasswordResetViewModel.m51942g(PasswordResetViewModel.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
            Observable<Object> doOnError = doOnComplete.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel$resetPassword$$inlined$handleTimeoutError$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(@NotNull Throwable it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    OnyxErrorHandler.INSTANCE.showTimeoutMessage(it2);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
        }
    }

    public final void setConfirmPasswordVisible(boolean z) {
        this.isConfirmPasswordVisible = z;
    }

    public final void setNewPasswordVisible(boolean z) {
        this.isNewPasswordVisible = z;
    }

    public final void setPurpose(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purpose = str;
    }

    public final void setSocialAccount(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.socialAccount = str;
    }

    public final void setToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.token = str;
    }

    public final void toggleConfirmPasswordVisibility(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.isConfirmPasswordVisible = !this.isConfirmPasswordVisible;
        this.events.postValue(UserCenterEvents.OLD_PASSWORD_VISIBILITY_CHANGED);
    }

    public final void toggleNewPasswordVisibility(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.isNewPasswordVisible = !this.isNewPasswordVisible;
        this.events.postValue(UserCenterEvents.NEW_PASSWORD_VISIBILITY_CHANGED);
    }
}
