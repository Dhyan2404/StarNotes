package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import androidx.credentials.webauthn.WebAuthnUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b#\b\u0007\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\u0006\u0010\u001b\u001a\u00020\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b3\u00104J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014R\u0014\u0010\u001b\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014R\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\fR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0010R\u0016\u0010!\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\fR\"\u0010(\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\f\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00102\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\f\u001a\u0004\b0\u0010+\"\u0004\b1\u0010-¨\u00065"}, m61528d2 = {"Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;", "Landroidx/credentials/webauthn/AuthenticatorResponse;", "", "defaultAuthenticatorData", "dataToSign", "Lorg/json/JSONObject;", "json", "Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;", "a", "Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;", "requestOptions", "b", "[B", "credentialId", "", "c", Constants.STRING_SIG, "origin", "", "d", Constants.HASIDCALL_INDEX_SIG, "up", "e", "uv", C6997f.f39671c, "be", C6998g.f39679a, "bs", C6999h.f39688c, "userHandle", "i", MessageConst.KEY_PACKAGE_NAME, "j", "clientDataHash", C4921e.f26537n, "Lorg/json/JSONObject;", "getClientJson", "()Lorg/json/JSONObject;", "setClientJson", "(Lorg/json/JSONObject;)V", "clientJson", "l", "getAuthenticatorData", "()[B", "setAuthenticatorData", "([B)V", "authenticatorData", "m", "getSignature", "setSignature", "signature", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[B)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class AuthenticatorAssertionResponse implements AuthenticatorResponse {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PublicKeyCredentialRequestOptions requestOptions;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final byte[] credentialId;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String origin;

    /* renamed from: d, reason: from kotlin metadata */
    public final boolean up;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean uv;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean be;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean bs;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public byte[] userHandle;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final String packageName;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public final byte[] clientDataHash;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public JSONObject clientJson;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public byte[] authenticatorData;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public byte[] signature;

    public AuthenticatorAssertionResponse(@NotNull PublicKeyCredentialRequestOptions requestOptions, @NotNull byte[] credentialId, @NotNull String origin, boolean z, boolean z2, boolean z3, boolean z4, @NotNull byte[] userHandle, @Nullable String str, @Nullable byte[] bArr) {
        Intrinsics.checkNotNullParameter(requestOptions, "requestOptions");
        Intrinsics.checkNotNullParameter(credentialId, "credentialId");
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(userHandle, "userHandle");
        this.requestOptions = requestOptions;
        this.credentialId = credentialId;
        this.origin = origin;
        this.up = z;
        this.uv = z2;
        this.be = z3;
        this.bs = z4;
        this.userHandle = userHandle;
        this.packageName = str;
        this.clientDataHash = bArr;
        this.clientJson = new JSONObject();
        this.signature = new byte[0];
        getClientJson().put("type", "webauthn.get");
        getClientJson().put(ClientData.KEY_CHALLENGE, WebAuthnUtils.INSTANCE.b64Encode(requestOptions.getCom.google.android.gms.fido.u2f.api.common.ClientData.KEY_CHALLENGE java.lang.String()));
        getClientJson().put("origin", origin);
        if (str != null) {
            getClientJson().put("androidPackageName", str);
        }
        this.authenticatorData = defaultAuthenticatorData();
    }

    @NotNull
    public final byte[] dataToSign() {
        byte[] plus;
        MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
        byte[] bArr = this.clientDataHash;
        if (bArr == null) {
            String jSONObject = getClientJson().toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "clientJson.toString()");
            byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            bArr = messageDigest.digest(bytes);
            Intrinsics.checkNotNullExpressionValue(bArr, "md.digest(clientJson.toString().toByteArray())");
        }
        plus = ArraysKt___ArraysJvmKt.plus(this.authenticatorData, bArr);
        return plus;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final byte[] defaultAuthenticatorData() {
        byte[] plus;
        byte[] plus2;
        MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
        byte[] bytes = this.requestOptions.getRpId().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] rpHash = messageDigest.digest(bytes);
        boolean z = this.up;
        boolean z2 = z;
        if (this.uv) {
            z2 = (z ? 1 : 0) | 4;
        }
        boolean z3 = z2;
        if (this.be) {
            z3 = (z2 ? 1 : 0) | '\b';
        }
        int i = z3;
        if (this.bs) {
            i = (z3 ? 1 : 0) | 16;
        }
        Intrinsics.checkNotNullExpressionValue(rpHash, "rpHash");
        plus = ArraysKt___ArraysJvmKt.plus(rpHash, new byte[]{(byte) i});
        plus2 = ArraysKt___ArraysJvmKt.plus(plus, new byte[]{0, 0, 0, 0});
        return plus2;
    }

    @NotNull
    public final byte[] getAuthenticatorData() {
        return this.authenticatorData;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject getClientJson() {
        return this.clientJson;
    }

    @NotNull
    public final byte[] getSignature() {
        return this.signature;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject json() {
        String jSONObject = getClientJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "clientJson.toString()");
        byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        JSONObject jSONObject2 = new JSONObject();
        if (this.clientDataHash == null) {
            jSONObject2.put("clientDataJSON", WebAuthnUtils.INSTANCE.b64Encode(bytes));
        }
        WebAuthnUtils.Companion companion = WebAuthnUtils.INSTANCE;
        jSONObject2.put("authenticatorData", companion.b64Encode(this.authenticatorData));
        jSONObject2.put("signature", companion.b64Encode(this.signature));
        jSONObject2.put("userHandle", companion.b64Encode(this.userHandle));
        return jSONObject2;
    }

    public final void setAuthenticatorData(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.authenticatorData = bArr;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    public void setClientJson(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<set-?>");
        this.clientJson = jSONObject;
    }

    public final void setSignature(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.signature = bArr;
    }

    public /* synthetic */ AuthenticatorAssertionResponse(PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions, byte[] bArr, String str, boolean z, boolean z2, boolean z3, boolean z4, byte[] bArr2, String str2, byte[] bArr3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(publicKeyCredentialRequestOptions, bArr, str, z, z2, z3, z4, bArr2, (i & 256) != 0 ? null : str2, (i & 512) != 0 ? null : bArr3);
    }
}
