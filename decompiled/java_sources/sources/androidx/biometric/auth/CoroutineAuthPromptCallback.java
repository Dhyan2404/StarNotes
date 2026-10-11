package androidx.biometric.auth;

import androidx.appcompat.widget.ActivityChooserModel;
import androidx.biometric.BiometricPrompt;
import androidx.fragment.app.FragmentActivity;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\"\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001a\u0010\f\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Landroidx/biometric/auth/CoroutineAuthPromptCallback;", "Landroidx/biometric/auth/AuthPromptCallback;", "Landroidx/fragment/app/FragmentActivity;", ActivityChooserModel.f1429r, "", "errorCode", "", "errString", "", "onAuthenticationError", "Landroidx/biometric/BiometricPrompt$AuthenticationResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "onAuthenticationSucceeded", "onAuthenticationFailed", "Lkotlinx/coroutines/CancellableContinuation;", "a", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/CancellableContinuation;)V", "biometric-ktx_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CoroutineAuthPromptCallback extends AuthPromptCallback {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CancellableContinuation<BiometricPrompt.AuthenticationResult> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineAuthPromptCallback(@NotNull CancellableContinuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        this.continuation = continuation;
    }

    @Override // androidx.biometric.auth.AuthPromptCallback
    public void onAuthenticationError(@Nullable FragmentActivity activity, int errorCode, @NotNull CharSequence errString) {
        Intrinsics.checkNotNullParameter(errString, "errString");
        CancellableContinuation<BiometricPrompt.AuthenticationResult> cancellableContinuation = this.continuation;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(new AuthPromptErrorException(errorCode, errString))));
    }

    @Override // androidx.biometric.auth.AuthPromptCallback
    public void onAuthenticationFailed(@Nullable FragmentActivity activity) {
        CancellableContinuation<BiometricPrompt.AuthenticationResult> cancellableContinuation = this.continuation;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(new AuthPromptFailureException())));
    }

    @Override // androidx.biometric.auth.AuthPromptCallback
    public void onAuthenticationSucceeded(@Nullable FragmentActivity activity, @NotNull BiometricPrompt.AuthenticationResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        CancellableContinuation<BiometricPrompt.AuthenticationResult> cancellableContinuation = this.continuation;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m72621constructorimpl(result));
    }
}
