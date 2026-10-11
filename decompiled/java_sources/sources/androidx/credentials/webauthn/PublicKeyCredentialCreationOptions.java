package androidx.credentials.webauthn;

import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.core.content.FileProvider;
import androidx.credentials.webauthn.WebAuthnUtils;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010?\u001a\u000207¢\u0006\u0004\b@\u0010=R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R(\u0010.\u001a\b\u0012\u0004\u0012\u00020)0\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u001d\u001a\u0004\b+\u0010\u001f\"\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006A"}, m61528d2 = {"Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;", "", "Lorg/json/JSONObject;", "a", "Lorg/json/JSONObject;", "getJson", "()Lorg/json/JSONObject;", "json", "Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;", "b", "Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;", "getRp", "()Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;", "rp", "Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;", "c", "Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;", "getUser", "()Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;", "user", "", "d", "[B", "getChallenge", "()[B", ClientData.KEY_CHALLENGE, "", "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;", "e", "Ljava/util/List;", "getPubKeyCredParams", "()Ljava/util/List;", "pubKeyCredParams", "", C6997f.f39671c, "J", "getTimeout", "()J", "setTimeout", "(J)V", "timeout", "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;", C6998g.f39679a, "getExcludeCredentials", "setExcludeCredentials", "(Ljava/util/List;)V", "excludeCredentials", "Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;", C6999h.f39688c, "Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;", "getAuthenticatorSelection", "()Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;", "setAuthenticatorSelection", "(Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;)V", "authenticatorSelection", "", "i", Constants.STRING_SIG, "getAttestation", "()Ljava/lang/String;", "setAttestation", "(Ljava/lang/String;)V", "attestation", "requestJson", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class PublicKeyCredentialCreationOptions {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final JSONObject json;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PublicKeyCredentialRpEntity rp;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final PublicKeyCredentialUserEntity user;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final byte[] challenge;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<PublicKeyCredentialParameters> pubKeyCredParams;

    /* renamed from: f, reason: from kotlin metadata */
    public long timeout;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<PublicKeyCredentialDescriptor> excludeCredentials;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public AuthenticatorSelectionCriteria authenticatorSelection;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String attestation;

    public PublicKeyCredentialCreationOptions(@NotNull String requestJson) {
        List<PublicKeyCredentialParameters> list;
        List<PublicKeyCredentialDescriptor> emptyList;
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        JSONObject jSONObject = new JSONObject(requestJson);
        this.json = jSONObject;
        String challengeString = jSONObject.getString(ClientData.KEY_CHALLENGE);
        WebAuthnUtils.Companion companion = WebAuthnUtils.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(challengeString, "challengeString");
        this.challenge = companion.b64Decode(challengeString);
        JSONObject jSONObject2 = jSONObject.getJSONObject("rp");
        String string = jSONObject2.getString("name");
        Intrinsics.checkNotNullExpressionValue(string, "rpJson.getString(\"name\")");
        String string2 = jSONObject2.getString("id");
        Intrinsics.checkNotNullExpressionValue(string2, "rpJson.getString(\"id\")");
        this.rp = new PublicKeyCredentialRpEntity(string, string2);
        JSONObject jSONObject3 = jSONObject.getJSONObject("user");
        String string3 = jSONObject3.getString("id");
        Intrinsics.checkNotNullExpressionValue(string3, "rpUser.getString(\"id\")");
        byte[] b64Decode = companion.b64Decode(string3);
        String string4 = jSONObject3.getString("name");
        Intrinsics.checkNotNullExpressionValue(string4, "rpUser.getString(\"name\")");
        String string5 = jSONObject3.getString(FileProvider.f5230t);
        Intrinsics.checkNotNullExpressionValue(string5, "rpUser.getString(\"displayName\")");
        this.user = new PublicKeyCredentialUserEntity(string4, b64Decode, string5);
        JSONArray jSONArray = jSONObject.getJSONArray("pubKeyCredParams");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject4 = jSONArray.getJSONObject(i);
            String string6 = jSONObject4.getString("type");
            Intrinsics.checkNotNullExpressionValue(string6, "e.getString(\"type\")");
            arrayList.add(new PublicKeyCredentialParameters(string6, jSONObject4.getLong("alg")));
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        this.pubKeyCredParams = list;
        this.timeout = this.json.optLong("timeout", 0L);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.excludeCredentials = emptyList;
        this.authenticatorSelection = new AuthenticatorSelectionCriteria("platform", "required", false, null, 12, null);
        String optString = this.json.optString("attestation", "none");
        Intrinsics.checkNotNullExpressionValue(optString, "json.optString(\"attestation\", \"none\")");
        this.attestation = optString;
        Log.i("WebAuthn", "Challenge " + this.challenge + "()");
        StringBuilder sb = new StringBuilder();
        sb.append("rp ");
        sb.append(this.rp);
        Log.i("WebAuthn", sb.toString());
        Log.i("WebAuthn", "user " + this.user);
        Log.i("WebAuthn", "pubKeyCredParams " + list);
        Log.i("WebAuthn", "timeout " + this.timeout);
        Log.i("WebAuthn", "excludeCredentials " + this.excludeCredentials);
        Log.i("WebAuthn", "authenticatorSelection " + this.authenticatorSelection);
        Log.i("WebAuthn", "attestation " + this.attestation);
    }

    @NotNull
    public final String getAttestation() {
        return this.attestation;
    }

    @NotNull
    public final AuthenticatorSelectionCriteria getAuthenticatorSelection() {
        return this.authenticatorSelection;
    }

    @NotNull
    public final byte[] getChallenge() {
        return this.challenge;
    }

    @NotNull
    public final List<PublicKeyCredentialDescriptor> getExcludeCredentials() {
        return this.excludeCredentials;
    }

    @NotNull
    public final JSONObject getJson() {
        return this.json;
    }

    @NotNull
    public final List<PublicKeyCredentialParameters> getPubKeyCredParams() {
        return this.pubKeyCredParams;
    }

    @NotNull
    public final PublicKeyCredentialRpEntity getRp() {
        return this.rp;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    @NotNull
    public final PublicKeyCredentialUserEntity getUser() {
        return this.user;
    }

    public final void setAttestation(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.attestation = str;
    }

    public final void setAuthenticatorSelection(@NotNull AuthenticatorSelectionCriteria authenticatorSelectionCriteria) {
        Intrinsics.checkNotNullParameter(authenticatorSelectionCriteria, "<set-?>");
        this.authenticatorSelection = authenticatorSelectionCriteria;
    }

    public final void setExcludeCredentials(@NotNull List<PublicKeyCredentialDescriptor> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.excludeCredentials = list;
    }

    public final void setTimeout(long j) {
        this.timeout = j;
    }
}
