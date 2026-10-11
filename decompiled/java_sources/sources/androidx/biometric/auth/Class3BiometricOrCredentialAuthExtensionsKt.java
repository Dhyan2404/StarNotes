package androidx.biometric.auth;

import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.auth.Class3BiometricOrCredentialAuthPrompt;
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

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a)\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aT\u0010\u0014\u001a\u00020\u0013*\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001aK\u0010\u0015\u001a\u00020\u0005*\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001aT\u0010\u0014\u001a\u00020\u0013*\u00020\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001aK\u0010\u0015\u001a\u00020\u0005*\u00020\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0018\u001aP\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0003\u001a,\u0010\u001a\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\rH\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m61528d2 = {"Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt;", "Landroidx/biometric/auth/AuthPromptHost;", Http2ExchangeCodec.f103778h, "Landroidx/biometric/BiometricPrompt$CryptoObject;", "crypto", "Landroidx/biometric/BiometricPrompt$AuthenticationResult;", "authenticate", "(Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt;Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$CryptoObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/FragmentActivity;", "", "title", "subtitle", "description", "", "confirmationRequired", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/biometric/auth/AuthPromptCallback;", "callback", "Landroidx/biometric/auth/AuthPrompt;", "startClass3BiometricOrCredentialAuthentication", "authenticateWithClass3BiometricsOrCredentials", "(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "a", "biometric-ktx_release"}, m61529k = 2, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class Class3BiometricOrCredentialAuthExtensionsKt {
    @RequiresApi(30)
    /* renamed from: a */
    public static final Class3BiometricOrCredentialAuthPrompt m1184a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z) {
        Class3BiometricOrCredentialAuthPrompt.Builder builder = new Class3BiometricOrCredentialAuthPrompt.Builder(charSequence);
        if (charSequence2 != null) {
            builder.setSubtitle(charSequence2);
        }
        if (charSequence3 != null) {
            builder.setDescription(charSequence3);
        }
        builder.setConfirmationRequired(z);
        Class3BiometricOrCredentialAuthPrompt build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(title)\n    .appl…uired)\n    }\n    .build()");
        return build;
    }

    @RequiresApi(30)
    @Nullable
    public static final Object authenticate(@NotNull Class3BiometricOrCredentialAuthPrompt class3BiometricOrCredentialAuthPrompt, @NotNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        final AuthPrompt startAuthentication = class3BiometricOrCredentialAuthPrompt.startAuthentication(authPromptHost, cryptoObject, new vtd(), new CoroutineAuthPromptCallback(cancellableContinuationImpl));
        Intrinsics.checkNotNullExpressionValue(startAuthentication, "startAuthentication(\n   …k(continuation)\n        )");
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.biometric.auth.Class3BiometricOrCredentialAuthExtensionsKt$authenticate$2$1
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
    public static final Object authenticateWithClass3BiometricsOrCredentials(@NotNull FragmentActivity fragmentActivity, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable CharSequence charSequence3, boolean z, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1184a(charSequence, charSequence2, charSequence3, z), new AuthPromptHost(fragmentActivity), cryptoObject, continuation);
    }

    @RequiresApi(30)
    /* renamed from: b */
    public static final AuthPrompt m1185b(AuthPromptHost authPromptHost, BiometricPrompt.CryptoObject cryptoObject, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z, Executor executor, AuthPromptCallback authPromptCallback) {
        Class3BiometricOrCredentialAuthPrompt m1184a = m1184a(charSequence, charSequence2, charSequence3, z);
        if (executor == null) {
            AuthPrompt startAuthentication = m1184a.startAuthentication(authPromptHost, cryptoObject, authPromptCallback);
            Intrinsics.checkNotNullExpressionValue(startAuthentication, "{\n        prompt.startAu…, crypto, callback)\n    }");
            return startAuthentication;
        }
        AuthPrompt startAuthentication2 = m1184a.startAuthentication(authPromptHost, cryptoObject, executor, authPromptCallback);
        Intrinsics.checkNotNullExpressionValue(startAuthentication2, "{\n        prompt.startAu…executor, callback)\n    }");
        return startAuthentication2;
    }

    @RequiresApi(30)
    @NotNull
    public static final AuthPrompt startClass3BiometricOrCredentialAuthentication(@NotNull FragmentActivity fragmentActivity, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence title, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1185b(new AuthPromptHost(fragmentActivity), cryptoObject, title, charSequence, charSequence2, z, executor, callback);
    }

    @RequiresApi(30)
    @Nullable
    public static final Object authenticateWithClass3BiometricsOrCredentials(@NotNull Fragment fragment, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable CharSequence charSequence3, boolean z, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1184a(charSequence, charSequence2, charSequence3, z), new AuthPromptHost(fragment), cryptoObject, continuation);
    }

    @RequiresApi(30)
    @NotNull
    public static final AuthPrompt startClass3BiometricOrCredentialAuthentication(@NotNull Fragment fragment, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence title, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1185b(new AuthPromptHost(fragment), cryptoObject, title, charSequence, charSequence2, z, executor, callback);
    }
}
