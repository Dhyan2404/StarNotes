package androidx.credentials;

import android.annotation.SuppressLint;
import android.credentials.PrepareGetCredentialResponse;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(34)
@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u00002\u00020\u0001:\u0003&'(Bc\b\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b\u0012\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000ej\u0004\u0018\u0001`\u000f\u0012\u0014\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000ej\u0004\u0018\u0001`\u0015\u0012\u001a\u0010\u001f\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a\u0012\u0006\u0010\"\u001a\u00020\u0004¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0007R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR%\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000ej\u0004\u0018\u0001`\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R%\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000ej\u0004\u0018\u0001`\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013R+\u0010\u001f\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\"\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006)"}, m61528d2 = {"Landroidx/credentials/PrepareGetCredentialResponse;", "", "", "credentialType", "", "hasCredentialResults", "hasAuthenticationResults", "hasRemoteResults", "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "a", "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "getPendingGetCredentialHandle", "()Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "pendingGetCredentialHandle", "Lkotlin/Function0;", "Landroidx/credentials/HasRemoteResultsDelegate;", "b", "Lkotlin/jvm/functions/Function0;", "getHasRemoteResultsDelegate", "()Lkotlin/jvm/functions/Function0;", "hasRemoteResultsDelegate", "Landroidx/credentials/HasAuthenticationResultsDelegate;", "c", "getHasAuthResultsDelegate", "hasAuthResultsDelegate", "Lkotlin/Function1;", "Landroidx/credentials/HasCredentialResultsDelegate;", "d", "Lkotlin/jvm/functions/Function1;", "getCredentialTypeDelegate", "()Lkotlin/jvm/functions/Function1;", "credentialTypeDelegate", "e", Constants.HASIDCALL_INDEX_SIG, "isNullHandlesForTest", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V", "Builder", "PendingGetCredentialHandle", "TestBuilder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SuppressLint({"MissingGetterMatchingBuilder"})
/* loaded from: classes3.dex */
public final class PrepareGetCredentialResponse {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final PendingGetCredentialHandle pendingGetCredentialHandle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final Function0<Boolean> hasRemoteResultsDelegate;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final Function0<Boolean> hasAuthResultsDelegate;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final Function1<String, Boolean> credentialTypeDelegate;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean isNullHandlesForTest;

    @Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0003J\b\u0010\u000e\u001a\u00020\fH\u0003J\b\u0010\u000f\u001a\u00020\fH\u0003R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0010R$\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u0012j\u0004\u0018\u0001`\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0014R$\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u0012j\u0004\u0018\u0001`\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0014R*\u0010\u001c\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0018j\u0004\u0018\u0001`\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Landroidx/credentials/PrepareGetCredentialResponse$Builder;", "", "Landroid/credentials/PrepareGetCredentialResponse;", "resp", "setFrameworkResponse", "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "handle", "setPendingGetCredentialHandle", "Landroidx/credentials/PrepareGetCredentialResponse;", PrivilegedApp.f6529f, "", "credentialType", "", "b", "a", "c", "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "pendingGetCredentialHandle", "Lkotlin/Function0;", "Landroidx/credentials/HasRemoteResultsDelegate;", "Lkotlin/jvm/functions/Function0;", "hasRemoteResultsDelegate", "Landroidx/credentials/HasAuthenticationResultsDelegate;", "hasAuthResultsDelegate", "Lkotlin/Function1;", "Landroidx/credentials/HasCredentialResultsDelegate;", "d", "Lkotlin/jvm/functions/Function1;", "hasCredentialResultsDelegate", "e", "Landroid/credentials/PrepareGetCredentialResponse;", "frameworkResponse", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public PendingGetCredentialHandle pendingGetCredentialHandle;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Function0<Boolean> hasRemoteResultsDelegate;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public Function0<Boolean> hasAuthResultsDelegate;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Function1<? super String, Boolean> hasCredentialResultsDelegate;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public android.credentials.PrepareGetCredentialResponse frameworkResponse;

        @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
        /* renamed from: a */
        public final boolean m3881a() {
            android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse = this.frameworkResponse;
            Intrinsics.checkNotNull(prepareGetCredentialResponse);
            return prepareGetCredentialResponse.hasAuthenticationResults();
        }

        @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
        /* renamed from: b */
        public final boolean m3882b(String credentialType) {
            android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse = this.frameworkResponse;
            Intrinsics.checkNotNull(prepareGetCredentialResponse);
            return prepareGetCredentialResponse.hasCredentialResults(credentialType);
        }

        @NotNull
        public final PrepareGetCredentialResponse build() {
            return new PrepareGetCredentialResponse(this.pendingGetCredentialHandle, this.hasRemoteResultsDelegate, this.hasAuthResultsDelegate, this.hasCredentialResultsDelegate, false, null);
        }

        @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
        /* renamed from: c */
        public final boolean m3883c() {
            android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse = this.frameworkResponse;
            Intrinsics.checkNotNull(prepareGetCredentialResponse);
            return prepareGetCredentialResponse.hasRemoteResults();
        }

        @NotNull
        public final Builder setFrameworkResponse(@Nullable android.credentials.PrepareGetCredentialResponse resp) {
            this.frameworkResponse = resp;
            if (resp != null) {
                this.hasCredentialResultsDelegate = new PrepareGetCredentialResponse$Builder$setFrameworkResponse$1(this);
                this.hasAuthResultsDelegate = new PrepareGetCredentialResponse$Builder$setFrameworkResponse$2(this);
                this.hasRemoteResultsDelegate = new PrepareGetCredentialResponse$Builder$setFrameworkResponse$3(this);
            }
            return this;
        }

        @NotNull
        public final Builder setPendingGetCredentialHandle(@NotNull PendingGetCredentialHandle handle) {
            Intrinsics.checkNotNullParameter(handle, "handle");
            this.pendingGetCredentialHandle = handle;
            return this;
        }
    }

    @RequiresApi(34)
    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0007¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "", "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "a", "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "getFrameworkHandle", "()Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "frameworkHandle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class PendingGetCredentialHandle {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public final PrepareGetCredentialResponse.PendingGetCredentialHandle frameworkHandle;

        public PendingGetCredentialHandle(@Nullable PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle) {
            this.frameworkHandle = pendingGetCredentialHandle;
            if (Build.VERSION.SDK_INT >= 34) {
                Intrinsics.checkNotNull(pendingGetCredentialHandle);
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @Nullable
        public final PrepareGetCredentialResponse.PendingGetCredentialHandle getFrameworkHandle() {
            return this.frameworkHandle;
        }
    }

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\u0007\u001a\u00020\u00002\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u0005H\u0007J\u001a\u0010\n\u001a\u00020\u00002\u0010\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\u00040\bj\u0002`\tH\u0007J\u001a\u0010\f\u001a\u00020\u00002\u0010\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\u00040\bj\u0002`\u000bH\u0007J\u0006\u0010\u000e\u001a\u00020\rR$\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bj\u0004\u0018\u0001`\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R$\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bj\u0004\u0018\u0001`\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R*\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\u0004\u0018\u0001`\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;", "", "Lkotlin/Function1;", "", "", "Landroidx/credentials/HasCredentialResultsDelegate;", Constants.TRANSLET_OUTPUT_PNAME, "setCredentialTypeDelegate", "Lkotlin/Function0;", "Landroidx/credentials/HasAuthenticationResultsDelegate;", "setHasAuthResultsDelegate", "Landroidx/credentials/HasRemoteResultsDelegate;", "setHasRemoteResultsDelegate", "Landroidx/credentials/PrepareGetCredentialResponse;", PrivilegedApp.f6529f, "a", "Lkotlin/jvm/functions/Function0;", "hasRemoteResultsDelegate", "b", "hasAuthResultsDelegate", "c", "Lkotlin/jvm/functions/Function1;", "hasCredentialResultsDelegate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class TestBuilder {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public Function0<Boolean> hasRemoteResultsDelegate;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Function0<Boolean> hasAuthResultsDelegate;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public Function1<? super String, Boolean> hasCredentialResultsDelegate;

        @NotNull
        public final PrepareGetCredentialResponse build() {
            return new PrepareGetCredentialResponse(null, this.hasRemoteResultsDelegate, this.hasAuthResultsDelegate, this.hasCredentialResultsDelegate, true, null);
        }

        @VisibleForTesting
        @NotNull
        public final TestBuilder setCredentialTypeDelegate(@NotNull Function1<? super String, Boolean> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.hasCredentialResultsDelegate = handler;
            return this;
        }

        @VisibleForTesting
        @NotNull
        public final TestBuilder setHasAuthResultsDelegate(@NotNull Function0<Boolean> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.hasAuthResultsDelegate = handler;
            return this;
        }

        @VisibleForTesting
        @NotNull
        public final TestBuilder setHasRemoteResultsDelegate(@NotNull Function0<Boolean> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.hasRemoteResultsDelegate = handler;
            return this;
        }
    }

