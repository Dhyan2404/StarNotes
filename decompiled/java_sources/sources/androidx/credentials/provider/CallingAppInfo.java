package androidx.credentials.provider;

import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.credentials.provider.utils.RequestValidationUtil;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB%\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0016\u0010\r\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0002R\u0017\u0010\u0011\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0016\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\r\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0007¢\u0006\f\n\u0004\b\u0017\u0010\u000e\u001a\u0004\b\u0004\u0010\u0010¨\u0006\u001d"}, m61528d2 = {"Landroidx/credentials/provider/CallingAppInfo;", "", "", "privilegedAllowlist", "getOrigin", "", "isOriginPopulated", "", "Landroidx/credentials/provider/utils/PrivilegedApp;", "candidateApps", "a", "", "candidateFingerprints", "b", Constants.STRING_SIG, "getPackageName", "()Ljava/lang/String;", MessageConst.KEY_PACKAGE_NAME, "Landroid/content/pm/SigningInfo;", "Landroid/content/pm/SigningInfo;", "getSigningInfo", "()Landroid/content/pm/SigningInfo;", "signingInfo", "c", "origin", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V", "Companion", "SignatureVerifierApi28", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"})
/* loaded from: classes3.dex */
public final class CallingAppInfo {

    /* renamed from: d */
    @NotNull
    public static final String f6370d = "CallingAppInfo";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String packageName;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final SigningInfo signingInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final String origin;

    @RequiresApi(28)
    /* loaded from: classes3.dex */
    public static final class SignatureVerifierApi28 {

        /* renamed from: a */
        @NotNull
        public final SigningInfo f6374a;

        public SignatureVerifierApi28(@NotNull SigningInfo signingInfo) {
            Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
            this.f6374a = signingInfo;
        }

        /* renamed from: a */
        public final Set<String> m3919a(Signature[] signatureArr) {
            String joinToString$default;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Signature signature : signatureArr) {
                byte[] digest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(signature.toByteArray());
                Intrinsics.checkNotNullExpressionValue(digest, "digest");
                joinToString$default = ArraysKt___ArraysKt.joinToString$default(digest, (CharSequence) ":", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new Function1<Byte, CharSequence>() { // from class: androidx.credentials.provider.CallingAppInfo$SignatureVerifierApi28$convertToFingerprints$1
                    @NotNull
                    public final CharSequence invoke(byte b) {
                        String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
                        return format;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ CharSequence invoke(Byte b) {
                        return invoke(b.byteValue());
                    }
                }, 30, (Object) null);
                linkedHashSet.add(joinToString$default);
            }
            return linkedHashSet;
        }

        /* renamed from: b */
        public final Set<String> m3920b() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (this.f6374a.hasMultipleSigners() && this.f6374a.getApkContentsSigners() != null) {
                Signature[] apkContentsSigners = this.f6374a.getApkContentsSigners();
                Intrinsics.checkNotNullExpressionValue(apkContentsSigners, "signingInfo.apkContentsSigners");
                linkedHashSet.addAll(m3919a(apkContentsSigners));
            } else if (this.f6374a.getSigningCertificateHistory() != null) {
                Signature signature = this.f6374a.getSigningCertificateHistory()[0];
                Intrinsics.checkNotNullExpressionValue(signature, "signingInfo.signingCertificateHistory[0]");
                linkedHashSet.addAll(m3919a(new Signature[]{signature}));
            }
            return linkedHashSet;
        }

        /* renamed from: c */
        public final boolean m3921c(@NotNull Set<String> candidateSigFingerprints) {
            Set intersect;
            Intrinsics.checkNotNullParameter(candidateSigFingerprints, "candidateSigFingerprints");
            Set<String> m3920b = m3920b();
            if (this.f6374a.hasMultipleSigners()) {
                return candidateSigFingerprints.containsAll(m3920b);
            }
            intersect = CollectionsKt___CollectionsKt.intersect(candidateSigFingerprints, m3920b);
            return !intersect.isEmpty();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CallingAppInfo(@NotNull String packageName, @NotNull SigningInfo signingInfo) {
        this(packageName, signingInfo, null, 4, null);
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
    }

    /* renamed from: a */
    public final boolean m3917a(List<PrivilegedApp> candidateApps) {
        for (PrivilegedApp privilegedApp : candidateApps) {
            if (Intrinsics.areEqual(privilegedApp.getPackageName(), this.packageName)) {
                return m3918b(privilegedApp.getFingerprints());
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m3918b(Set<String> candidateFingerprints) {
        return new SignatureVerifierApi28(this.signingInfo).m3921c(candidateFingerprints);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public final String getOrigin() {
        return this.origin;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final SigningInfo getSigningInfo() {
        return this.signingInfo;
    }

    public final boolean isOriginPopulated() {
        return this.origin != null;
    }

    @JvmOverloads
    public CallingAppInfo(@NotNull String packageName, @NotNull SigningInfo signingInfo, @Nullable String str) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
        this.packageName = packageName;
        this.signingInfo = signingInfo;
        this.origin = str;
        if (!(packageName.length() > 0)) {
            throw new IllegalArgumentException("packageName must not be empty".toString());
        }
    }

    @Nullable
    public final String getOrigin(@NotNull String privilegedAllowlist) {
        Intrinsics.checkNotNullParameter(privilegedAllowlist, "privilegedAllowlist");
        if (RequestValidationUtil.INSTANCE.isValidJSON(privilegedAllowlist)) {
            String str = this.origin;
            if (str == null) {
                return str;
            }
            try {
                if (m3917a(PrivilegedApp.INSTANCE.extractPrivilegedApps$credentials_release(new JSONObject(privilegedAllowlist)))) {
                    return this.origin;
                }
                throw new IllegalStateException("Origin is not being returned as the calling app did notmatch the privileged allowlist");
            } catch (JSONException unused) {
                throw new IllegalArgumentException("privilegedAllowlist must be formatted properly");
            }
        }
        throw new IllegalArgumentException("privilegedAllowlist must not be empty, and must be a valid JSON");
    }

    public /* synthetic */ CallingAppInfo(String str, SigningInfo signingInfo, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, signingInfo, (i & 4) != 0 ? null : str2);
    }
}
