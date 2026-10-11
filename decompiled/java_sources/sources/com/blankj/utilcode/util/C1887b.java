package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.NotificationUtils;
import com.blankj.utilcode.util.ShellUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.Gson;
import com.onyx.android.sdk.base.utils.LanguageManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.blankj.utilcode.util.b */
/* loaded from: classes3.dex */
public class C1887b {

    /* renamed from: com.blankj.utilcode.util.b$a */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a */
        public String f14240a;

        /* renamed from: b */
        public LinkedHashMap<String, String> f14241b = new LinkedHashMap<>();

        /* renamed from: c */
        public LinkedHashMap<String, String> f14242c = new LinkedHashMap<>();

        public a(String str) {
            this.f14240a = str;
        }

        /* renamed from: a */
        public void m8545a(String str, String str2) {
            m8548d(this.f14241b, str, str2);
        }

        /* renamed from: b */
        public void m8546b(String str, String str2) {
            m8548d(this.f14242c, str, str2);
        }

        /* renamed from: c */
        public void m8547c(Map<String, String> map) {
            m8549e(this.f14242c, map);
        }

        /* renamed from: d */
        public final void m8548d(Map<String, String> map, String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            int length = 19 - str.length();
            if (length > 0) {
                str = str + "                   ".substring(0, length);
            }
            map.put(str, str2);
        }

