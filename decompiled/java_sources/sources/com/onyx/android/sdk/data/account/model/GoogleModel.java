package com.onyx.android.sdk.data.account.model;

import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u001b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\bR\u001c\u0010 \u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0006\"\u0004\b\"\u0010\bR\u001e\u0010#\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b$\u0010\u0019\"\u0004\b%\u0010\u001bR\u001c\u0010&\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\bR\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u001c\u0010,\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0006\"\u0004\b.\u0010\bR\u001c\u0010/\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0006\"\u0004\b1\u0010\b¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/model/GoogleModel;", "", "()V", "aud", "", "getAud", "()Ljava/lang/String;", "setAud", "(Ljava/lang/String;)V", "azp", "getAzp", "setAzp", "email", "getEmail", "setEmail", "email_verified", "", "getEmail_verified", "()Ljava/lang/Boolean;", "setEmail_verified", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "exp", "", "getExp", "()Ljava/lang/Integer;", "setExp", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "family_name", "getFamily_name", "setFamily_name", "given_name", "getGiven_name", "setGiven_name", "iat", "getIat", "setIat", "iss", "getIss", "setIss", "name", "getName", "setName", TemplateResourceConstant.TYPE_PICTURE, "getPicture", "setPicture", "sub", "getSub", "setSub", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleModel {

    @Nullable
    private String aud;

    @Nullable
    private String azp;

    @Nullable
    private String email;

    @Nullable
    private Boolean email_verified;

    @Nullable
    private Integer exp;

    @Nullable
    private String family_name;

    @Nullable
    private String given_name;

    @Nullable
    private Integer iat;

    @Nullable
    private String iss;

    @Nullable
    private String name;

    @Nullable
    private String picture;

    @Nullable
    private String sub;

    @Nullable
    public final String getAud() {
        return this.aud;
    }

    @Nullable
    public final String getAzp() {
        return this.azp;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final Boolean getEmail_verified() {
        return this.email_verified;
    }

    @Nullable
    public final Integer getExp() {
        return this.exp;
    }

    @Nullable
    public final String getFamily_name() {
        return this.family_name;
    }

    @Nullable
    public final String getGiven_name() {
        return this.given_name;
    }

    @Nullable
    public final Integer getIat() {
        return this.iat;
    }

    @Nullable
    public final String getIss() {
        return this.iss;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getPicture() {
        return this.picture;
    }

    @Nullable
    public final String getSub() {
        return this.sub;
    }

    public final void setAud(@Nullable String str) {
        this.aud = str;
    }

    public final void setAzp(@Nullable String str) {
        this.azp = str;
    }

    public final void setEmail(@Nullable String str) {
        this.email = str;
    }

    public final void setEmail_verified(@Nullable Boolean bool) {
        this.email_verified = bool;
    }

    public final void setExp(@Nullable Integer num) {
        this.exp = num;
    }

    public final void setFamily_name(@Nullable String str) {
        this.family_name = str;
    }

    public final void setGiven_name(@Nullable String str) {
        this.given_name = str;
    }

    public final void setIat(@Nullable Integer num) {
        this.iat = num;
    }

    public final void setIss(@Nullable String str) {
        this.iss = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setPicture(@Nullable String str) {
        this.picture = str;
    }

    public final void setSub(@Nullable String str) {
        this.sub = str;
    }
}
