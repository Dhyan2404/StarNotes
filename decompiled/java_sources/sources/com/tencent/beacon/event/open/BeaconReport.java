package com.tencent.beacon.event.open;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.p066b.C14933b;
import com.tencent.beacon.base.util.BeaconLogger;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.core.info.BeaconPubParams;
import com.tencent.beacon.event.immediate.IBeaconImmediateReport;
import com.tencent.beacon.event.open.EventResult;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.event.quic.IBeaconQuicReport;
import com.tencent.beacon.module.BeaconModule;
import com.tencent.beacon.module.EventModule;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14881i;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p059a.p062c.C14895j;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import com.tencent.beacon.p064b.C14903a;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.Qimei;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class BeaconReport {

    /* renamed from: a */
    private static volatile BeaconReport f93206a = null;

    /* renamed from: b */
    private static String f93207b = "";

    /* renamed from: c */
    private static boolean f93208c;

    /* renamed from: d */
    private Context f93209d;

    /* renamed from: e */
    private boolean f93210e;

    /* renamed from: f */
    private IBeaconImmediateReport f93211f;

    /* renamed from: g */
    private IBeaconQuicReport f93212g;

    /* renamed from: h */
    private EventModule f93213h;

    private BeaconReport() {
        synchronized (BeaconReport.class) {
            if (f93208c) {
                throw new RuntimeException("单例模式被侵犯！");
            }
            f93208c = true;
        }
    }

    /* renamed from: b */
    private void m59660b(BeaconConfig beaconConfig) {
        HashMap hashMap = new HashMap();
        hashMap.put("u_c_r_p", Long.valueOf(beaconConfig.getRealtimePollingTime()));
        hashMap.put("u_c_n_p", Long.valueOf(beaconConfig.getNormalPollingTIme()));
        C14870b.m58921a().m58929b(new C14871c(11, hashMap));
    }

    /* renamed from: c */
    private void m59661c(BeaconConfig beaconConfig) {
        if (beaconConfig != null) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("u_c_a_e", Boolean.valueOf(beaconConfig.isAuditEnable()));
                hashMap.put("u_c_b_e", Boolean.valueOf(beaconConfig.isBidEnable()));
                hashMap.put("u_c_d_s", Integer.valueOf(beaconConfig.getMaxDBCount()));
                hashMap.put("u_c_p_s", Boolean.valueOf(beaconConfig.isPagePathEnable()));
                hashMap.put("u_s_o_h", Boolean.valueOf(beaconConfig.isSocketMode()));
                C14870b.m58921a().m58929b(new C14871c(8, hashMap));
            } catch (Throwable th) {
                C14882j.m58961e().m58954a("202", "sdk init error! package name: " + C14887b.m58977b() + " , msg:" + th.getMessage(), th);
                C14954c.m59393a(th);
            }
        }
    }

    /* renamed from: d */
    private void m59662d(BeaconConfig beaconConfig) {
        C14891f m59045e = C14891f.m59045e();
        if (!TextUtils.isEmpty(beaconConfig.getAndroidID())) {
            m59045e.m59047a(beaconConfig.getAndroidID());
        }
        if (!TextUtils.isEmpty(beaconConfig.getImei())) {
            m59045e.m59049b(beaconConfig.getImei());
        }
        if (!TextUtils.isEmpty(beaconConfig.getImei2())) {
            m59045e.m59051c(beaconConfig.getImei2());
        }
        if (!TextUtils.isEmpty(beaconConfig.getImsi())) {
            m59045e.m59053d(beaconConfig.getImsi());
        }
        if (!TextUtils.isEmpty(beaconConfig.getMeid())) {
            m59045e.m59056f(beaconConfig.getMeid());
        }
        if (!TextUtils.isEmpty(beaconConfig.getModel())) {
            m59045e.m59058g(beaconConfig.getModel());
        }
        if (!TextUtils.isEmpty(beaconConfig.getMac())) {
            m59045e.m59054e(beaconConfig.getMac());
        }
        if (!TextUtils.isEmpty(beaconConfig.getWifiMacAddress())) {
            m59045e.m59062i(beaconConfig.getWifiMacAddress());
        }
        if (!TextUtils.isEmpty(beaconConfig.getWifiSSID())) {
            m59045e.m59064j(beaconConfig.getWifiSSID());
        }
        if (TextUtils.isEmpty(beaconConfig.getOaid())) {
            return;
        }
        m59045e.m59060h(beaconConfig.getOaid());
    }

    public static BeaconReport getInstance() {
        if (f93206a == null) {
            synchronized (BeaconReport.class) {
                if (f93206a == null) {
                    f93206a = new BeaconReport();
                }
            }
        }
        return f93206a;
    }

    public static String getSoPath() {
        return f93207b;
    }

    public static void setSoPath(String str) {
        f93207b = str;
    }

    public void disableReport() {
        C14969b.m59444b().m59455a(false, true);
    }

    public void enableReport() {
        C14969b.m59444b().m59455a(true, true);
    }

    public IBeaconQuicReport getBeaconQuicReport() {
        return this.f93212g;
    }

    public BeaconPubParams getCommonParams(Context context) {
        if (context == null) {
            return null;
        }
        return BeaconPubParams.getPubParams(context);
    }

    public IBeaconImmediateReport getImmediateReport() {
        return this.f93211f;
    }

    @Deprecated
    public String getOAID() {
        C14954c.m59395b("this method do not collect OAID, use method in qmsp instead", new Object[0]);
        return C14891f.m59045e().m59061i();
    }

    @Nullable
    public Qimei getQimei(@NonNull String str) {
        return C14895j.m59073b(str);
    }

    @Nullable
    public Qimei getRtQimei(Context context, @NonNull String str) {
        return C14895j.m59072b(context, str);
    }

    public String getSDKVersion() {
        return "4.2.86.7-hf1";
    }

    public boolean isInitBeacon() {
        return this.f93210e;
    }

    public void pauseUpload(boolean z) {
        EventModule eventModule = this.f93213h;
        if (eventModule == null || !eventModule.m59684e()) {
            return;
        }
        this.f93213h.m59681b(z);
    }

    public EventResult report(BeaconEvent beaconEvent) {
        try {
            if (!C14969b.m59444b().m59480n()) {
                C14954c.m59403e("BeaconReport not enable report! event: %s", beaconEvent.getCode());
                return EventResult.C15001a.m59663a(102);
            }
            if (TextUtils.isEmpty(beaconEvent.getCode())) {
                return EventResult.C15001a.m59663a(106);
            }
            BeaconEvent build = BeaconEvent.newBuilder(beaconEvent).build();
            EventModule eventModule = this.f93213h;
            if (eventModule != null && eventModule.m59684e()) {
                return this.f93213h.m59674a(build);
            }
            HashMap hashMap = new HashMap();
            hashMap.put("b_e", build);
            C14870b.m58921a().m58928a(new C14871c(6, hashMap));
            return new EventResult(0, -1L, "Beacon SDK not init beaconEvent add to cache!");
        } catch (Throwable th) {
            C14954c.m59393a(th);
            C14882j.m58961e().m58954a("598", "error while report", th);
            return new EventResult(199, -1L, "REPORT ERROR");
        }
    }

    @Deprecated
    public void resumeReport() {
        resumeUpload();
    }

    public void resumeUpload() {
        EventModule eventModule = this.f93213h;
        if (eventModule == null || !eventModule.m59684e()) {
            return;
        }
        this.f93213h.m59685f();
    }

    @Deprecated
    public void setAdditionalParams(@NonNull Map<String, String> map) {
        setAdditionalParams(C14888c.m58989c().m59002e(), map);
    }

    public void setAndroidID(String str) {
        C14891f.m59045e().m59047a(str);
    }

    public void setAppVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C14887b.f92589a = str;
    }

    public void setBeaconQuicReport(IBeaconQuicReport iBeaconQuicReport) {
        this.f93212g = iBeaconQuicReport;
    }

    @Deprecated
    public boolean setChannelID(String str) {
        return setChannelID(C14888c.m58989c().m59002e(), str);
    }

    @Deprecated
    public void setCollectAndroidID(boolean z) {
        C14954c.m59395b("setCollectAndroidID has been Deprecated", new Object[0]);
    }

    @Deprecated
    public void setCollectImei(boolean z) {
        C14954c.m59395b("setCollectImei has been Deprecated", new Object[0]);
    }

    @Deprecated
    public void setCollectMac(boolean z) {
        C14954c.m59395b("setCollectMac has been Deprecated", new Object[0]);
    }

    @Deprecated
    public void setCollectModel(boolean z) {
        C14954c.m59395b("setCollectModel has been Deprecated", new Object[0]);
    }

    @Deprecated
    public void setCollectOAID(boolean z) {
        C14954c.m59395b("setCollectOAID has been Deprecated", new Object[0]);
    }

    @Deprecated
    public void setCollectPersonalInfo(boolean z) {
        C14954c.m59395b("setCollectPersonalInfo has been Deprecated", new Object[0]);
    }

    public void setCollectProcessInfo(boolean z) {
        C14969b.m59444b().m59470e(z);
    }

    public void setImei(String str) {
        C14891f.m59045e().m59049b(str);
    }

    public void setImei2(String str) {
        C14891f.m59045e().m59051c(str);
    }

    public void setImmediateReport(IBeaconImmediateReport iBeaconImmediateReport) {
        this.f93211f = iBeaconImmediateReport;
    }

    public void setImsi(String str) {
        C14891f.m59045e().m59053d(str);
    }

    public void setLogAble(boolean z) {
        C14954c.m59394a(z);
    }

    public void setLogger(BeaconLogger beaconLogger) {
        C14954c.m59388a(beaconLogger);
    }

    public void setMac(String str) {
        C14891f.m59045e().m59054e(str);
    }

    public void setMeid(String str) {
        C14891f.m59045e().m59056f(str);
    }

    public void setModel(String str) {
        C14891f.m59045e().m59058g(str);
    }

    public void setOAID(String str) {
        C14891f.m59045e().m59060h(str);
    }

    @Deprecated
    public void setOaid(String str) {
        C14891f.m59045e().m59060h(str);
        C14954c.m59395b("setOaid has been Deprecated, please use setOAID", new Object[0]);
    }

    public void setOmgID(String str) {
        C14888c.m58989c().m59001d(str);
    }

    public void setOpenID(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("i_c_ak", str);
        hashMap.put("i_c_o_i", str2);
        C14870b.m58921a().m58929b(new C14871c(5, hashMap));
    }

    public void setQQ(String str) {
        C14887b.m58974a(str);
    }

    public void setQimei(String str, String str2) {
        C14895j.m59069a(str, str2);
    }

    public void setQimeiSdkVersion(String str) {
        C14895j.m59076c(str);
    }

    public void setStrictMode(boolean z) {
        C14959h.f92918a.set(z);
    }

    @Deprecated
    public void setUserID(String str) {
        setUserID(C14888c.m58989c().m59002e(), str);
    }

    public void setUserSampleEvents(String str, Map<String, Integer> map) {
        C14969b.m59444b().m59451a(str, map);
    }

    public void setWifiMacAddress(String str) {
        C14891f.m59045e().m59062i(str);
    }

    public void setWifiSSID(String str) {
        C14891f.m59045e().m59064j(str);
    }

    public synchronized void start(@NonNull Context context, @NonNull String str, @Nullable BeaconConfig beaconConfig) throws BeaconInitException {
        boolean z = false;
        if (this.f93210e) {
            m59656a(context, str, String.format("don't init beacon twice!! 1: %s, 2: %s", C14888c.m58989c().m59002e(), str), "206");
            return;
        }
        C14959h.m59416a("Context", context);
        if (context == null) {
            C14954c.m59395b("fail to start beacon, context is null", new Object[0]);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f93209d = applicationContext;
        C14959h.m59416a("ApplicationContext", applicationContext);
        if (this.f93209d == null) {
            C14954c.m59395b("fail to start beacon, application context is null", new Object[0]);
            return;
        }
        C14888c.m58989c().m58994a(this.f93209d);
        C14959h.m59416a("AppKey", str);
        if (TextUtils.isEmpty(str)) {
            C14954c.m59395b("fail to start beacon, appkey is empty", new Object[0]);
            return;
        }
        C14888c.m58989c().m58999c(m59654a(context, str));
        Log.i("beacon", "logAble: " + C14954c.m59397b() + " , SDKVersion: " + getSDKVersion());
        C14882j.m58961e().m58956a(beaconConfig != null && beaconConfig.isForceEnableAtta());
        C14881i m58960e = C14881i.m58960e();
        if (beaconConfig != null && beaconConfig.isForceEnableAtta()) {
            z = true;
        }
        m58960e.m58956a(z);
        ((Application) this.f93209d).registerActivityLifecycleCallbacks(new C14903a());
        m59661c(beaconConfig);
        if (beaconConfig != null) {
            m59662d(beaconConfig);
            C14895j.m59070a(beaconConfig.isNeedInitQimei());
            C14969b.m59444b().m59467d(beaconConfig.needReportRqdEvent());
            C14969b.m59444b().m59460b(beaconConfig.needAttaReport());
            C14969b.m59444b().m59454a(beaconConfig.isHighPerformanceMode());
            C14969b.m59444b().m59464c(beaconConfig.isNeedLifeCycleListener());
            C14969b.m59444b().m59458b(beaconConfig.getLongConnectionType());
            C14969b.m59444b().m59472f(beaconConfig.getRetryAfterQuicFailImme());
        }
        AbstractC14874b.m58931a().mo58941a(new RunnableC15003b(this, beaconConfig));
        this.f93210e = true;
        if (beaconConfig != null) {
            C14954c.m59390a(str, context.getPackageName());
        }
    }

    @Deprecated
    public void stopReport(boolean z) {
        pauseUpload(z);
    }

    public void getQimei(@NonNull String str, @NonNull Context context, IAsyncQimeiListener iAsyncQimeiListener) {
        C14895j.m59068a(str, context, iAsyncQimeiListener);
    }

    public void setAdditionalParams(String str, @NonNull Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("i_c_ad", new HashMap(map));
        hashMap.put("i_c_ak", str);
        C14870b.m58921a().m58929b(new C14871c(3, hashMap));
    }

    public boolean setChannelID(@NonNull String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        C14888c.m58989c().m58995a(str, str2);
        return true;
    }

    public void setUserID(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("i_c_ak", str);
        hashMap.put("i_c_u_i", str2);
        C14870b.m58921a().m58929b(new C14871c(4, hashMap));
    }

    /* renamed from: a */
    private String m59654a(Context context, String str) throws BeaconInitException {
        String str2;
        if (!BeaconReport.class.getPackage().getName().startsWith("com.tencent.beacon")) {
            return str;
        }
        try {
            str2 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("BEACON_MAIN_APPKEY");
        } catch (Exception unused) {
            C14954c.m59403e("we strongly recommend you add mainAppkey to manifest file.", new Object[0]);
            str2 = "";
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if (!str.equals(str2)) {
            m59656a(context, str, "appKey in manifest.xml and start-params is conflicted", "205");
        }
        return str2;
    }

    /* renamed from: a */
    private void m59656a(Context context, String str, String str2, String str3) throws BeaconInitException {
        if (!C14954c.m59397b()) {
            Log.e("BeaconReport", str2);
            C14882j.m58961e().m58952a(context, str, str3, str2);
            return;
        }
        throw new BeaconInitException(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m59657a(BeaconConfig beaconConfig) {
        if (beaconConfig != null) {
            C14954c.m59391a("BeaconReport", beaconConfig.toString(), new Object[0]);
            C14933b.m59281a(beaconConfig.getConfigHost(), beaconConfig.getUploadHost());
            m59660b(beaconConfig);
            C14888c.m58989c().m58996a(beaconConfig.isEnableQmsp());
            C14969b.m59444b().m59466d(beaconConfig.getRealtimeUploadNum());
            C14969b.m59444b().m59463c(beaconConfig.getNormalUploadNum());
            C14969b.m59444b().m59449a(beaconConfig.getCompressType());
            C14969b.m59444b().m59469e(beaconConfig.getRsaPubKeyType());
        }
        C14937c.m59312d().m59318a(this.f93209d, beaconConfig == null ? null : beaconConfig.getHttpAdapter());
        SharedPreferencesC14896a.m59084a().m59086a(this.f93209d);
        C14887b.m58984f();
        C14890e.m59012l().m59015C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m59655a() {
        ModuleName[] values = ModuleName.values();
        for (ModuleName moduleName : values) {
            try {
                BeaconModule.f93217a.put(moduleName, C14991d.m59563f(moduleName.getClassName()));
            } catch (Exception e) {
                C14954c.m59395b("init Module error: " + e.getMessage(), new Object[0]);
                C14954c.m59393a(e);
            }
        }
        for (ModuleName moduleName2 : values) {
            BeaconModule beaconModule = BeaconModule.f93217a.get(moduleName2);
            if (beaconModule != null) {
                beaconModule.mo59665a(this.f93209d);
            }
        }
        this.f93213h = (EventModule) C14888c.m58989c().m58990a(ModuleName.EVENT);
    }
}
