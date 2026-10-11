package androidx.biometric.auth;

import androidx.biometric.BiometricPrompt;
import androidx.biometric.auth.Class2BiometricOrCredentialAuthPrompt;
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

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001aH\u0010\u0012\u001a\u00020\u0011*\u00020\u00062\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f\u001aA\u0010\u0013\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001aH\u0010\u0012\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f\u001aA\u0010\u0013\u001a\u00020\u0003*\u00020\u00152\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0016\u001aF\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u001a2\u0010\u0018\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, m61528d2 = {"Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;", "Landroidx/biometric/auth/AuthPromptHost;", Http2ExchangeCodec.f103778h, "Landroidx/biometric/BiometricPrompt$AuthenticationResult;", "authenticate", "(Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;Landroidx/biometric/auth/AuthPromptHost;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/FragmentActivity;", "", "title", "subtitle", "description", "", "confirmationRequired", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/biometric/auth/AuthPromptCallback;", "callback", "Landroidx/biometric/auth/AuthPrompt;", "startClass2BiometricOrCredentialAuthentication", "authenticateWithClass2BiometricsOrCredentials", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "c", "a", "biometric-ktx_release"}, m61529k = 2, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class Class2BiometricOrCredentialAuthExtensionsKt {
    /* renamed from: a */
    public static final Class2BiometricOrCredentialAuthPrompt m1179a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z) {
        Class2BiometricOrCredentialAuthPrompt.Builder builder = new Class2BiometricOrCredentialAuthPrompt.Builder(charSequence);
        if (charSequence2 != null) {
            builder.setSubtitle(charSequence2);
        }
        if (charSequence3 != null) {
            builder.setDescription(charSequence3);
        }
        builder.setConfirmationRequired(z);
        Class2BiometricOrCredentialAuthPrompt build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(title)\n    .appl…uired)\n    }\n    .build()");
        return build;
    }

    @Nullable
    public static final Object authenticate(@NotNull Class2BiometricOrCredentialAuthPrompt class2BiometricOrCredentialAuthPrompt, @NotNull AuthPromptHost authPromptHost, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        final AuthPrompt startAuthentication = class2BiometricOrCredentialAuthPrompt.startAuthentication(authPromptHost, new vtd(), new CoroutineAuthPromptCallback(cancellableContinuationImpl));
        Intrinsics.checkNotNullExpressionValue(startAuthentication, "startAuthentication(\n   …k(continuation)\n        )");
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.biometric.auth.Class2BiometricOrCredentialAuthExtensionsKt$authenticate$2$1
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

    @Nullable
    public static final Object authenticateWithClass2BiometricsOrCredentials(@NotNull FragmentActivity fragmentActivity, @NotNull CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable CharSequence charSequence3, boolean z, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1179a(charSequence, charSequence2, charSequence3, z), new AuthPromptHost(fragmentActivity), continuation);
    }

    public static /* synthetic */ Object authenticateWithClass2BiometricsOrCredentials$default(FragmentActivity fragmentActivity, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z, Continuation continuation, int i, Object obj) {
        CharSequence charSequence4 = (i & 2) != 0 ? null : charSequence2;
        CharSequence charSequence5 = (i & 4) != 0 ? null : charSequence3;
        if ((i & 8) != 0) {
            z = true;
        }
        return authenticateWithClass2BiometricsOrCredentials(fragmentActivity, charSequence, charSequence4, charSequence5, z, (Continuation<? super BiometricPrompt.AuthenticationResult>) continuation);
    }

    /* renamed from: b */
    public static /* synthetic */ Class2BiometricOrCredentialAuthPrompt m1180b(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            charSequence3 = null;
        }
        if ((i & 8) != 0) {
            z = true;
        }
        return m1179a(charSequence, charSequence2, charSequence3, z);
    }

    /* renamed from: c */
    public static final AuthPrompt m1181c(AuthPromptHost authPromptHost, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z, Executor executor, AuthPromptCallback authPromptCallback) {
        Class2BiometricOrCredentialAuthPrompt m1179a = m1179a(charSequence, charSequence2, charSequence3, z);
        if (executor == null) {
            AuthPrompt startAuthentication = m1179a.startAuthentication(authPromptHost, authPromptCallback);
            Intrinsics.checkNotNullExpressionValue(startAuthentication, "{\n        prompt.startAu…ion(host, callback)\n    }");
            return startAuthentication;
        }
        AuthPrompt startAuthentication2 = m1179a.startAuthentication(authPromptHost, executor, authPromptCallback);
        Intrinsics.checkNotNullExpressionValue(startAuthentication2, "{\n        prompt.startAu…executor, callback)\n    }");
        return startAuthentication2;
    }

    @NotNull
    public static final AuthPrompt startClass2BiometricOrCredentialAuthentication(@NotNull FragmentActivity fragmentActivity, @NotNull CharSequence title, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1181c(new AuthPromptHost(fragmentActivity), title, charSequence, charSequence2, z, executor, callback);
    }

    public static /* synthetic */ Object authenticateWithClass2BiometricsOrCredentials$default(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, boolean z, Continuation continuation, int i, Object obj) {
        CharSequence charSequence4 = (i & 2) != 0 ? null : charSequence2;
        CharSequence charSequence5 = (i & 4) != 0 ? null : charSequence3;
        if ((i & 8) != 0) {
            z = true;
        }
        return authenticateWithClass2BiometricsOrCredentials(fragment, charSequence, charSequence4, charSequence5, z, (Continuation<? super BiometricPrompt.AuthenticationResult>) continuation);
    }

    @Nullable
    public static final Object authenticateWithClass2BiometricsOrCredentials(@NotNull Fragment fragment, @NotNull CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable CharSequence charSequence3, boolean z, @NotNull Continuation<? super BiometricPrompt.AuthenticationResult> continuation) {
        return authenticate(m1179a(charSequence, charSequence2, charSequence3, z), new AuthPromptHost(fragment), continuation);
    }

    @NotNull
    public static final AuthPrompt startClass2BiometricOrCredentialAuthentication(@NotNull Fragment fragment, @NotNull CharSequence title, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z, @Nullable Executor executor, @NotNull AuthPromptCallback callback) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return m1181c(new AuthPromptHost(fragment), title, charSequence, charSequence2, z, executor, callback);
    }
}