    public /* synthetic */ PrepareGetCredentialResponse(PendingGetCredentialHandle pendingGetCredentialHandle, Function0 function0, Function0 function02, Function1 function1, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(pendingGetCredentialHandle, function0, function02, function1, z);
    }

    @Nullable
    public final Function1<String, Boolean> getCredentialTypeDelegate() {
        return this.credentialTypeDelegate;
    }

    @Nullable
    public final Function0<Boolean> getHasAuthResultsDelegate() {
        return this.hasAuthResultsDelegate;
    }

    @Nullable
    public final Function0<Boolean> getHasRemoteResultsDelegate() {
        return this.hasRemoteResultsDelegate;
    }

    @Nullable
    public final PendingGetCredentialHandle getPendingGetCredentialHandle() {
        return this.pendingGetCredentialHandle;
    }

    @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
    public final boolean hasAuthenticationResults() {
        Function0<Boolean> function0 = this.hasAuthResultsDelegate;
        if (function0 != null) {
            return function0.invoke().booleanValue();
        }
        return false;
    }

    @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
    public final boolean hasCredentialResults(@NotNull String credentialType) {
        Intrinsics.checkNotNullParameter(credentialType, "credentialType");
        Function1<String, Boolean> function1 = this.credentialTypeDelegate;
        if (function1 != null) {
            return function1.invoke(credentialType).booleanValue();
        }
        return false;
    }

    @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
    public final boolean hasRemoteResults() {
        Function0<Boolean> function0 = this.hasRemoteResultsDelegate;
        if (function0 != null) {
            return function0.invoke().booleanValue();
        }
        return false;
    }

    /* renamed from: isNullHandlesForTest, reason: from getter */
    public final boolean getIsNullHandlesForTest() {
        return this.isNullHandlesForTest;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PrepareGetCredentialResponse(PendingGetCredentialHandle pendingGetCredentialHandle, Function0<Boolean> function0, Function0<Boolean> function02, Function1<? super String, Boolean> function1, boolean z) {
        this.pendingGetCredentialHandle = pendingGetCredentialHandle;
        this.hasRemoteResultsDelegate = function0;
        this.hasAuthResultsDelegate = function02;
        this.credentialTypeDelegate = function1;
        this.isNullHandlesForTest = z;
        if (Build.VERSION.SDK_INT < 34 || z) {
            return;
        }
        Intrinsics.checkNotNull(pendingGetCredentialHandle);
    }
}
