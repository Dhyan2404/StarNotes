package androidx.biometric.auth;

import androidx.biometric.BiometricPrompt;
import androidx.biometric.auth.Class3BiometricAuthPrompt;
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

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a)\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aZ\u0010\u0015\u001a\u00020\u0014*\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012\u001aS\u0010\u0015\u001a\u00020\u0005*\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001aZ\u0010\u0015\u001a\u00020\u0014*\u00020\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012\u001aS\u0010\u0015\u001a\u00020\u0005*\u00020\u00172\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0018\u001aX\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\t2\b\u0010\r\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u001a4\u0010\u001a\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\t2\b\u0010\r\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m61528d2 = {"Landroidx/biometric/auth/Class3BiometricAuthPrompt;", "Landroidx/biometric/auth/AuthPromptHost;", Http2ExchangeCodec.f103778h, "Landroidx/biometric/BiometricPrompt$CryptoObject;", "crypto", "Landroidx/biometric/BiometricPrompt$AuthenticationResult;", "authenticate", "(Landroidx/biometric/auth/Class3BiometricAuthPrompt;Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$CryptoObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/FragmentActivity;", "", "title", "negativeButtonText", "subtitle", "description", "", "confirmationRequired", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/biometric/auth/AuthPromptCallback;", "callback", "Landroidx/biometric/auth/AuthPrompt;", "authenticateWithClass3Biometrics", "(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "a", "biometric-ktx_release"}, m61529k = 2, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class Class3BiometricAuthExtensionsKt {
    /* renamed from: a */
    public static final Class3BiometricAuthPrompt m1182a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, boolean z) {
        Class3BiometricAuthPrompt.Builder builder = new Class3BiometricAuthPrompt.Builder(charSequence, charSequence2);
        if (charSequence3 != null) {
            builder.setSubtitle(charSequence3);
        }
        if (charSequence4 != null) {
            builder.setDescription(charSequence4);
        }
        builder.setConfirmationRequired(z);
        Class3BiometricAuthPrompt build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(title, negativeB…uired)\n    }\n    .build()");
        return build;
    }

    @Nullable
    public static final Object authenticate(@NotNull Class3BiometricAuthPrompt class3BiometricAuthPrompt, @NotNull AuthPromptHost authPromptHost, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        final AuthPrompt startAuthentication = class3BiometricAuthPrompt.startAuthentication(authPromptHost, cryptoObject, new vtd(), new CoroutineAuthPromptCallback(cancellableContinuationImpl));
        Intrinsics.checkNotNullExpressionValue(startAuthentication, "startAuthentication(\n   …k(continuation)\n        )");
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.biometric.auth.Class3BiometricAuthExtensionsKt$authenticate$2$1
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

    @NotNull
    public static final AuthPrompt authenticateWithClass3Biometrics(@NotNull FragmentActivity fragmentActivity, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence title, @NotNull CharSequence negativeButtonText, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(negativeButtonText, "negativeButtonText");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1183b(new AuthPromptHost(fragmentActivity), cryptoObject, title, negativeButtonText, charSequence, charSequence2, z, executor, callback);
    }

    /* renamed from: b */
    public static final AuthPrompt m1183b(AuthPromptHost authPromptHost, BiometricPrompt.CryptoObject cryptoObject, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, boolean z, Executor executor, AuthPromptCallback authPromptCallback) {
        Class3BiometricAuthPrompt m1182a = m1182a(charSequence, charSequence2, charSequence3, charSequence4, z);
        if (executor == null) {
            AuthPrompt startAuthentication = m1182a.startAuthentication(authPromptHost, cryptoObject, authPromptCallback);
            Intrinsics.checkNotNullExpressionValue(startAuthentication, "{\n        prompt.startAu…, crypto, callback)\n    }");
            return startAuthentication;
        }
        AuthPrompt startAuthentication2 = m1182a.startAuthentication(authPromptHost, cryptoObject, executor, authPromptCallback);
        Intrinsics.checkNotNullExpressionValue(startAuthentication2, "{\n        prompt.startAu…executor, callback)\n    }");
        return startAuthentication2;
    }

    @Nullable
    public static final Object authenticateWithClass3Biometrics(@NotNull FragmentActivity fragmentActivity, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @Nullable CharSequence charSequence3, @Nullable CharSequence charSequence4, boolean z, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1182a(charSequence, charSequence2, charSequence3, charSequence4, z), new AuthPromptHost(fragmentActivity), cryptoObject, continuation);
    }

    @NotNull
    public static final AuthPrompt authenticateWithClass3Biometrics(@NotNull Fragment fragment, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence title, @NotNull CharSequence negativeButtonText, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(negativeButtonText, "negativeButtonText");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1183b(new AuthPromptHost(fragment), cryptoObject, title, negativeButtonText, charSequence, charSequence2, z, executor, callback);
    }

    @Nullable
    public static final Object authenticateWithClass3Biometrics(@NotNull Fragment fragment, @Nullable BiometricPrompt.CryptoObject cryptoObject, @NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @Nullable CharSequence charSequence3, @Nullable CharSequence charSequence4, boolean z, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1182a(charSequence, charSequence2, charSequence3, charSequence4, z), new AuthPromptHost(fragment), cryptoObject, continuation);
    }
}
