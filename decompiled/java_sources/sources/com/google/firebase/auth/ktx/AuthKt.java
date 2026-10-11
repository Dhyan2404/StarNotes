package com.google.firebase.auth.ktx;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.OAuthProvider;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.ktx.Firebase;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a-\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a5\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a-\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a%\u0010\u0015\u001a\u00020\u00162\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0019\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, m61528d2 = {C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, "Lcom/google/firebase/auth/FirebaseAuth;", "Lcom/google/firebase/ktx/Firebase;", "getAuth", "(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/auth/FirebaseAuth;", "actionCodeSettings", "Lcom/google/firebase/auth/ActionCodeSettings;", "init", "Lkotlin/Function1;", "Lcom/google/firebase/auth/ActionCodeSettings$Builder;", "", "Lkotlin/ExtensionFunctionType;", "oAuthCredential", "Lcom/google/firebase/auth/AuthCredential;", "providerId", "", "Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;", "oAuthProvider", "Lcom/google/firebase/auth/OAuthProvider;", "firebaseAuth", "Lcom/google/firebase/auth/OAuthProvider$Builder;", "userProfileChangeRequest", "Lcom/google/firebase/auth/UserProfileChangeRequest;", "Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;", "app", "Lcom/google/firebase/FirebaseApp;", "java.com.google.android.gmscore.integ.client.firebase-auth-api_firebase-auth-api"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes6.dex */
public final class AuthKt {
    @Deprecated(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    @NotNull
    public static final ActionCodeSettings actionCodeSettings(@NonNull Function1<? super ActionCodeSettings.Builder, Unit> init) {
        Intrinsics.checkNotNullParameter(init, "init");
        ActionCodeSettings.Builder newBuilder = ActionCodeSettings.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder(...)");
        init.invoke(newBuilder);
        ActionCodeSettings build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public static final FirebaseAuth auth(@NonNull Firebase firebase, @NonNull FirebaseApp app) {
        Intrinsics.checkNotNullParameter(firebase, "<this>");
        Intrinsics.checkNotNullParameter(app, "app");
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(app);
        Intrinsics.checkNotNullExpressionValue(firebaseAuth, "getInstance(...)");
        return firebaseAuth;
    }

    @NotNull
    public static final FirebaseAuth getAuth(@NonNull Firebase firebase) {
        Intrinsics.checkNotNullParameter(firebase, "<this>");
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance();
        Intrinsics.checkNotNullExpressionValue(firebaseAuth, "getInstance(...)");
        return firebaseAuth;
    }

    @Deprecated(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    @NotNull
    public static final AuthCredential oAuthCredential(@NonNull String providerId, @NonNull Function1<? super OAuthProvider.CredentialBuilder, Unit> init) {
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(init, "init");
        OAuthProvider.CredentialBuilder newCredentialBuilder = OAuthProvider.newCredentialBuilder(providerId);
        Intrinsics.checkNotNullExpressionValue(newCredentialBuilder, "newCredentialBuilder(...)");
        init.invoke(newCredentialBuilder);
        AuthCredential build = newCredentialBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Deprecated(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    @NotNull
    public static final OAuthProvider oAuthProvider(@NonNull String providerId, @NonNull Function1<? super OAuthProvider.Builder, Unit> init) {
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(init, "init");
        OAuthProvider.Builder newBuilder = OAuthProvider.newBuilder(providerId);
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder(...)");
        init.invoke(newBuilder);
        OAuthProvider build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Deprecated(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    @NotNull
    public static final UserProfileChangeRequest userProfileChangeRequest(@NonNull Function1<? super UserProfileChangeRequest.Builder, Unit> init) {
        Intrinsics.checkNotNullParameter(init, "init");
        UserProfileChangeRequest.Builder builder = new UserProfileChangeRequest.Builder();
        init.invoke(builder);
        UserProfileChangeRequest build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Deprecated(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    @NotNull
    public static final OAuthProvider oAuthProvider(@NonNull String providerId, @NonNull FirebaseAuth firebaseAuth, @NonNull Function1<? super OAuthProvider.Builder, Unit> init) {
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(firebaseAuth, "firebaseAuth");
        Intrinsics.checkNotNullParameter(init, "init");
        OAuthProvider.Builder newBuilder = OAuthProvider.newBuilder(providerId, firebaseAuth);
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder(...)");
        init.invoke(newBuilder);
        OAuthProvider build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }
}
