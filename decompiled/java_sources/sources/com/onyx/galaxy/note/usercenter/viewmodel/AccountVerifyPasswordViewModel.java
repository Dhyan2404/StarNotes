package com.onyx.galaxy.note.usercenter.viewmodel;

import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.account.action.PasswordVerifyAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.galaxy.note.account.event.CloseKeyBoardEvent;
import com.onyx.galaxy.note.account.event.HidePasswordEvent;
import com.onyx.galaxy.note.account.event.ShowPasswordEvent;
import com.onyx.galaxy.note.account.event.VerifySuccessEvent;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010.J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0002R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R%\u0010\u001c\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\t8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000eR%\u0010\u001f\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\t8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020 0(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", Constants.RESET, "Landroid/view/View;", "view", "onHideButtonClick", "onNextButtonClick", "startVerify", "Landroidx/lifecycle/MutableLiveData;", "", "i", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "j", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "getVerifyArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "setVerifyArgs", "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "verifyArgs", "", "kotlin.jvm.PlatformType", C4921e.f26537n, "getUsername", C4Replicator.REPLICATOR_AUTH_USER_NAME, "l", "getPassword", "password", "", "m", Constants.HASIDCALL_INDEX_SIG, "getShowPassword", Constants.BOOLEAN_VALUE_SIG, "setShowPassword", "(Z)V", "showPassword", "Landroidx/lifecycle/LiveData;", GoogleApiAvailabilityLight.f29016b, "Landroidx/lifecycle/LiveData;", "isNextEnabled", "()Landroidx/lifecycle/LiveData;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAccountVerifyPasswordViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyPasswordViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,65:1\n214#2:66\n*S KotlinDebug\n*F\n+ 1 AccountVerifyPasswordViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel\n*L\n62#1:66\n*E\n"})
/* loaded from: classes9.dex */
public final class AccountVerifyPasswordViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AccountVerifyArgs verifyArgs = new AccountVerifyArgs();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> username;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> password;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean showPassword;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isNextEnabled;

    /* renamed from: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12929a<T> implements Consumer {
        public C12929a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyPasswordViewModel.this.getEvent().setValue(new VerifySuccessEvent());
        }
    }

    public AccountVerifyPasswordViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>("");
        this.username = mutableLiveData;
        this.password = new MutableLiveData<>("");
        this.isNextEnabled = Transformations.switchMap(mutableLiveData, new Function1<String, LiveData<Boolean>>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel$isNextEnabled$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final LiveData<Boolean> invoke(String str) {
                MutableLiveData<String> password = AccountVerifyPasswordViewModel.this.getPassword();
                final AccountVerifyPasswordViewModel accountVerifyPasswordViewModel = AccountVerifyPasswordViewModel.this;
                return Transformations.map(password, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel$isNextEnabled$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(String str2) {
                        return Boolean.valueOf(StringKt.isNotEmpty(AccountVerifyPasswordViewModel.this.getUsername().getValue()) && StringKt.isNotEmpty(AccountVerifyPasswordViewModel.this.getPassword().getValue()));
                    }
                });
            }
        });
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @NotNull
    public final MutableLiveData<String> getPassword() {
        return this.password;
    }

    public final boolean getShowPassword() {
        return this.showPassword;
    }

    @NotNull
    public final MutableLiveData<String> getUsername() {
        return this.username;
    }

    @NotNull
    public final AccountVerifyArgs getVerifyArgs() {
        return this.verifyArgs;
    }

    @NotNull
    public final LiveData<Boolean> isNextEnabled() {
        return this.isNextEnabled;
    }

    public final void onHideButtonClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.showPassword) {
            this.event.setValue(new HidePasswordEvent());
        } else {
            this.event.setValue(new ShowPasswordEvent());
        }
        this.showPassword = !this.showPassword;
    }

    public final void onNextButtonClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.event.setValue(new CloseKeyBoardEvent());
        startVerify();
    }

    public final void reset() {
        this.event.setValue(Unit.INSTANCE);
        this.username.setValue("");
        this.password.setValue("");
        this.showPassword = false;
    }

    public final void setShowPassword(boolean z) {
        this.showPassword = z;
    }

    public final void setVerifyArgs(@NotNull AccountVerifyArgs accountVerifyArgs) {
        Intrinsics.checkNotNullParameter(accountVerifyArgs, "<set-?>");
        this.verifyArgs = accountVerifyArgs;
    }

    public final void startVerify() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        String value = this.username.getValue();
        if (value == null) {
            value = "";
        }
        String value2 = this.password.getValue();
        Observable<Object> doOnNext = new PasswordVerifyAction(value, value2 != null ? value2 : "", this.verifyArgs.getCheckCurrentAccount()).build().doOnNext(new C12929a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> doOnError = doOnNext.doOnError(new Consumer() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel$startVerify$$inlined$handleTimeoutError$1
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
