package androidx.biometric.auth;

import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.auth.CredentialAuthPrompt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.sunia.HTREnginev2.vtd;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a)\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a>\u0010\u0011\u001a\u00020\u0010*\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007\u001a5\u0010\u0012\u001a\u00020\u0005*\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a>\u0010\u0011\u001a\u00020\u0010*\u00020\u00142\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007\u001a5\u0010\u0012\u001a\u00020\u0005*\u00020\u00142\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0015\u001a>\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0003\u001a\u001a\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, m61528d2 = {"Landroidx/biometric/auth/CredentialAuthPrompt;", "Landroidx/biometric/auth/AuthPromptHost;", Http2ExchangeCodec.f103778h, "Landroidx/biometric/BiometricPrompt$CryptoObject;", "crypto", "Landroidx/biometric/BiometricPrompt$AuthenticationResult;", "authenticate", "(Landroidx/biometric/auth/CredentialAuthPrompt;Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$CryptoObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/FragmentActivity;", "", "title", "description", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/biometric/auth/AuthPromptCallback;", "callback", "Landroidx/biometric/auth/AuthPrompt;", "startCredentialAuthentication", "authenticateWithCredentials", "(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "a", "biometric-ktx_release"}, m61529k = 2, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CredentialAuthExtensionsKt {
    @RequiresApi(30)
    /* renamed from: a */
    public static final CredentialAuthPrompt m1186a(CharSequence charSequence, CharSequence charSequence2) {
        CredentialAuthPrompt.Builder builder = new CredentialAuthPrompt.Builder(charSequence);
        if (charSequence2 != null) {
            builder.setDescription(charSequence2);
        }
        CredentialAuthPrompt buildCredentialAuthPrompt = builder.build();
        Intrinsics.checkNotNullExpressionValue(buildCredentialAuthPrompt, "buildCredentialAuthPrompt");
        return buildCredentialAuthPrompt;
    }

    @RequiresApi(30)
    @Nullable
    public static final Object authenticate(@NotNull CredentialAuthPrompt credentialAuthPrompt, @NotNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        final AuthPrompt startAuthentication = credentialAuthPrompt.startAuthentication(authPromptHost, cryptoObject, new vtd(), new CoroutineAuthPromptCallback(cancellableContinuationImpl));
        Intrinsics.checkNotNullExpressionValue(startAuthentication, "startAuthentication(\n   …k(continuation)\n        )");
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.biometric.auth.CredentialAuthExtensionsKt$authenticate$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                AuthPrompt.this.cancelAuthentication();
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @RequiresApi(30)
    @Nullable
    public static final Object authenticateWithCredentials(@NotNull FragmentActivity fragmentActivity, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence charSequence, @Nullable CharSequence charSequence2, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1186a(charSequence, charSequence2), new AuthPromptHost(fragmentActivity), cryptoObject, continuation);
    }

    public static /* synthetic */ Object authenticateWithCredentials$default(FragmentActivity fragmentActivity, BiometricPrompt.CryptoObject cryptoObject, CharSequence charSequence, CharSequence charSequence2, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            charSequence2 = null;
        }
        return authenticateWithCredentials(fragmentActivity, cryptoObject, charSequence, charSequence2, (Continuation<? super BiometricPrompt.AuthenticationResult>) continuation);
    }

    @RequiresApi(30)
    /* renamed from: b */
    public static final AuthPrompt m1187b(AuthPromptHost authPromptHost, BiometricPrompt.CryptoObject cryptoObject, CharSequence charSequence, CharSequence charSequence2, Executor executor, AuthPromptCallback authPromptCallback) {
        CredentialAuthPrompt m1186a = m1186a(charSequence, charSequence2);
        if (executor == null) {
            AuthPrompt startAuthentication = m1186a.startAuthentication(authPromptHost, cryptoObject, authPromptCallback);
            Intrinsics.checkNotNullExpressionValue(startAuthentication, "{\n        prompt.startAu…, crypto, callback)\n    }");
            return startAuthentication;
        }
        AuthPrompt startAuthentication2 = m1186a.startAuthentication(authPromptHost, cryptoObject, executor, authPromptCallback);
        Intrinsics.checkNotNullExpressionValue(startAuthentication2, "{\n        prompt.startAu…executor, callback)\n    }");
        return startAuthentication2;
    }

    @RequiresApi(30)
    @NotNull
    public static final AuthPrompt startCredentialAuthentication(@NotNull FragmentActivity fragmentActivity, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence title, @Nullable CharSequence charSequence, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1187b(new AuthPromptHost(fragmentActivity), cryptoObject, title, charSequence, executor, callback);
    }

    public static /* synthetic */ Object authenticateWithCredentials$default(Fragment fragment, BiometricPrompt.CryptoObject cryptoObject, CharSequence charSequence, CharSequence charSequence2, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            charSequence2 = null;
        }
        return authenticateWithCredentials(fragment, cryptoObject, charSequence, charSequence2, (Continuation<? super BiometricPrompt.AuthenticationResult>) continuation);
    }

    @RequiresApi(30)
    @Nullable
    public static final Object authenticateWithCredentials(@NotNull Fragment fragment, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence charSequence, @Nullable CharSequence charSequence2, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1186a(charSequence, charSequence2), new AuthPromptHost(fragment), cryptoObject, continuation);
    }

    @RequiresApi(30)
    @NotNull
    public static final AuthPrompt startCredentialAuthentication(@NotNull Fragment fragment, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence title, @Nullable CharSequence charSequence, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1187b(new AuthPromptHost(fragment), cryptoObject, title, charSequence, executor, callback);
    }
}
