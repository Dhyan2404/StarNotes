package com.onyx.android.sdk.data.account.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001e\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;", "", "()V", "deviceActivated", "", "getDeviceActivated", Constants.BOOLEAN_VALUE_SIG, "setDeviceActivated", "(Z)V", "deviceLimitCount", "", "getDeviceLimitCount", "()I", "setDeviceLimitCount", "(I)V", "encryptedContent", "", "getEncryptedContent", "()Ljava/lang/String;", "setEncryptedContent", "(Ljava/lang/String;)V", "endedAt", "getEndedAt", "setEndedAt", "exceedDeviceLimit", "getExceedDeviceLimit", "setExceedDeviceLimit", "startedAt", "getStartedAt", "setStartedAt", "state", "getState", "setState", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRActivationState {

    @JSONField(name = "isDeviceActive")
    private boolean deviceActivated;
    private int deviceLimitCount;

    @JSONField(name = "isDeviceLimitExceeded")
    private boolean exceedDeviceLimit;
    private int state;

    @NotNull
    private String startedAt = "";

    @NotNull
    private String endedAt = "";

    @NotNull
    private String encryptedContent = "";

    public final boolean getDeviceActivated() {
        return this.deviceActivated;
    }

    public final int getDeviceLimitCount() {
        return this.deviceLimitCount;
    }

    @NotNull
    public final String getEncryptedContent() {
        return this.encryptedContent;
    }

    @NotNull
    public final String getEndedAt() {
        return this.endedAt;
    }

    public final boolean getExceedDeviceLimit() {
        return this.exceedDeviceLimit;
    }

    @NotNull
    public final String getStartedAt() {
        return this.startedAt;
    }

    public final int getState() {
        return this.state;
    }

    public final void setDeviceActivated(boolean z) {
        this.deviceActivated = z;
    }

    public final void setDeviceLimitCount(int i) {
        this.deviceLimitCount = i;
    }

    public final void setEncryptedContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.encryptedContent = str;
    }

    public final void setEndedAt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.endedAt = str;
    }

    public final void setExceedDeviceLimit(boolean z) {
        this.exceedDeviceLimit = z;
    }

    public final void setStartedAt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startedAt = str;
    }

    public final void setState(int i) {
        this.state = i;
    }
}
