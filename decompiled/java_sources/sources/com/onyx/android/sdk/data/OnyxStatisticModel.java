package com.onyx.android.sdk.data;

import androidx.annotation.WorkerThread;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.blankj.utilcode.util.AppUtils;
import com.blankj.utilcode.util.DeviceUtils;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import java.util.Arrays;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b3\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 E2\u00020\u0001:\u0001EB\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\b\u0010C\u001a\u00020DH\u0017R \u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR \u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR \u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bR\u001e\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\t\"\u0004\b\u0018\u0010\u000bR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001b\u0010\u000bR \u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\t\"\u0004\b\u001e\u0010\u000bR \u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\t\"\u0004\b!\u0010\u000bR \u0010\"\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\t\"\u0004\b$\u0010\u000bR \u0010%\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\t\"\u0004\b'\u0010\u000bR\u001c\u0010(\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\t\"\u0004\b*\u0010\u000bR \u0010+\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\t\"\u0004\b-\u0010\u000bR \u0010.\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\t\"\u0004\b0\u0010\u000bR \u00101\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\t\"\u0004\b3\u0010\u000bR\u001c\u00104\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\t\"\u0004\b6\u0010\u000bR\u001e\u00107\u001a\u0002088\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R \u0010=\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\t\"\u0004\b?\u0010\u000bR\u001c\u0010@\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\t\"\u0004\bB\u0010\u000b¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxStatisticModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "eventCode", "", "eventData", "(Ljava/lang/String;Ljava/lang/String;)V", "androidId", "getAndroidId", "()Ljava/lang/String;", "setAndroidId", "(Ljava/lang/String;)V", "channel", "getChannel", "setChannel", Constant.TAG_DEVICE_ID, "getDeviceId", "setDeviceId", "eventAt", "getEventAt", "setEventAt", "getEventCode", "setEventCode", "getEventData", "setEventData", "ifa", "getIfa", "setIfa", "networkType", "getNetworkType", "setNetworkType", "phoneType", "getPhoneType", "setPhoneType", "productName", "getProductName", "setProductName", "productVersion", "getProductVersion", "setProductVersion", "resolution", "getResolution", "setResolution", "screenSize", "getScreenSize", "setScreenSize", "systemName", "getSystemName", "setSystemName", "systemVersion", "getSystemVersion", "setSystemVersion", "terminal", "getTerminal", "setTerminal", "uType", "", "getUType", "()I", "setUType", "(I)V", "udId", "getUdId", "setUdId", CouchFieldKey.KEY_UID, "getUid", "setUid", "beforeSave", "", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxStatisticModel extends BaseReplicatorModel {
    private static final int LOGIN = 1;

    @NotNull
    private static final String SYSTEM_NAME_ANDROID = "Android";

    @NotNull
    private static final String TERMINAL_PAD = "APad";

    @NotNull
    private static final String TERMINAL_PHONE = "Aphone";
    private static final int UN_LOGIN = 0;

    @JSONField(name = "android_id")
    @Nullable
    private String androidId;

    @Nullable
    private String channel;

    @JSONField(name = "device_id")
    @Nullable
    private String deviceId;

    @JSONField(name = "event_at")
    @Nullable
    private String eventAt;

    @JSONField(name = "event_code")
    @NotNull
    private String eventCode;

    @JSONField(name = "event_data")
    @NotNull
    private String eventData;

    @Nullable
    private String ifa;

    @JSONField(name = "network_type")
    @Nullable
    private String networkType;

    @JSONField(name = "phone_type")
    @Nullable
    private String phoneType;

    @JSONField(name = "product_name")
    @Nullable
    private String productName;

    @JSONField(name = "product_version")
    @Nullable
    private String productVersion;

    @Nullable
    private String resolution;

    @JSONField(name = "screen_size")
    @Nullable
    private String screenSize;

    @JSONField(name = "system_name")
    @Nullable
    private String systemName;

    @JSONField(name = "system_version")
    @Nullable
    private String systemVersion;

    @Nullable
    private String terminal;

    @JSONField(name = "utype")
    private int uType;

    @JSONField(name = "udid")
    @Nullable
    private String udId;

    @Nullable
    private String uid;

    @NotNull
    private static final String patternStr = ResManager.INSTANCE.getStringSafely(C7373R.string.float_format_two_float_digits);

    @JSONCreator
    public OnyxStatisticModel() {
        this.eventCode = "";
        this.eventData = "";
    }

    @Override // com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel
    @WorkerThread
    public void beforeSave() {
        super.beforeSave();
        ensureUniqueIdExist();
        this.systemName = SYSTEM_NAME_ANDROID;
        this.systemVersion = DeviceUtils.getSDKVersionName();
        this.terminal = DeviceUtils.isTablet() ? TERMINAL_PAD : TERMINAL_PHONE;
        this.productName = AppUtils.getAppName();
        this.productVersion = AppUtils.getAppVersionName();
        SecurityUtils securityUtils = SecurityUtils.INSTANCE;
        this.udId = securityUtils.getAndroidId();
        this.eventAt = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS().format(new Date());
        this.ifa = "";
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        this.uid = accountDataBundle.getSyncUserId();
        this.uType = accountDataBundle.isAlreadyLogin() ? 1 : 0;
        this.channel = MarketUtils.INSTANCE.getMarketChannel();
        this.networkType = NetworkUtils.getNetworkType().name();
        this.phoneType = DeviceUtils.getModel();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(patternStr, Arrays.copyOf(new Object[]{Double.valueOf(ResManager.INSTANCE.getScreenInchSize())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        this.screenSize = format;
        StringBuilder sb = new StringBuilder();
        sb.append(ScreenUtils.getScreenWidth());
        sb.append('x');
        sb.append(ScreenUtils.getScreenHeight());
        this.resolution = sb.toString();
        this.androidId = securityUtils.getAndroidId();
        this.deviceId = securityUtils.getAndroidId();
    }

    @Nullable
    public final String getAndroidId() {
        return this.androidId;
    }

    @Nullable
    public final String getChannel() {
        return this.channel;
    }

    @Nullable
    public final String getDeviceId() {
        return this.deviceId;
    }

    @Nullable
    public final String getEventAt() {
        return this.eventAt;
    }

    @NotNull
    public final String getEventCode() {
        return this.eventCode;
    }

    @NotNull
    public final String getEventData() {
        return this.eventData;
    }

    @Nullable
    public final String getIfa() {
        return this.ifa;
    }

    @Nullable
    public final String getNetworkType() {
        return this.networkType;
    }

    @Nullable
    public final String getPhoneType() {
        return this.phoneType;
    }

    @Nullable
    public final String getProductName() {
        return this.productName;
    }

    @Nullable
    public final String getProductVersion() {
        return this.productVersion;
    }

    @Nullable
    public final String getResolution() {
        return this.resolution;
    }

    @Nullable
    public final String getScreenSize() {
        return this.screenSize;
    }

    @Nullable
    public final String getSystemName() {
        return this.systemName;
    }

    @Nullable
    public final String getSystemVersion() {
        return this.systemVersion;
    }

    @Nullable
    public final String getTerminal() {
        return this.terminal;
    }

    public final int getUType() {
        return this.uType;
    }

    @Nullable
    public final String getUdId() {
        return this.udId;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public final void setAndroidId(@Nullable String str) {
        this.androidId = str;
    }

    public final void setChannel(@Nullable String str) {
        this.channel = str;
    }

    public final void setDeviceId(@Nullable String str) {
        this.deviceId = str;
    }

    public final void setEventAt(@Nullable String str) {
        this.eventAt = str;
    }

    public final void setEventCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.eventCode = str;
    }

    public final void setEventData(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.eventData = str;
    }

    public final void setIfa(@Nullable String str) {
        this.ifa = str;
    }

    public final void setNetworkType(@Nullable String str) {
        this.networkType = str;
    }

    public final void setPhoneType(@Nullable String str) {
        this.phoneType = str;
    }

    public final void setProductName(@Nullable String str) {
        this.productName = str;
    }

    public final void setProductVersion(@Nullable String str) {
        this.productVersion = str;
    }

    public final void setResolution(@Nullable String str) {
        this.resolution = str;
    }

    public final void setScreenSize(@Nullable String str) {
        this.screenSize = str;
    }

    public final void setSystemName(@Nullable String str) {
        this.systemName = str;
    }

    public final void setSystemVersion(@Nullable String str) {
        this.systemVersion = str;
    }

    public final void setTerminal(@Nullable String str) {
        this.terminal = str;
    }

    public final void setUType(int i) {
        this.uType = i;
    }

    public final void setUdId(@Nullable String str) {
        this.udId = str;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    public OnyxStatisticModel(@NotNull String eventCode, @NotNull String eventData) {
        Intrinsics.checkNotNullParameter(eventCode, "eventCode");
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        this.eventCode = eventCode;
        this.eventData = eventData;
    }
}
