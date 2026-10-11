package androidx.credentials.provider;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.PasswordCredential;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB%\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, m61528d2 = {"Landroidx/credentials/provider/BeginGetPasswordOption;", "Landroidx/credentials/provider/BeginGetCredentialOption;", "", "", "d", "Ljava/util/Set;", "getAllowedUserIds", "()Ljava/util/Set;", "allowedUserIds", "Landroid/os/Bundle;", "candidateQueryData", "id", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Set;Landroid/os/Bundle;Ljava/lang/String;)V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BeginGetPasswordOption extends BeginGetCredentialOption {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Set<String> allowedUserIds;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Landroidx/credentials/provider/BeginGetPasswordOption$Companion;", "", "()V", "createForTest", "Landroidx/credentials/provider/BeginGetPasswordOption;", "data", "Landroid/os/Bundle;", "id", "", "createFrom", "createFrom$credentials_release", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @VisibleForTesting
        @NotNull
        public final BeginGetPasswordOption createForTest(@NotNull Bundle data, @NotNull String id) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id, "id");
            return createFrom$credentials_release(data, id);
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x0014, code lost:
        
            r1 = kotlin.collections.CollectionsKt___CollectionsKt.toSet(r1);
         */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.credentials.provider.BeginGetPasswordOption createFrom$credentials_release(@org.jetbrains.annotations.NotNull android.os.Bundle r2, @org.jetbrains.annotations.NotNull java.lang.String r3) {
            /*
                r1 = this;
                java.lang.String r1 = "data"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
                java.lang.String r1 = "id"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r1)
                java.lang.String r1 = "androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS"
                java.util.ArrayList r1 = r2.getStringArrayList(r1)
                androidx.credentials.provider.BeginGetPasswordOption r0 = new androidx.credentials.provider.BeginGetPasswordOption
                if (r1 == 0) goto L1a
                java.util.Set r1 = kotlin.collections.CollectionsKt.toSet(r1)
                if (r1 != 0) goto L1e
            L1a:
                java.util.Set r1 = kotlin.collections.SetsKt.emptySet()
            L1e:
                r0.<init>(r1, r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.BeginGetPasswordOption.Companion.createFrom$credentials_release(android.os.Bundle, java.lang.String):androidx.credentials.provider.BeginGetPasswordOption");
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginGetPasswordOption(@NotNull Set<String> allowedUserIds, @NotNull Bundle candidateQueryData, @NotNull String id) {
        super(id, PasswordCredential.TYPE_PASSWORD_CREDENTIAL, candidateQueryData);
        Intrinsics.checkNotNullParameter(allowedUserIds, "allowedUserIds");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(id, "id");
        this.allowedUserIds = allowedUserIds;
    }

    @JvmStatic
    @VisibleForTesting
    @NotNull
    public static final BeginGetPasswordOption createForTest(@NotNull Bundle bundle, @NotNull String str) {
        return INSTANCE.createForTest(bundle, str);
    }

    @NotNull
    public final Set<String> getAllowedUserIds() {
        return this.allowedUserIds;
    }
}
