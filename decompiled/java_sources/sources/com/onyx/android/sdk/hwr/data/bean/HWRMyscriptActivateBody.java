package com.onyx.android.sdk.hwr.data.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.sod;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;", "", "", "a", Constants.STRING_SIG, "getAndroidId", "()Ljava/lang/String;", "setAndroidId", "(Ljava/lang/String;)V", "androidId", "b", "getFingerprint", "setFingerprint", sod.f84348A, "c", "getModel", "setModel", "model", "d", "getExtra", "setExtra", "extra", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRMyscriptActivateBody {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String androidId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String fingerprint;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String model;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String extra;

    @Nullable
    public final String getAndroidId() {
        return this.androidId;
    }

    @Nullable
    public final String getExtra() {
        return this.extra;
    }

    @Nullable
    public final String getFingerprint() {
        return this.fingerprint;
    }

    @Nullable
    public final String getModel() {
        return this.model;
    }

    public final void setAndroidId(@Nullable String str) {
        this.androidId = str;
    }

    public final void setExtra(@Nullable String str) {
        this.extra = str;
    }

    public final void setFingerprint(@Nullable String str) {
        this.fingerprint = str;
    }

    public final void setModel(@Nullable String str) {
        this.model = str;
    }
}
