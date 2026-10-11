package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u001f2\u00020\u0001:\u0002 \u001fBC\b\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001c\u001a\u00020\u000f8\u0007¢\u0006\f\n\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u001c\u0010\u0013¨\u0006!"}, m61528d2 = {"Landroidx/credentials/GetCredentialRequest;", "", "", "Landroidx/credentials/CredentialOption;", "a", "Ljava/util/List;", "getCredentialOptions", "()Ljava/util/List;", "credentialOptions", "", "b", Constants.STRING_SIG, "getOrigin", "()Ljava/lang/String;", "origin", "", "c", Constants.HASIDCALL_INDEX_SIG, "getPreferIdentityDocUi", Constants.BOOLEAN_VALUE_SIG, "preferIdentityDocUi", "Landroid/content/ComponentName;", "d", "Landroid/content/ComponentName;", "getPreferUiBrandingComponentName", "()Landroid/content/ComponentName;", "preferUiBrandingComponentName", "e", "preferImmediatelyAvailableCredentials", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V", "Companion", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nGetCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCredentialRequest.kt\nandroidx/credentials/GetCredentialRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"})
/* loaded from: classes3.dex */
public final class GetCredentialRequest {

    @NotNull
    public static final String BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS = "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f */
    @NotNull
    public static final String f6272f = "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI";

    /* renamed from: g */
    @NotNull
    public static final String f6273g = "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<CredentialOption> credentialOptions;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final String origin;

    /* renamed from: c, reason: from kotlin metadata */
    public final boolean preferIdentityDocUi;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final ComponentName preferUiBrandingComponentName;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean preferImmediatelyAvailableCredentials;

    @Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000bJ\u0006\u0010\u0014\u001a\u00020\u0013R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0011\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Landroidx/credentials/GetCredentialRequest$Builder;", "", "Landroidx/credentials/CredentialOption;", "credentialOption", "addCredentialOption", "", "credentialOptions", "setCredentialOptions", "", "origin", "setOrigin", "", "preferImmediatelyAvailableCredentials", "setPreferImmediatelyAvailableCredentials", "Landroid/content/ComponentName;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_COMPONENT_STRING, "setPreferUiBrandingComponentName", "preferIdentityDocUi", "setPreferIdentityDocUi", "Landroidx/credentials/GetCredentialRequest;", PrivilegedApp.f6529f, "", "a", "Ljava/util/List;", "b", Constants.STRING_SIG, "c", Constants.HASIDCALL_INDEX_SIG, "d", "e", "Landroid/content/ComponentName;", "preferUiBrandingComponentName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public List<CredentialOption> credentialOptions = new ArrayList();

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String origin;

        /* renamed from: c, reason: from kotlin metadata */
        public boolean preferIdentityDocUi;

        /* renamed from: d, reason: from kotlin metadata */
        public boolean preferImmediatelyAvailableCredentials;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public ComponentName preferUiBrandingComponentName;

        @NotNull
        public final Builder addCredentialOption(@NotNull CredentialOption credentialOption) {
            Intrinsics.checkNotNullParameter(credentialOption, "credentialOption");
            this.credentialOptions.add(credentialOption);
            return this;
        }

        @NotNull
        public final GetCredentialRequest build() {
            List list;
            list = CollectionsKt___CollectionsKt.toList(this.credentialOptions);
            return new GetCredentialRequest(list, this.origin, this.preferIdentityDocUi, this.preferUiBrandingComponentName, this.preferImmediatelyAvailableCredentials);
        }

