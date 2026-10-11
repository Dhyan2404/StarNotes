package androidx.credentials.provider;

import androidx.credentials.CredentialOption;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Landroidx/credentials/provider/ProviderGetCredentialRequest;", "", "", "Landroidx/credentials/CredentialOption;", "a", "Ljava/util/List;", "getCredentialOptions", "()Ljava/util/List;", "credentialOptions", "Landroidx/credentials/provider/CallingAppInfo;", "b", "Landroidx/credentials/provider/CallingAppInfo;", "getCallingAppInfo", "()Landroidx/credentials/provider/CallingAppInfo;", "callingAppInfo", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;)V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ProviderGetCredentialRequest {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<CredentialOption> credentialOptions;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CallingAppInfo callingAppInfo;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0001¢\u0006\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;", "", "()V", "createFrom", "Landroidx/credentials/provider/ProviderGetCredentialRequest;", "options", "", "Landroidx/credentials/CredentialOption;", "callingAppInfo", "Landroidx/credentials/provider/CallingAppInfo;", "createFrom$credentials_release", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ProviderGetCredentialRequest createFrom$credentials_release(@NotNull List<? extends CredentialOption> options, @NotNull CallingAppInfo callingAppInfo) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
            return new ProviderGetCredentialRequest(options, callingAppInfo);
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProviderGetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @NotNull CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
        Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
        this.credentialOptions = credentialOptions;
        this.callingAppInfo = callingAppInfo;
    }

    @NotNull
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }

    @NotNull
    public final List<CredentialOption> getCredentialOptions() {
        return this.credentialOptions;
    }
}
