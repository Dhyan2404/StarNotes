package com.onyx.android.sdk.data.account.bean;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.sunia.HTREnginev2.sod;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u001e\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R(\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R&\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\u001a\u00109\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010!\"\u0004\b;\u0010#R\u001c\u0010<\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0006\"\u0004\b>\u0010\bR\u001a\u0010?\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010!\"\u0004\bA\u0010#¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/Device;", "", "()V", "accountId", "", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "androidId", "getAndroidId", "setAndroidId", "brand", "getBrand", "setBrand", "buildId", "getBuildId", "setBuildId", "channel", "getChannel", "setChannel", "details", "getDetails", "setDetails", "deviceUniqueId", "getDeviceUniqueId", "setDeviceUniqueId", sod.f84348A, "getFingerprint", "setFingerprint", "height", "", "getHeight", "()I", "setHeight", "(I)V", "hwinfo", "", "getHwinfo", "()Ljava/util/Map;", "setHwinfo", "(Ljava/util/Map;)V", "installationMap", "getInstallationMap", "setInstallationMap", "model", "getModel", "setModel", "name", "getName", "setName", "system", "getSystem", "setSystem", "timezone", "getTimezone", "setTimezone", "versionInt", "getVersionInt", "setVersionInt", "versionRelease", "getVersionRelease", "setVersionRelease", "width", "getWidth", "setWidth", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Device {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private static Device currentDevice;

    @Nullable
    private String accountId;

    @Nullable
    private String androidId;

    @Nullable
    private String brand;

    @Nullable
    private String buildId;

    @Nullable
    private String channel;

    @Nullable
    private String details;

    @Nullable
    private String deviceUniqueId;

    @Nullable
    private String fingerprint;
    private int height;

    @Nullable
    private Map<String, String> hwinfo;

    @NotNull
    private Map<String, String> installationMap = new HashMap();

    @Nullable
    private String model;

    @Nullable
    private String name;

    @Nullable
    private String system;

    @Nullable
    private String timezone;
    private int versionInt;

    @Nullable
    private String versionRelease;
    private int width;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/Device$Companion;", "", "()V", "currentDevice", "Lcom/onyx/android/sdk/data/account/bean/Device;", "getAndroidId", "", "context", "Landroid/content/Context;", "getNavigationBarHeight", "", "updateCurrentDeviceInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"HardwareIds"})
        @NotNull
        public final String getAndroidId(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return SecurityUtils.INSTANCE.getAndroidId();
        }

        public final int getNavigationBarHeight() {
            ResManager resManager = ResManager.INSTANCE;
            return resManager.getDimensSafely(resManager.getAppContext().getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
        }

        @Nullable
        public final Device updateCurrentDeviceInfo(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (Device.currentDevice != null) {
                Device device = Device.currentDevice;
                Intrinsics.checkNotNull(device);
                device.setAndroidId(getAndroidId(context));
                return Device.currentDevice;
            }
            Object systemService = context.getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
            Device.currentDevice = new Device();
            Device device2 = Device.currentDevice;
            Intrinsics.checkNotNull(device2);
            device2.setWidth(displayMetrics.widthPixels);
            Device device3 = Device.currentDevice;
            Intrinsics.checkNotNull(device3);
            device3.setHeight(displayMetrics.heightPixels);
            Device device4 = Device.currentDevice;
            Intrinsics.checkNotNull(device4);
            device4.setModel(Build.MODEL);
            Device device5 = Device.currentDevice;
            Intrinsics.checkNotNull(device5);
            device5.setBrand(Build.BRAND);
            Device device6 = Device.currentDevice;
            Intrinsics.checkNotNull(device6);
            device6.setVersionInt(Build.VERSION.SDK_INT);
            Device device7 = Device.currentDevice;
            Intrinsics.checkNotNull(device7);
            device7.setVersionRelease(Build.VERSION.RELEASE);
            StringBuilder sb = new StringBuilder();
            sb.append("Device fingerprint: ");
            Device device8 = Device.currentDevice;
            Intrinsics.checkNotNull(device8);
            sb.append(device8.getFingerprint());
            Log.e("Device", sb.toString());
            Device device9 = Device.currentDevice;
            Intrinsics.checkNotNull(device9);
            device9.setAndroidId(getAndroidId(context));
            return Device.currentDevice;
        }

        private Companion() {
        }
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final String getAndroidId() {
        return this.androidId;
    }

    @Nullable
    public final String getBrand() {
        return this.brand;
    }

    @Nullable
    public final String getBuildId() {
        return this.buildId;
    }

    @Nullable
    public final String getChannel() {
        return this.channel;
    }

    @Nullable
    public final String getDetails() {
        return this.details;
    }

    @Nullable
    public final String getDeviceUniqueId() {
        return this.deviceUniqueId;
    }

    @Nullable
    public final String getFingerprint() {
        return this.fingerprint;
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final Map<String, String> getHwinfo() {
        return this.hwinfo;
    }

    @NotNull
    public final Map<String, String> getInstallationMap() {
        return this.installationMap;
    }

    @Nullable
    public final String getModel() {
        return this.model;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getSystem() {
        return this.system;
    }

    @Nullable
    public final String getTimezone() {
        return this.timezone;
    }

    public final int getVersionInt() {
        return this.versionInt;
    }

    @Nullable
    public final String getVersionRelease() {
        return this.versionRelease;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setAndroidId(@Nullable String str) {
        this.androidId = str;
    }

    public final void setBrand(@Nullable String str) {
        this.brand = str;
    }

    public final void setBuildId(@Nullable String str) {
        this.buildId = str;
    }

    public final void setChannel(@Nullable String str) {
        this.channel = str;
    }

    public final void setDetails(@Nullable String str) {
        this.details = str;
    }

    public final void setDeviceUniqueId(@Nullable String str) {
        this.deviceUniqueId = str;
    }

    public final void setFingerprint(@Nullable String str) {
        this.fingerprint = str;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final void setHwinfo(@Nullable Map<String, String> map) {
        this.hwinfo = map;
    }

    public final void setInstallationMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.installationMap = map;
    }

    public final void setModel(@Nullable String str) {
        this.model = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setSystem(@Nullable String str) {
        this.system = str;
    }

    public final void setTimezone(@Nullable String str) {
        this.timezone = str;
    }

    public final void setVersionInt(int i) {
        this.versionInt = i;
    }

    public final void setVersionRelease(@Nullable String str) {
        this.versionRelease = str;
    }

    public final void setWidth(int i) {
        this.width = i;
    }
}
