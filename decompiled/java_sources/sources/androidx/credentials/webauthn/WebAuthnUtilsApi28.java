package androidx.credentials.webauthn;

import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.CallingAppInfo;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.credentials.webauthn.WebAuthnUtils;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.jetbrains.annotations.NotNull;

@RequiresApi(28)
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Landroidx/credentials/webauthn/WebAuthnUtilsApi28;", "", "()V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class WebAuthnUtilsApi28 {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Landroidx/credentials/webauthn/WebAuthnUtilsApi28$Companion;", "", "()V", "appInfoToOrigin", "", PrivilegedApp.f6532i, "Landroidx/credentials/provider/CallingAppInfo;", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String appInfoToOrigin(@NotNull CallingAppInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            byte[] certHash = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(info.getSigningInfo().getApkContentsSigners()[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            sb.append("android:apk-key-hash:");
            WebAuthnUtils.Companion companion = WebAuthnUtils.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(certHash, "certHash");
            sb.append(companion.b64Encode(certHash));
            return sb.toString();
        }

        public Companion() {
        }
    }
}