        /* renamed from: e */
        public final void m8549e(Map<String, String> map, Map<String, String> map2) {
            if (map2 == null || map2.isEmpty()) {
                return;
            }
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                m8548d(map, entry.getKey(), entry.getValue());
            }
        }

        /* renamed from: f */
        public String m8550f() {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : this.f14242c.entrySet()) {
                sb.append(entry.getKey());
                sb.append(": ");
                sb.append(entry.getValue());
                sb.append("\n");
            }
            return sb.toString();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = "************* " + this.f14240a + " Head ****************\n";
            sb.append(str);
            for (Map.Entry<String, String> entry : this.f14241b.entrySet()) {
                sb.append(entry.getKey());
                sb.append(": ");
                sb.append(entry.getValue());
                sb.append("\n");
            }
            sb.append("Rom Info           : ");
            sb.append(RomUtils.getRomInfo());
            sb.append("\n");
            sb.append("Device Manufacturer: ");
            sb.append(Build.MANUFACTURER);
            sb.append("\n");
            sb.append("Device Model       : ");
            sb.append(Build.MODEL);
            sb.append("\n");
            sb.append("Android Version    : ");
            sb.append(Build.VERSION.RELEASE);
            sb.append("\n");
            sb.append("Android SDK        : ");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("\n");
            sb.append("App VersionName    : ");
            sb.append(AppUtils.getAppVersionName());
            sb.append("\n");
            sb.append("App VersionCode    : ");
            sb.append(AppUtils.getAppVersionCode());
            sb.append("\n");
            sb.append(m8550f());
            sb.append(str);
            sb.append("\n");
            return sb.toString();
        }
    }

    /* renamed from: A */
    public static boolean m8431A(CharSequence charSequence, CharSequence charSequence2) {
        return StringUtils.equals(charSequence, charSequence2);
    }

    /* renamed from: A0 */
    public static boolean m8432A0() {
        return SDCardUtils.isSDCardEnableByEnvironment();
    }

    /* renamed from: B */
    public static ShellUtils.CommandResult m8433B(String str, boolean z) {
        return ShellUtils.execCmd(str, z);
    }

    /* renamed from: B0 */
    public static boolean m8434B0() {
        return RomUtils.isSamsung();
    }

    /* renamed from: C */
    public static Uri m8435C(File file) {
        return UriUtils.file2Uri(file);
    }

    /* renamed from: C0 */
    public static boolean m8436C0(String str) {
        return ServiceUtils.isServiceRunning(str);
    }

    /* renamed from: D */
    public static void m8437D() {
        ActivityUtils.finishAllActivities();
    }

    /* renamed from: D0 */
    public static boolean m8438D0(String str) {
        return StringUtils.isSpace(str);
    }

    /* renamed from: E */
    public static void m8439E(Activity activity) {
        KeyboardUtils.fixSoftInputLeaks(activity);
    }

    /* renamed from: E0 */
    public static boolean m8440E0(@NonNull View view, long j) {
        return DebouncingUtils.isValid(view, j);
    }

    /* renamed from: F */
    public static String m8441F(@Nullable String str, Object... objArr) {
        return StringUtils.format(str, objArr);
    }

    /* renamed from: F0 */
    public static byte[] m8442F0(JSONArray jSONArray) {
        return ConvertUtils.jsonArray2Bytes(jSONArray);
    }

    /* renamed from: G */
    public static String m8443G(String str) {
        return JsonUtils.formatJson(str);
    }

    /* renamed from: G0 */
    public static byte[] m8444G0(JSONObject jSONObject) {
        return ConvertUtils.jsonObject2Bytes(jSONObject);
    }

    /* renamed from: H */
    public static <T> T m8445H(String str, Type type) {
        return (T) GsonUtils.fromJson(str, type);
    }

    /* renamed from: H0 */
    public static View m8446H0(@LayoutRes int i) {
        return ViewUtils.layoutId2View(i);
    }

    /* renamed from: I */
    public static Activity m8447I(Context context) {
        return ActivityUtils.getActivityByContext(context);
    }

    /* renamed from: I0 */
    public static String m8448I0(long j, int i) {
        return TimeUtils.m8355c(j, i);
    }

    /* renamed from: J */
    public static List<Activity> m8449J() {
        return C1886a.f14221k.m8416k();
    }

    /* renamed from: J0 */
    public static void m8450J0(File file) {
        FileUtils.notifySystemToScan(file);
    }

    /* renamed from: K */
    public static int m8451K() {
        return ScreenUtils.getAppScreenWidth();
    }

    /* renamed from: K0 */
    public static byte[] m8452K0(Parcelable parcelable) {
        return ConvertUtils.parcelable2Bytes(parcelable);
    }

    /* renamed from: L */
    public static Application m8453L() {
        return C1886a.f14221k.m8420o();
    }

    /* renamed from: L0 */
    public static void m8454L0() {
        m8456M0(AdaptScreenUtils.m7951g());
    }

    @RequiresPermission("android.permission.CALL_PHONE")
    /* renamed from: M */
    public static Intent m8455M(String str) {
        return IntentUtils.getCallIntent(str);
    }

    /* renamed from: M0 */
    public static void m8456M0(Runnable... runnableArr) {
        for (Runnable runnable : runnableArr) {
            ThreadUtils.getCachedPool().execute(runnable);
        }
    }

    /* renamed from: N */
    public static String m8457N() {
        return ProcessUtils.getCurrentProcessName();
    }

    /* renamed from: N0 */
    public static int m8458N0(float f) {
        return SizeUtils.px2dp(f);
    }

    /* renamed from: O */
    public static Intent m8459O(String str) {
        return IntentUtils.getDialIntent(str);
    }

    /* renamed from: O0 */
    public static int m8460O0(float f) {
        return SizeUtils.px2sp(f);
    }

    /* renamed from: P */
    public static File m8461P(String str) {
        return FileUtils.getFileByPath(str);
    }

    /* renamed from: P0 */
    public static byte[] m8462P0(File file) {
        return FileIOUtils.readFile2BytesByChannel(file);
    }

    /* renamed from: Q */
    public static String m8463Q() {
        return ProcessUtils.getForegroundProcessName();
    }

    /* renamed from: Q0 */
    public static void m8464Q0() {
        AppUtils.relaunchApp();
    }

    /* renamed from: R */
    public static long m8465R(String str) {
        return FileUtils.getFsAvailableSize(str);
    }

    /* renamed from: R0 */
    public static void m8466R0(Activity activity) {
        C1886a.f14221k.m8426u(activity);
    }

    /* renamed from: S */
    public static long m8467S(String str) {
        return FileUtils.getFsTotalSize(str);
    }

    /* renamed from: S0 */
    public static void m8468S0(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1886a.f14221k.m8427v(activity, activityLifecycleCallbacks);
    }

    /* renamed from: T */
    public static String m8469T(Throwable th) {
        return ThrowableUtils.getFullStackTrace(th);
    }

    /* renamed from: T0 */
    public static void m8470T0(Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1886a.f14221k.m8428w(activityLifecycleCallbacks);
    }

    /* renamed from: U */
    public static Gson m8471U() {
        return GsonUtils.m8101b();
    }

    /* renamed from: U0 */
    public static void m8472U0(Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        C1886a.f14221k.m8430y(onAppStatusChangedListener);
    }

    /* renamed from: V */
    public static Intent m8473V(Uri uri) {
        return IntentUtils.getInstallAppIntent(uri);
    }

    /* renamed from: V0 */
    public static void m8474V0(Runnable runnable) {
        ThreadUtils.runOnUiThread(runnable);
    }

    /* renamed from: W */
    public static Intent m8475W(File file) {
        return IntentUtils.getInstallAppIntent(file);
    }

    /* renamed from: W0 */
    public static void m8476W0(Runnable runnable, long j) {
        ThreadUtils.runOnUiThreadDelayed(runnable, j);
    }

    /* renamed from: X */
    public static Intent m8477X(String str, boolean z) {
        return IntentUtils.getLaunchAppDetailsSettingsIntent(str, z);
    }

    /* renamed from: X0 */
    public static byte[] m8478X0(Serializable serializable) {
        return ConvertUtils.serializable2Bytes(serializable);
    }

    /* renamed from: Y */
    public static Intent m8479Y(String str) {
        return IntentUtils.getLaunchAppIntent(str);
    }

    /* renamed from: Y0 */
    public static int m8480Y0(float f) {
        return SizeUtils.sp2px(f);
    }

    /* renamed from: Z */
    public static String m8481Z(String str) {
        return ActivityUtils.getLauncherActivity(str);
    }

    /* renamed from: Z0 */
    public static void m8482Z0() {
        ActivityUtils.startHomeActivity();
    }

    /* renamed from: a */
    public static void m8483a(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1886a.f14221k.m8409d(activity, activityLifecycleCallbacks);
    }

    /* renamed from: a0 */
    public static int m8484a0() {
        return BarUtils.getNavBarHeight();
    }

    /* renamed from: a1 */
    public static byte[] m8485a1(String str) {
        return ConvertUtils.string2Bytes(str);
    }

    /* renamed from: b */
    public static void m8486b(Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        C1886a.f14221k.m8410e(activityLifecycleCallbacks);
    }

    /* renamed from: b0 */
    public static Notification m8487b0(NotificationUtils.ChannelConfig channelConfig, Utils.Consumer<NotificationCompat.Builder> consumer) {
        return NotificationUtils.getNotification(channelConfig, consumer);
    }

    /* renamed from: b1 */
    public static String m8488b1(Object obj) {
        return GsonUtils.toJson(obj);
    }

    /* renamed from: c */
    public static void m8489c(Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        C1886a.f14221k.m8412g(onAppStatusChangedListener);
    }

    /* renamed from: c0 */
    public static Intent m8490c0(String str, String str2) {
        return IntentUtils.getSendSmsIntent(str, str2);
    }

    /* renamed from: c1 */
    public static void m8491c1() {
        ToastUtils.cancel();
    }

    /* renamed from: d */
    public static byte[] m8492d(byte[] bArr) {
        return EncodeUtils.base64Decode(bArr);
    }

    /* renamed from: d0 */
    public static SPUtils m8493d0() {
        return SPUtils.getInstance(LanguageManager.SHARED_PREFERENCES_NAME);
    }

    /* renamed from: d1 */
    public static void m8494d1(CharSequence charSequence) {
        ToastUtils.showShort(charSequence);
    }

    /* renamed from: e */
    public static byte[] m8495e(byte[] bArr) {
        return EncodeUtils.base64Encode(bArr);
    }

    /* renamed from: e0 */
    public static int m8496e0() {
        return BarUtils.getStatusBarHeight();
    }

    /* renamed from: e1 */
    public static void m8497e1(Application application) {
        C1886a.f14221k.m8408B(application);
    }

    /* renamed from: f */
    public static byte[] m8498f(Bitmap bitmap) {
        return ImageUtils.bitmap2Bytes(bitmap);
    }

    /* renamed from: f0 */
    public static String m8499f0(@StringRes int i) {
        return StringUtils.getString(i);
    }

    /* renamed from: f1 */
    public static File m8500f1(Uri uri) {
        return UriUtils.uri2File(uri);
    }

    /* renamed from: g */
    public static byte[] m8501g(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i) {
        return ImageUtils.bitmap2Bytes(bitmap, compressFormat, i);
    }

    /* renamed from: g0 */
    public static String m8502g0(@StringRes int i, Object... objArr) {
        return StringUtils.getString(i, objArr);
    }

    /* renamed from: g1 */
    public static Bitmap m8503g1(View view) {
        return ImageUtils.view2Bitmap(view);
    }

    /* renamed from: h */
    public static Drawable m8504h(Bitmap bitmap) {
        return ImageUtils.bitmap2Drawable(bitmap);
    }

    /* renamed from: h0 */
    public static Activity m8505h0() {
        return C1886a.f14221k.m8421p();
    }

    /* renamed from: h1 */
    public static boolean m8506h1(File file, byte[] bArr) {
        return FileIOUtils.writeFileFromBytesByChannel(file, bArr, true);
    }

    /* renamed from: i */
    public static String m8507i(long j) {
        return ConvertUtils.byte2FitMemorySize(j);
    }

    /* renamed from: i0 */
    public static Intent m8508i0(String str) {
        return IntentUtils.getUninstallAppIntent(str);
    }

    /* renamed from: i1 */
    public static boolean m8509i1(String str, InputStream inputStream) {
        return FileIOUtils.writeFileFromIS(str, inputStream);
    }

    /* renamed from: j */
    public static Bitmap m8510j(byte[] bArr) {
        return ImageUtils.bytes2Bitmap(bArr);
    }

    /* renamed from: j0 */
    public static byte[] m8511j0(byte[] bArr, String str) {
        return EncryptUtils.m8070a(bArr, str);
    }

    /* renamed from: j1 */
    public static boolean m8512j1(String str, String str2, boolean z) {
        return FileIOUtils.writeFileFromString(str, str2, z);
    }

    /* renamed from: k */
    public static Drawable m8513k(byte[] bArr) {
        return ImageUtils.bytes2Drawable(bArr);
    }

    /* renamed from: k0 */
    public static byte[] m8514k0(String str) {
        return ConvertUtils.hexString2Bytes(str);
    }

    /* renamed from: l */
    public static String m8515l(byte[] bArr) {
        return ConvertUtils.bytes2HexString(bArr);
    }

    /* renamed from: l0 */
    public static void m8516l0(Application application) {
        C1886a.f14221k.m8422q(application);
    }

    /* renamed from: m */
    public static JSONArray m8517m(byte[] bArr) {
        return ConvertUtils.bytes2JSONArray(bArr);
    }

    /* renamed from: m0 */
    public static ByteArrayOutputStream m8518m0(InputStream inputStream) {
        return ConvertUtils.input2OutputStream(inputStream);
    }

    /* renamed from: n */
    public static JSONObject m8519n(byte[] bArr) {
        return ConvertUtils.bytes2JSONObject(bArr);
    }

    /* renamed from: n0 */
    public static byte[] m8520n0(InputStream inputStream) {
        return ConvertUtils.inputStream2Bytes(inputStream);
    }

    /* renamed from: o */
    public static Object m8521o(byte[] bArr) {
        return ConvertUtils.bytes2Object(bArr);
    }

    /* renamed from: o0 */
    public static List<String> m8522o0(InputStream inputStream, String str) {
        return ConvertUtils.inputStream2Lines(inputStream, str);
    }

    /* renamed from: p */
    public static <T> T m8523p(byte[] bArr, Parcelable.Creator<T> creator) {
        return (T) ConvertUtils.bytes2Parcelable(bArr, creator);
    }

    /* renamed from: p0 */
    public static boolean m8524p0(Activity activity) {
        return ActivityUtils.isActivityAlive(activity);
    }

    /* renamed from: q */
    public static String m8525q(byte[] bArr) {
        return ConvertUtils.bytes2String(bArr);
    }

    /* renamed from: q0 */
    public static boolean m8526q0() {
        return AppUtils.isAppDebug();
    }

    /* renamed from: r */
    public static boolean m8527r(File file) {
        return FileUtils.createFileByDeleteOldFile(file);
    }

    /* renamed from: r0 */
    public static boolean m8528r0() {
        return C1886a.f14221k.m8423r();
    }

    /* renamed from: s */
    public static boolean m8529s(File file) {
        return FileUtils.createOrExistsDir(file);
    }

    /* renamed from: s0 */
    public static boolean m8530s0(String str) {
        return AppUtils.isAppInstalled(str);
    }

    /* renamed from: t */
    public static boolean m8531t(File file) {
        return FileUtils.createOrExistsFile(file);
    }

    /* renamed from: t0 */
    public static boolean m8532t0(@NonNull String str) {
        return AppUtils.isAppRunning(str);
    }

    /* renamed from: u */
    public static boolean m8533u(File file) {
        return FileUtils.deleteAllInDir(file);
    }

    /* renamed from: u0 */
    public static boolean m8534u0(File file) {
        return FileUtils.isFileExists(file);
    }

    /* renamed from: v */
    public static <T> Utils.Task<T> m8535v(Utils.Task<T> task) {
        ThreadUtils.getCachedPool().execute(task);
        return task;
    }

    /* renamed from: v0 */
    public static boolean m8536v0(String... strArr) {
        return PermissionUtils.isGranted(strArr);
    }

    /* renamed from: w */
    public static int m8537w(float f) {
        return SizeUtils.dp2px(f);
    }

    @RequiresApi(api = 23)
    /* renamed from: w0 */
    public static boolean m8538w0() {
        return PermissionUtils.isGrantedDrawOverlays();
    }

    /* renamed from: x */
    public static Bitmap m8539x(Drawable drawable) {
        return ImageUtils.drawable2Bitmap(drawable);
    }

    /* renamed from: x0 */
    public static boolean m8540x0(Intent intent) {
        return IntentUtils.isIntentAvailable(intent);
    }

    /* renamed from: y */
    public static byte[] m8541y(Drawable drawable) {
        return ImageUtils.drawable2Bytes(drawable);
    }

    /* renamed from: y0 */
    public static boolean m8542y0() {
        return ViewUtils.isLayoutRtl();
    }

    /* renamed from: z */
    public static byte[] m8543z(Drawable drawable, Bitmap.CompressFormat compressFormat, int i) {
        return ImageUtils.drawable2Bytes(drawable, compressFormat, i);
    }

    /* renamed from: z0 */
    public static boolean m8544z0() {
        return ProcessUtils.isMainProcess();
    }
}
