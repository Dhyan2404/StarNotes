package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0007\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u0015\u0012\u0006\u0010\u001e\u001a\u00020\u0015\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b/\u00100J\u000f\u0010\u0005\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\rR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0017R\u0014\u0010\u001e\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0016\u0010 \u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0013R\u0016\u0010\"\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\rR\"\u0010)\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\r\u001a\u0004\b+\u0010\u0004\"\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;", "Landroidx/credentials/webauthn/AuthenticatorResponse;", "", "defaultAttestationObject$credentials_release", "()[B", "defaultAttestationObject", "Lorg/json/JSONObject;", "json", "a", "Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;", "Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;", "requestOptions", "b", "[B", "credentialId", "c", "credentialPublicKey", "", "d", Constants.STRING_SIG, "origin", "", "e", Constants.HASIDCALL_INDEX_SIG, "up", C6997f.f39671c, "uv", C6998g.f39679a, "be", C6999h.f39688c, "bs", "i", MessageConst.KEY_PACKAGE_NAME, "j", "clientDataHash", C4921e.f26537n, "Lorg/json/JSONObject;", "getClientJson", "()Lorg/json/JSONObject;", "setClientJson", "(Lorg/json/JSONObject;)V", "clientJson", "l", "getAttestationObject", "setAttestationObject", "([B)V", "attestationObject", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;[B[BLjava/lang/String;ZZZZLjava/lang/String;[B)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class AuthenticatorAttestationResponse implements AuthenticatorResponse {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PublicKeyCredentialCreationOptions requestOptions;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final byte[] credentialId;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final byte[] credentialPublicKey;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String origin;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean up;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean uv;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean be;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean bs;

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
    public byte[] attestationObject;

    public AuthenticatorAttestationResponse(@NotNull PublicKeyCredentialCreationOptions requestOptions, @NotNull byte[] credentialId, @NotNull byte[] credentialPublicKey, @NotNull String origin, boolean z, boolean z2, boolean z3, boolean z4, @Nullable String str, @Nullable byte[] bArr) {
        Intrinsics.checkNotNullParameter(requestOptions, "requestOptions");
        Intrinsics.checkNotNullParameter(credentialId, "credentialId");
        Intrinsics.checkNotNullParameter(credentialPublicKey, "credentialPublicKey");
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.requestOptions = requestOptions;
        this.credentialId = credentialId;
        this.credentialPublicKey = credentialPublicKey;
        this.origin = origin;
        this.up = z;
        this.uv = z2;
        this.be = z3;
        this.bs = z4;
        this.packageName = str;
        this.clientDataHash = bArr;
        this.clientJson = new JSONObject();
        getClientJson().put("type", "webauthn.create");
        getClientJson().put(ClientData.KEY_CHALLENGE, WebAuthnUtils.INSTANCE.b64Encode(requestOptions.getCom.google.android.gms.fido.u2f.api.common.ClientData.KEY_CHALLENGE java.lang.String()));
        getClientJson().put("origin", origin);
        if (str != null) {
            getClientJson().put("androidPackageName", str);
        }
        this.attestationObject = defaultAttestationObject$credentials_release();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* renamed from: a */
    public final byte[] m3967a() {
        byte[] plus;
        byte[] plus2;
        byte[] plus3;
        byte[] plus4;
        byte[] plus5;
        byte[] plus6;
        MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
        byte[] bytes = this.requestOptions.getRp().getId().getBytes(Charsets.UTF_8);
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
        ?? r1 = z3;
        if (this.bs) {
            r1 = (z3 ? 1 : 0) | 16;
        }
        int i = r1 | 64;
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 16; i2++) {
            bArr[i2] = 0;
        }
        byte[] bArr2 = this.credentialId;
        byte[] bArr3 = {(byte) (bArr2.length >> 8), (byte) bArr2.length};
        Intrinsics.checkNotNullExpressionValue(rpHash, "rpHash");
        plus = ArraysKt___ArraysJvmKt.plus(rpHash, new byte[]{(byte) i});
        plus2 = ArraysKt___ArraysJvmKt.plus(plus, new byte[]{0, 0, 0, 0});
        plus3 = ArraysKt___ArraysJvmKt.plus(plus2, bArr);
        plus4 = ArraysKt___ArraysJvmKt.plus(plus3, bArr3);
        plus5 = ArraysKt___ArraysJvmKt.plus(plus4, this.credentialId);
        plus6 = ArraysKt___ArraysJvmKt.plus(plus5, this.credentialPublicKey);
        return plus6;
    }

    @NotNull
    public final byte[] defaultAttestationObject$credentials_release() {
        Map emptyMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("fmt", "none");
        emptyMap = MapsKt__MapsKt.emptyMap();
        linkedHashMap.put("attStmt", emptyMap);
        linkedHashMap.put("authData", m3967a());
        return new Cbor().encode(linkedHashMap);
    }

    @NotNull
    public final byte[] getAttestationObject() {
        return this.attestationObject;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject getClientJson() {
        return this.clientJson;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject json() {
        List listOf;
        String jSONObject = getClientJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "clientJson.toString()");
        byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        JSONObject jSONObject2 = new JSONObject();
        if (this.clientDataHash == null) {
            jSONObject2.put("clientDataJSON", WebAuthnUtils.INSTANCE.b64Encode(bytes));
        }
        jSONObject2.put("attestationObject", WebAuthnUtils.INSTANCE.b64Encode(this.attestationObject));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"internal", "hybrid"});
        jSONObject2.put("transports", new JSONArray((Collection<?>) listOf));
        return jSONObject2;
    }

    public final void setAttestationObject(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.attestationObject = bArr;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    public void setClientJson(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<set-?>");
        this.clientJson = jSONObject;
    }

    public /* synthetic */ AuthenticatorAttestationResponse(PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions, byte[] bArr, byte[] bArr2, String str, boolean z, boolean z2, boolean z3, boolean z4, String str2, byte[] bArr3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(publicKeyCredentialCreationOptions, bArr, bArr2, str, z, z2, z3, z4, (i & 256) != 0 ? null : str2, (i & 512) != 0 ? null : bArr3);
    }
}
