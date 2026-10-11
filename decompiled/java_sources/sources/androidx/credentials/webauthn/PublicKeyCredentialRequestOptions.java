package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import androidx.credentials.webauthn.WebAuthnUtils;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001c\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018¨\u0006 "}, m61528d2 = {"Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;", "", "Lorg/json/JSONObject;", "a", "Lorg/json/JSONObject;", "getJson", "()Lorg/json/JSONObject;", "json", "", "b", "[B", "getChallenge", "()[B", ClientData.KEY_CHALLENGE, "", "c", "J", "getTimeout", "()J", "timeout", "", "d", Constants.STRING_SIG, "getRpId", "()Ljava/lang/String;", "rpId", "e", "getUserVerification", "userVerification", "requestJson", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class PublicKeyCredentialRequestOptions {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final JSONObject json;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final byte[] challenge;

    /* renamed from: c, reason: from kotlin metadata */
    public final long timeout;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String rpId;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String userVerification;

    public PublicKeyCredentialRequestOptions(@NotNull String requestJson) {
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        JSONObject jSONObject = new JSONObject(requestJson);
        this.json = jSONObject;
        String challengeString = jSONObject.getString(ClientData.KEY_CHALLENGE);
        WebAuthnUtils.Companion companion = WebAuthnUtils.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(challengeString, "challengeString");
        this.challenge = companion.b64Decode(challengeString);
        this.timeout = jSONObject.optLong("timeout", 0L);
        String optString = jSONObject.optString("rpId", "");
        Intrinsics.checkNotNullExpressionValue(optString, "json.optString(\"rpId\", \"\")");
        this.rpId = optString;
        String optString2 = jSONObject.optString("userVerification", "preferred");
        Intrinsics.checkNotNullExpressionValue(optString2, "json.optString(\"userVerification\", \"preferred\")");
        this.userVerification = optString2;
    }

    @NotNull
    public final byte[] getChallenge() {
        return this.challenge;
    }

    @NotNull
    public final JSONObject getJson() {
        return this.json;
    }

    @NotNull
    public final String getRpId() {
        return this.rpId;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    @NotNull
    public final String getUserVerification() {
        return this.userVerification;
    }
}
