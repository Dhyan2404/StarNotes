package com.onyx.galaxy.note.utils;

import android.content.Context;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.AccountVerifyAction;
import com.onyx.galaxy.note.category.action.UpdateAllLockedNotePasswordAction;
import com.onyx.galaxy.note.editor.data.AuthenticateNotePasswordContext;
import com.onyx.galaxy.note.editor.data.ConfigNotePasswordContext;
import com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog;
import com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\tJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0016\b\u0002\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012J&\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0016\b\u0002\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001c\u001a\u00020\tH\u0002R\u0014\u0010\u001f\u001a\u00020\u00198\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/NoteLockUtils;", "", "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/ui/CommonDialog;", "createNoteEncryptionLoginDialog", "context", "", "checkFingerPrintAvailable", "Landroidx/biometric/BiometricPrompt$PromptInfo;", "promptInfo", "Lio/reactivex/rxjava3/core/Observable;", "createAuthDialogObservable", "createNoteAuthPasswordDialogObservable", "createFingerPrintAuthDialogObservable", "isEncryptionEnabled", "checkNoteFingerUnLockAvailable", "showFingerPrintAuthDialog", "Lkotlin/Function1;", "", "", "callback", "Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;", "createNotePasswordDialog", "showForgetNotePasswordDialog", "", "errorCode", "j", C6998g.f39679a, "a", "I", "MAX_RETRY_COUNT", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteLockUtils {

    @NotNull
    public static final NoteLockUtils INSTANCE = new NoteLockUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int MAX_RETRY_COUNT = 3;

    /* renamed from: com.onyx.galaxy.note.utils.NoteLockUtils$a */
    /* loaded from: classes9.dex */
    public static final class C12981a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f62700e;

        public C12981a(Context context) {
            this.f62700e = context;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m51990a(boolean z) {
            if (!z) {
                return NoteLockUtils.INSTANCE.createNoteAuthPasswordDialogObservable(this.f62700e);
            }
            Observable just = Observable.just(Boolean.valueOf(z));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51990a(((Boolean) obj).booleanValue());
        }
    }

    public static /* synthetic */ Observable createAuthDialogObservable$default(NoteLockUtils noteLockUtils, Context context, BiometricPrompt.PromptInfo promptInfo, int i, Object obj) {
        if ((i & 2) != 0) {
            promptInfo = noteLockUtils.m51988g();
        }
        return noteLockUtils.createAuthDialogObservable(context, promptInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfigNotePasswordDialog createNotePasswordDialog$default(NoteLockUtils noteLockUtils, Context context, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return noteLockUtils.createNotePasswordDialog(context, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static final void m51984e(Ref.ObjectRef biometricPrompt) {
        Intrinsics.checkNotNullParameter(biometricPrompt, "$biometricPrompt");
        ((BiometricPrompt) biometricPrompt.element).cancelAuthentication();
    }

    /* renamed from: f */
    public static final void m51985f(NoteAuthenticatePasswordDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, android.app.Dialog, com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog] */
    /* renamed from: h */
    public static final void m51986h(Ref.ObjectRef configNotePasswordDialog, Context activityContext, Function1 function1, boolean z) {
        Intrinsics.checkNotNullParameter(configNotePasswordDialog, "$configNotePasswordDialog");
        Intrinsics.checkNotNullParameter(activityContext, "$activityContext");
        ?? createNotePasswordDialog = INSTANCE.createNotePasswordDialog(activityContext, function1);
        configNotePasswordDialog.element = createNotePasswordDialog;
        if (createNotePasswordDialog != 0) {
            createNotePasswordDialog.show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public static final void m51987i(Ref.ObjectRef configNotePasswordDialog) {
        Intrinsics.checkNotNullParameter(configNotePasswordDialog, "$configNotePasswordDialog");
        ConfigNotePasswordDialog configNotePasswordDialog2 = (ConfigNotePasswordDialog) configNotePasswordDialog.element;
        if (configNotePasswordDialog2 != null) {
            configNotePasswordDialog2.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showForgetNotePasswordDialog$default(NoteLockUtils noteLockUtils, Context context, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        noteLockUtils.showForgetNotePasswordDialog(context, function1);
    }

    public final boolean checkFingerPrintAvailable(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        BiometricManager from = BiometricManager.from(context);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        return from.canAuthenticate(255) == 0;
    }

    public final boolean checkNoteFingerUnLockAvailable(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        if (!MMKVNote.INSTANCE.getNoteFingerLockPasswordOption().get()) {
            return false;
        }
        BiometricManager from = BiometricManager.from(activityContext);
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        return from.canAuthenticate(255) == 0;
    }

    @NotNull
    public final Observable<Boolean> createAuthDialogObservable(@NotNull Context activityContext, @NotNull BiometricPrompt.PromptInfo promptInfo) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(promptInfo, "promptInfo");
        Observable flatMap = createFingerPrintAuthDialogObservable(activityContext, promptInfo).flatMap(new C12981a(activityContext));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [T, androidx.biometric.BiometricPrompt] */
    @NotNull
    public final Observable<Boolean> createFingerPrintAuthDialogObservable(@NotNull Context activityContext, @NotNull BiometricPrompt.PromptInfo promptInfo) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(promptInfo, "promptInfo");
        if (!checkNoteFingerUnLockAvailable(activityContext)) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Executor mainExecutor = ContextCompat.getMainExecutor(activityContext);
        Intrinsics.checkNotNullExpressionValue(mainExecutor, "getMainExecutor(...)");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? biometricPrompt = new BiometricPrompt((FragmentActivity) activityContext, mainExecutor, new BiometricPrompt.AuthenticationCallback() { // from class: com.onyx.galaxy.note.utils.NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1

            /* renamed from: a, reason: from kotlin metadata */
            public int retryCount;

            public final int getRetryCount() {
                return this.retryCount;
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationError(int errorCode, @NotNull CharSequence errString) {
                Intrinsics.checkNotNullParameter(errString, "errString");
                NoteLockUtils.INSTANCE.m51989j(errorCode);
                if (errorCode == 10) {
                    create.onComplete();
                } else {
                    RxjavaKt.done(create, Boolean.FALSE);
                }
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationFailed() {
                int i = this.retryCount + 1;
                this.retryCount = i;
                if (i >= 3) {
                    RxjavaKt.done(create, Boolean.FALSE);
                    BiometricPrompt biometricPrompt2 = objectRef.element;
                    if (biometricPrompt2 != null) {
                        biometricPrompt2.cancelAuthentication();
                    }
                    ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unlock_note_biometric_temp_unavailable, false, 2, (Object) null);
                }
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationSucceeded(@NotNull BiometricPrompt.AuthenticationResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                RxjavaKt.done(create, Boolean.TRUE);
            }

            public final void setRetryCount(int i) {
                this.retryCount = i;
            }
        });
        objectRef.element = biometricPrompt;
        biometricPrompt.authenticate(promptInfo);
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.qyj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteLockUtils.m51984e(Ref.ObjectRef.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @NotNull
    public final Observable<Boolean> createNoteAuthPasswordDialogObservable(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        AuthenticateNotePasswordContext authenticateNotePasswordContext = new AuthenticateNotePasswordContext(activityContext, false, 2, null);
        authenticateNotePasswordContext.setConfirmCallback(new Function2<NoteAuthenticatePasswordDialog, String, Unit>() { // from class: com.onyx.galaxy.note.utils.NoteLockUtils$createNoteAuthPasswordDialogObservable$authContext$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(NoteAuthenticatePasswordDialog noteAuthenticatePasswordDialog, String str) {
                invoke2(noteAuthenticatePasswordDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteAuthenticatePasswordDialog dialog, @NotNull String pwd) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(pwd, "pwd");
                if (Intrinsics.areEqual(pwd, MMKVNote.INSTANCE.getNoteLockPasswordOption().get())) {
                    RxjavaKt.done(create, Boolean.TRUE);
                    dialog.dismiss();
                } else {
                    ToastUtils.INSTANCE.show(C10651R.string.note_pwd_error, true);
                }
            }
        });
        authenticateNotePasswordContext.setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.utils.NoteLockUtils$createNoteAuthPasswordDialogObservable$authContext$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                RxjavaKt.done(create, Boolean.FALSE);
            }
        });
        final NoteAuthenticatePasswordDialog noteAuthenticatePasswordDialog = new NoteAuthenticatePasswordDialog(authenticateNotePasswordContext);
        noteAuthenticatePasswordDialog.show();
        Observable doOnDispose = create.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.tyj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteLockUtils.m51985f(NoteAuthenticatePasswordDialog.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @NotNull
    public final CommonDialog createNoteEncryptionLoginDialog(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        return new CommonDialog.Builder(activityContext).setTitle(C10651R.string.hint).setMessage(C10651R.string.note_lock_login_content).setConfirmText(C10651R.string.note_lock_login_confirm).setCancelText(C10651R.string.cancel).setCancelable(false).setWarning(true).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.utils.NoteLockUtils$createNoteEncryptionLoginDialog$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                Navigator.navigateToLogin$default(Navigator.INSTANCE, null, 1, null);
            }
        }).create();
    }

    @NotNull
    public final ConfigNotePasswordDialog createNotePasswordDialog(@NotNull Context activityContext, @Nullable final Function1<? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        ConfigNotePasswordContext configNotePasswordContext = new ConfigNotePasswordContext(activityContext, true);
        configNotePasswordContext.setConfirmCallback(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.utils.NoteLockUtils$createNotePasswordDialog$configNotePasswordContext$1$1
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
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxBaseAction.execute$default(new UpdateAllLockedNotePasswordAction(it2), null, null, null, 7, null);
                Function1<String, Unit> function1 = callback;
                if (function1 != null) {
                    function1.invoke(it2);
                }
            }
        });
        return new ConfigNotePasswordDialog(configNotePasswordContext);
    }

    /* renamed from: g */
    public final BiometricPrompt.PromptInfo m51988g() {
        BiometricPrompt.PromptInfo.Builder builder = new BiometricPrompt.PromptInfo.Builder();
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.unlock_note_biometric_title);
        Intrinsics.checkNotNull(string);
        BiometricPrompt.PromptInfo.Builder title = builder.setTitle(string);
        String string2 = resManager.getString(C10651R.string.unlock_note_use_note_pwd);
        Intrinsics.checkNotNull(string2);
        BiometricPrompt.PromptInfo build = title.setNegativeButtonText(string2).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    public final boolean isEncryptionEnabled() {
        return StringKt.isNotBlank(MMKVNote.INSTANCE.getNoteLockPasswordOption().get());
    }

    /* renamed from: j */
    public final void m51989j(int errorCode) {
        if (errorCode == 7 || errorCode == 9) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unlock_note_biometric_temp_unavailable, false, 2, (Object) null);
        }
    }

    @NotNull
    public final Observable<Boolean> showFingerPrintAuthDialog(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        BiometricPrompt.PromptInfo.Builder builder = new BiometricPrompt.PromptInfo.Builder();
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.unlock_note_biometric_title);
        Intrinsics.checkNotNull(string);
        BiometricPrompt.PromptInfo.Builder title = builder.setTitle(string);
        String string2 = resManager.getString(C10651R.string.unlock_note_biometric_sub_title);
        Intrinsics.checkNotNull(string2);
        BiometricPrompt.PromptInfo.Builder subtitle = title.setSubtitle(string2);
        String string3 = resManager.getString(C10651R.string.unlock_note_use_note_pwd);
        Intrinsics.checkNotNull(string3);
        BiometricPrompt.PromptInfo build = subtitle.setNegativeButtonText(string3).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return createFingerPrintAuthDialogObservable(activityContext, build);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void showForgetNotePasswordDialog(@NotNull final Context activityContext, @Nullable final Function1<? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        AccountVerifyArgs accountVerifyArgs = new AccountVerifyArgs();
        String string = ResManager.INSTANCE.getString(C10651R.string.user_title_retrieve_note_password);
        if (string == null) {
            string = "";
        }
        accountVerifyArgs.setVerificationTitle(string);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Boolean> observeOn = new AccountVerifyAction(null, accountVerifyArgs, 1, 0 == true ? 1 : 0).build().observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> doOnDispose = RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.ryj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteLockUtils.m51986h(Ref.ObjectRef.this, activityContext, callback, ((Boolean) obj).booleanValue());
            }
        }).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.syj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteLockUtils.m51987i(Ref.ObjectRef.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnDispose, null, null, 3, null);
    }
}
