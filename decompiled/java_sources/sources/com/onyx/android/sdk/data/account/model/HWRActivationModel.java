package com.onyx.android.sdk.data.account.model;

import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0016\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010.\u001a\u00020\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R\u001a\u0010\"\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018R\u001a\u0010%\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0010\"\u0004\b'\u0010\u0012R\u001a\u0010(\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0007\"\u0004\b*\u0010\tR\u001a\u0010+\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001c\"\u0004\b-\u0010\u001e¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "activateTime", "", "getActivateTime", "()J", "setActivateTime", "(J)V", "cacheValidityTime", "getCacheValidityTime", "setCacheValidityTime", "deviceActivated", "", "getDeviceActivated", Constants.BOOLEAN_VALUE_SIG, "setDeviceActivated", "(Z)V", Constant.TAG_DEVICE_ID, "", "getDeviceId", "()Ljava/lang/String;", "setDeviceId", "(Ljava/lang/String;)V", "deviceLimitCount", "", "getDeviceLimitCount", "()I", "setDeviceLimitCount", "(I)V", "encryptedContent", "getEncryptedContent", "setEncryptedContent", "engine", "getEngine", "setEngine", "exceedDeviceLimit", "getExceedDeviceLimit", "setExceedDeviceLimit", "expireTime", "getExpireTime", "setExpireTime", "state", "getState", "setState", "isEmpty", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRActivationModel extends BaseReplicatorModel implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private long activateTime;
    private long cacheValidityTime;
    private boolean deviceActivated;
    private int deviceLimitCount;
    private boolean exceedDeviceLimit;
    private int state;

    @NotNull
    private String deviceId = "";

    @NotNull
    private String engine = "";

    @NotNull
    private String encryptedContent = "";
    private long expireTime = Long.MAX_VALUE;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\f\u0010\u0006\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\f\u0010\u0007\u001a\u00020\u0004*\u0004\u0018\u00010\u0005¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;", "", "()V", "isExpired", "", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "isStateExpired", "isTimeExpired", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isExpired(@Nullable HWRActivationModel hWRActivationModel) {
            return isTimeExpired(hWRActivationModel) || isStateExpired(hWRActivationModel);
        }

        public final boolean isStateExpired(@Nullable HWRActivationModel hWRActivationModel) {
            List listOf;
            if (hWRActivationModel == null) {
                return false;
            }
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{5, 6});
            return listOf.contains(Integer.valueOf(hWRActivationModel.getState()));
        }

        public final boolean isTimeExpired(@Nullable HWRActivationModel hWRActivationModel) {
            return hWRActivationModel != null && hWRActivationModel.getExpireTime() < DateTimeUtil.INSTANCE.millisOfNow();
        }

        private Companion() {
        }
    }

    public final long getActivateTime() {
        return this.activateTime;
    }

    public final long getCacheValidityTime() {
        return this.cacheValidityTime;
    }

    public final boolean getDeviceActivated() {
        return this.deviceActivated;
    }

    @NotNull
    public final String getDeviceId() {
        return this.deviceId;
    }

    public final int getDeviceLimitCount() {
        return this.deviceLimitCount;
    }

    @NotNull
    public final String getEncryptedContent() {
        return this.encryptedContent;
    }

    @NotNull
    public final String getEngine() {
        return this.engine;
    }

    public final boolean getExceedDeviceLimit() {
        return this.exceedDeviceLimit;
    }

    public final long getExpireTime() {
        return this.expireTime;
    }

    public final int getState() {
        return this.state;
    }

    public final boolean isEmpty() {
        return getUniqueId().length() == 0;
    }

    public final void setActivateTime(long j) {
        this.activateTime = j;
    }

    public final void setCacheValidityTime(long j) {
        this.cacheValidityTime = j;
    }

    public final void setDeviceActivated(boolean z) {
        this.deviceActivated = z;
    }

    public final void setDeviceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.deviceId = str;
    }

    public final void setDeviceLimitCount(int i) {
        this.deviceLimitCount = i;
    }

    public final void setEncryptedContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.encryptedContent = str;
    }

    public final void setEngine(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.engine = str;
    }

    public final void setExceedDeviceLimit(boolean z) {
        this.exceedDeviceLimit = z;
    }

    public final void setExpireTime(long j) {
        this.expireTime = j;
    }

    public final void setState(int i) {
        this.state = i;
    }
}