        @NotNull
        public final Builder setCredentialOptions(@NotNull List<? extends CredentialOption> credentialOptions) {
            List<CredentialOption> mutableList;
            Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) credentialOptions);
            this.credentialOptions = mutableList;
            return this;
        }

        @NotNull
        public final Builder setOrigin(@NotNull String origin) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            this.origin = origin;
            return this;
        }

        @NotNull
        public final Builder setPreferIdentityDocUi(boolean preferIdentityDocUi) {
            this.preferIdentityDocUi = preferIdentityDocUi;
            return this;
        }

        @NotNull
        public final Builder setPreferImmediatelyAvailableCredentials(boolean preferImmediatelyAvailableCredentials) {
            this.preferImmediatelyAvailableCredentials = preferImmediatelyAvailableCredentials;
            return this;
        }

        @NotNull
        public final Builder setPreferUiBrandingComponentName(@Nullable ComponentName component) {
            this.preferUiBrandingComponentName = component;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Landroidx/credentials/GetCredentialRequest$Companion;", "", "()V", "BUNDLE_KEY_PREFER_IDENTITY_DOC_UI", "", "BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", "BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME", "createFrom", "Landroidx/credentials/GetCredentialRequest;", "credentialOptions", "", "Landroidx/credentials/CredentialOption;", "origin", "data", "Landroid/os/Bundle;", "toRequestDataBundle", AbstractLogger.REQUEST, "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final GetCredentialRequest createFrom(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String origin, @NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                boolean z = data.getBoolean(GetCredentialRequest.f6272f);
                Builder preferImmediatelyAvailableCredentials = new Builder().setCredentialOptions(credentialOptions).setPreferIdentityDocUi(z).setPreferUiBrandingComponentName((ComponentName) data.getParcelable(GetCredentialRequest.f6273g)).setPreferImmediatelyAvailableCredentials(data.getBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"));
                if (origin != null) {
                    preferImmediatelyAvailableCredentials.setOrigin(origin);
                }
                return preferImmediatelyAvailableCredentials.build();
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Bundle toRequestDataBundle(@NotNull GetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Bundle bundle = new Bundle();
            bundle.putBoolean(GetCredentialRequest.f6272f, request.getPreferIdentityDocUi());
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", request.getPreferImmediatelyAvailableCredentials());
            bundle.putParcelable(GetCredentialRequest.f6273g, request.getPreferUiBrandingComponentName());
            return bundle;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions) {
        this(credentialOptions, null, false, null, false, 30, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final GetCredentialRequest createFrom(@NotNull List<? extends CredentialOption> list, @Nullable String str, @NotNull Bundle bundle) {
        return INSTANCE.createFrom(list, str, bundle);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Bundle toRequestDataBundle(@NotNull GetCredentialRequest getCredentialRequest) {
        return INSTANCE.toRequestDataBundle(getCredentialRequest);
    }

    @NotNull
    public final List<CredentialOption> getCredentialOptions() {
        return this.credentialOptions;
    }

    @Nullable
    public final String getOrigin() {
        return this.origin;
    }

    public final boolean getPreferIdentityDocUi() {
        return this.preferIdentityDocUi;
    }

    @Nullable
    public final ComponentName getPreferUiBrandingComponentName() {
        return this.preferUiBrandingComponentName;
    }

    @JvmName(name = "preferImmediatelyAvailableCredentials")
    /* renamed from: preferImmediatelyAvailableCredentials, reason: from getter */
    public final boolean getPreferImmediatelyAvailableCredentials() {
        return this.preferImmediatelyAvailableCredentials;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str) {
        this(credentialOptions, str, false, null, false, 28, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, boolean z) {
        this(credentialOptions, str, z, null, false, 24, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, boolean z, @Nullable ComponentName componentName) {
        this(credentialOptions, str, z, componentName, false, 16, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, boolean z, @Nullable ComponentName componentName, boolean z2) {
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
        this.credentialOptions = credentialOptions;
        this.origin = str;
        this.preferIdentityDocUi = z;
        this.preferUiBrandingComponentName = componentName;
        this.preferImmediatelyAvailableCredentials = z2;
        if (!(!credentialOptions.isEmpty())) {
            throw new IllegalArgumentException("credentialOptions should not be empty".toString());
        }
    }

    public /* synthetic */ GetCredentialRequest(List list, String str, boolean z, ComponentName componentName, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : str, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : componentName, (i & 16) != 0 ? false : z2);
    }
}
