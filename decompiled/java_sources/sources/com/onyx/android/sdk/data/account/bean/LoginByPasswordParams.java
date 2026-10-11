package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams;", "", "pass", "", "scene", "user", "verify", "Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams$Verify;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams$Verify;)V", "getPass", "()Ljava/lang/String;", "getScene", "getUser", "getVerify", "()Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams$Verify;", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "Verify", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class LoginByPasswordParams {

    @NotNull
    private final String pass;

    @NotNull
    private final String scene;

    @NotNull
    private final String user;

    @NotNull
    private final Verify verify;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams$Verify;", "", "csessionid", "", "sig", "token", "value", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCsessionid", "()Ljava/lang/String;", "getSig", "getToken", "getValue", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class Verify {

        @NotNull
        private final String csessionid;

        @NotNull
        private final String sig;

        @NotNull
        private final String token;

        @NotNull
        private final String value;

        public Verify(@NotNull String csessionid, @NotNull String sig, @NotNull String token, @NotNull String value) {
            Intrinsics.checkNotNullParameter(csessionid, "csessionid");
            Intrinsics.checkNotNullParameter(sig, "sig");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            this.csessionid = csessionid;
            this.sig = sig;
            this.token = token;
            this.value = value;
        }

        public static /* synthetic */ Verify copy$default(Verify verify, String str, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = verify.csessionid;
            }
            if ((i & 2) != 0) {
                str2 = verify.sig;
            }
            if ((i & 4) != 0) {
                str3 = verify.token;
            }
            if ((i & 8) != 0) {
                str4 = verify.value;
            }
            return verify.copy(str, str2, str3, str4);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getCsessionid() {
            return this.csessionid;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final String getSig() {
            return this.sig;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final String getToken() {
            return this.token;
        }

        @NotNull
        /* renamed from: component4, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        @NotNull
        public final Verify copy(@NotNull String csessionid, @NotNull String sig, @NotNull String token, @NotNull String value) {
            Intrinsics.checkNotNullParameter(csessionid, "csessionid");
            Intrinsics.checkNotNullParameter(sig, "sig");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(value, "value");
            return new Verify(csessionid, sig, token, value);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Verify)) {
                return false;
            }
            Verify verify = (Verify) other;
            return Intrinsics.areEqual(this.csessionid, verify.csessionid) && Intrinsics.areEqual(this.sig, verify.sig) && Intrinsics.areEqual(this.token, verify.token) && Intrinsics.areEqual(this.value, verify.value);
        }

        @NotNull
        public final String getCsessionid() {
            return this.csessionid;
        }

        @NotNull
        public final String getSig() {
            return this.sig;
        }

        @NotNull
        public final String getToken() {
            return this.token;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }

        public int hashCode() {
            return (((((this.csessionid.hashCode() * 31) + this.sig.hashCode()) * 31) + this.token.hashCode()) * 31) + this.value.hashCode();
        }

        @NotNull
        public String toString() {
            return "Verify(csessionid=" + this.csessionid + ", sig=" + this.sig + ", token=" + this.token + ", value=" + this.value + ')';
        }
    }

    public LoginByPasswordParams(@NotNull String pass, @NotNull String scene, @NotNull String user, @NotNull Verify verify) {
        Intrinsics.checkNotNullParameter(pass, "pass");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(verify, "verify");
        this.pass = pass;
        this.scene = scene;
        this.user = user;
        this.verify = verify;
    }

    public static /* synthetic */ LoginByPasswordParams copy$default(LoginByPasswordParams loginByPasswordParams, String str, String str2, String str3, Verify verify, int i, Object obj) {
        if ((i & 1) != 0) {
            str = loginByPasswordParams.pass;
        }
        if ((i & 2) != 0) {
            str2 = loginByPasswordParams.scene;
        }
        if ((i & 4) != 0) {
            str3 = loginByPasswordParams.user;
        }
        if ((i & 8) != 0) {
            verify = loginByPasswordParams.verify;
        }
        return loginByPasswordParams.copy(str, str2, str3, verify);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPass() {
        return this.pass;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getScene() {
        return this.scene;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getUser() {
        return this.user;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final Verify getVerify() {
        return this.verify;
    }

    @NotNull
    public final LoginByPasswordParams copy(@NotNull String pass, @NotNull String scene, @NotNull String user, @NotNull Verify verify) {
        Intrinsics.checkNotNullParameter(pass, "pass");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(verify, "verify");
        return new LoginByPasswordParams(pass, scene, user, verify);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoginByPasswordParams)) {
            return false;
        }
        LoginByPasswordParams loginByPasswordParams = (LoginByPasswordParams) other;
        return Intrinsics.areEqual(this.pass, loginByPasswordParams.pass) && Intrinsics.areEqual(this.scene, loginByPasswordParams.scene) && Intrinsics.areEqual(this.user, loginByPasswordParams.user) && Intrinsics.areEqual(this.verify, loginByPasswordParams.verify);
    }

    @NotNull
    public final String getPass() {
        return this.pass;
    }

    @NotNull
    public final String getScene() {
        return this.scene;
    }

    @NotNull
    public final String getUser() {
        return this.user;
    }

    @NotNull
    public final Verify getVerify() {
        return this.verify;
    }

    public int hashCode() {
        return (((((this.pass.hashCode() * 31) + this.scene.hashCode()) * 31) + this.user.hashCode()) * 31) + this.verify.hashCode();
    }

    @NotNull
    public String toString() {
        return "LoginByPasswordParams(pass=" + this.pass + ", scene=" + this.scene + ", user=" + this.user + ", verify=" + this.verify + ')';
    }
}
