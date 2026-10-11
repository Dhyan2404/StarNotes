package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B=\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011B3\b\u0017\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002¢\u0006\u0004\b\u0010\u0010\u0012R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m61528d2 = {"Landroidx/credentials/GetPasswordOption;", "Landroidx/credentials/CredentialOption;", "", "", C6998g.f39679a, "Ljava/util/Set;", "getAllowedUserIds", "()Ljava/util/Set;", "allowedUserIds", "", "isAutoSelectAllowed", "Landroid/content/ComponentName;", "allowedProviders", "Landroid/os/Bundle;", "requestData", "candidateQueryData", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Set;ZLjava/util/Set;Landroid/os/Bundle;Landroid/os/Bundle;)V", "(Ljava/util/Set;ZLjava/util/Set;)V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class GetPasswordOption extends CredentialOption {

    @NotNull
    public static final String BUNDLE_KEY_ALLOWED_USER_IDS = "androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Set<String> allowedUserIds;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\bH\u0001¢\u0006\u0002\b\rJ\u001b\u0010\u000e\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\nH\u0001¢\u0006\u0002\b\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Landroidx/credentials/GetPasswordOption$Companion;", "", "()V", "BUNDLE_KEY_ALLOWED_USER_IDS", "", "createFrom", "Landroidx/credentials/GetPasswordOption;", "data", "Landroid/os/Bundle;", "allowedProviders", "", "Landroid/content/ComponentName;", "candidateQueryData", "createFrom$credentials_release", "toBundle", "allowUserIds", "toBundle$credentials_release", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x0019, code lost:
        
            r8 = kotlin.collections.CollectionsKt___CollectionsKt.toSet(r8);
         */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.credentials.GetPasswordOption createFrom$credentials_release(@org.jetbrains.annotations.NotNull android.os.Bundle r9, @org.jetbrains.annotations.NotNull java.util.Set<android.content.ComponentName> r10, @org.jetbrains.annotations.NotNull android.os.Bundle r11) {
            /*
                r8 = this;
                java.lang.String r8 = "data"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r8)
                java.lang.String r8 = "allowedProviders"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r8)
                java.lang.String r8 = "candidateQueryData"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r8)
                java.lang.String r8 = "androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS"
                java.util.ArrayList r8 = r9.getStringArrayList(r8)
                androidx.credentials.GetPasswordOption r7 = new androidx.credentials.GetPasswordOption
                if (r8 == 0) goto L1f
                java.util.Set r8 = kotlin.collections.CollectionsKt.toSet(r8)
                if (r8 != 0) goto L23
            L1f:
                java.util.Set r8 = kotlin.collections.SetsKt.emptySet()
            L23:
                r1 = r8
                java.lang.String r8 = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"
                r0 = 0
                boolean r2 = r9.getBoolean(r8, r0)
                r6 = 0
                r0 = r7
                r3 = r10
                r4 = r9
                r5 = r11
                r0.<init>(r1, r2, r3, r4, r5, r6)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.GetPasswordOption.Companion.createFrom$credentials_release(android.os.Bundle, java.util.Set, android.os.Bundle):androidx.credentials.GetPasswordOption");
        }

        @JvmStatic
        @NotNull
        public final Bundle toBundle$credentials_release(@NotNull Set<String> allowUserIds) {
            Intrinsics.checkNotNullParameter(allowUserIds, "allowUserIds");
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(GetPasswordOption.BUNDLE_KEY_ALLOWED_USER_IDS, new ArrayList<>(allowUserIds));
            return bundle;
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public GetPasswordOption() {
        this((Set) null, false, (Set) null, 7, (DefaultConstructorMarker) null);
    }

    @NotNull
    public final Set<String> getAllowedUserIds() {
        return this.allowedUserIds;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GetPasswordOption(@NotNull Set<String> allowedUserIds) {
        this((Set) allowedUserIds, false, (Set) null, 6, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(allowedUserIds, "allowedUserIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GetPasswordOption(@NotNull Set<String> allowedUserIds, boolean z) {
        this(allowedUserIds, z, (Set) null, 4, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(allowedUserIds, "allowedUserIds");
    }

    public /* synthetic */ GetPasswordOption(Set set, boolean z, Set set2, Bundle bundle, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this((Set<String>) set, z, (Set<ComponentName>) set2, bundle, bundle2);
    }

    public GetPasswordOption(Set<String> set, boolean z, Set<ComponentName> set2, Bundle bundle, Bundle bundle2) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, bundle, bundle2, false, z, set2);
        this.allowedUserIds = set;
    }

    public /* synthetic */ GetPasswordOption(Set set, boolean z, Set set2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 2) != 0 ? false : z, (i & 4) != 0 ? SetsKt__SetsKt.emptySet() : set2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @kotlin.jvm.JvmOverloads
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GetPasswordOption(@org.jetbrains.annotations.NotNull java.util.Set<java.lang.String> r8, boolean r9, @org.jetbrains.annotations.NotNull java.util.Set<android.content.ComponentName> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "allowedUserIds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "allowedProviders"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            androidx.credentials.GetPasswordOption$Companion r0 = androidx.credentials.GetPasswordOption.INSTANCE
            android.os.Bundle r5 = r0.toBundle$credentials_release(r8)
            android.os.Bundle r6 = r0.toBundle$credentials_release(r8)
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.GetPasswordOption.<init>(java.util.Set, boolean, java.util.Set):void");
    }
}
