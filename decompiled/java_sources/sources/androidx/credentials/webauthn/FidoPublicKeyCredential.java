package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0014\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Landroidx/credentials/webauthn/FidoPublicKeyCredential;", "", "", "json", "", "a", "[B", "getRawId", "()[B", "rawId", "Landroidx/credentials/webauthn/AuthenticatorResponse;", "b", "Landroidx/credentials/webauthn/AuthenticatorResponse;", "getResponse", "()Landroidx/credentials/webauthn/AuthenticatorResponse;", AbstractLogger.RESPONSE, "c", Constants.STRING_SIG, "getAuthenticatorAttachment", "()Ljava/lang/String;", "authenticatorAttachment", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "([BLandroidx/credentials/webauthn/AuthenticatorResponse;Ljava/lang/String;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class FidoPublicKeyCredential {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final byte[] rawId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final AuthenticatorResponse response;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String authenticatorAttachment;

    public FidoPublicKeyCredential(@NotNull byte[] rawId, @NotNull AuthenticatorResponse response, @NotNull String authenticatorAttachment) {
        Intrinsics.checkNotNullParameter(rawId, "rawId");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(authenticatorAttachment, "authenticatorAttachment");
        this.rawId = rawId;
        this.response = response;
        this.authenticatorAttachment = authenticatorAttachment;
    }

    @NotNull
    public final String getAuthenticatorAttachment() {
        return this.authenticatorAttachment;
    }

    @NotNull
    public final byte[] getRawId() {
        return this.rawId;
    }

    @NotNull
    public final AuthenticatorResponse getResponse() {
        return this.response;
    }

    @NotNull
    public final String json() {
        String b64Encode = WebAuthnUtils.INSTANCE.b64Encode(this.rawId);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", b64Encode);
        jSONObject.put("rawId", b64Encode);
        jSONObject.put("type", "public-key");
        jSONObject.put("authenticatorAttachment", this.authenticatorAttachment);
        jSONObject.put(AbstractLogger.RESPONSE, this.response.json());
        jSONObject.put("clientExtensionResults", new JSONObject());
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "ret.toString()");
        return jSONObject2;
    }
}
