package com.onyx.android.sdk.auth.data;

import com.onyx.android.sdk.base.extension.StringKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0019\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b%\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0019\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0010\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\"\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010$\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0010\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/data/AuthBean;", "", "", "isDeviceEncryptionAndPasswordType", "isDeviceEncryptionType", "isDevicePasswordType", "", "a", Constants.INTEGER_SIG, "getEncryptionType", "()Ljava/lang/Integer;", "setEncryptionType", "(Ljava/lang/Integer;)V", "encryptionType", "", "b", Constants.STRING_SIG, "getDigest", "()Ljava/lang/String;", "setDigest", "(Ljava/lang/String;)V", "digest", "c", "getPasswordType", "setPasswordType", "passwordType", "d", Constants.HASIDCALL_INDEX_SIG, "getApplyAsGlobal", Constants.BOOLEAN_VALUE_SIG, "setApplyAsGlobal", "(Z)V", "applyAsGlobal", "e", "getTitle", "setTitle", "title", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AuthBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Integer encryptionType;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String digest;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String passwordType;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean applyAsGlobal;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String title;

    public final boolean getApplyAsGlobal() {
        return this.applyAsGlobal;
    }

    @Nullable
    public final String getDigest() {
        return this.digest;
    }

    @Nullable
    public final Integer getEncryptionType() {
        return this.encryptionType;
    }

    @Nullable
    public final String getPasswordType() {
        return this.passwordType;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final boolean isDeviceEncryptionAndPasswordType() {
        return isDeviceEncryptionType() && isDevicePasswordType();
    }

    public final boolean isDeviceEncryptionType() {
        Integer num = this.encryptionType;
        return num != null && num.intValue() == 2;
    }

    public final boolean isDevicePasswordType() {
        return StringKt.safelyEquals(this.passwordType, "device");
    }

    public final void setApplyAsGlobal(boolean z) {
        this.applyAsGlobal = z;
    }

    public final void setDigest(@Nullable String str) {
        this.digest = str;
    }

    public final void setEncryptionType(@Nullable Integer num) {
        this.encryptionType = num;
    }

    public final void setPasswordType(@Nullable String str) {
        this.passwordType = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }
}
