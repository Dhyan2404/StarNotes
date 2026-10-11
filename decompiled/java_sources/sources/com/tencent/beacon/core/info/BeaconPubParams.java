package com.tencent.beacon.core.info;

import android.content.Context;
import android.os.Build;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p059a.p062c.C14895j;

/* loaded from: classes10.dex */
public class BeaconPubParams {
    private static BeaconPubParams sParamsHolder;
    private String androidId;
    private String appFirstInstallTime;
    private String appLastUpdatedTime;
    private String appVersion;
    private String beaconId;
    private String boundleId;
    private String brand;
    private String cid;
    private Context context;
    private String dpi;
    private String dtImei2;
    private String dtMeid;
    private String dtMf;
    private String fingerprint;
    private String gpu;
    private String hardwareOs;
    private String imei;
    private String imsi;
    private String isRooted;
    private String language;
    private String mac;
    private String model;
    private String modelApn;
    private String networkType;
    private String osVersion;
    private String platform;
    private String productId;
    private String qimei;
    private String resolution;
    private String sdkId;
    private String sdkVersion;
    private String wifiMac;
    private String wifiSsid;

    private BeaconPubParams(Context context) {
        this.context = context;
        init(context);
    }

    public static synchronized BeaconPubParams getPubParams(Context context) {
        BeaconPubParams beaconPubParams;
        synchronized (BeaconPubParams.class) {
            if (sParamsHolder == null) {
                synchronized (BeaconPubParams.class) {
                    if (sParamsHolder == null) {
                        sParamsHolder = new BeaconPubParams(context);
                    }
                }
            }
            sParamsHolder.refresh();
            beaconPubParams = sParamsHolder;
        }
        return beaconPubParams;
    }

    private void init(Context context) {
        if (context != context.getApplicationContext()) {
            context = context.getApplicationContext();
        }
        C14888c m58989c = C14888c.m58989c();
        m58989c.m58994a(context);
        this.appVersion = C14887b.m58972a();
        this.boundleId = C14887b.m58977b();
        this.sdkId = m58989c.m59005h();
        this.sdkVersion = m58989c.m59006i();
        this.beaconId = C14895j.m59082f();
        this.appFirstInstallTime = C14887b.m58973a(context);
        C14890e m59012l = C14890e.m59012l();
        this.appLastUpdatedTime = m59012l.m59019a(context);
        this.platform = String.valueOf((int) m58989c.m59004g());
        this.dtMf = m59012l.m59033o();
        this.osVersion = m59012l.m59038t();
        this.hardwareOs = m59012l.m59025f() + "_" + m59012l.m59024e();
        this.brand = Build.BRAND;
        C14891f m59045e = C14891f.m59045e();
        this.model = m59045e.m59059h();
        this.language = m59012l.m59032n();
        this.resolution = m59012l.m59040v();
        this.dpi = String.valueOf(m59012l.m59044z());
        this.gpu = "";
        this.isRooted = m59012l.m59031m() ? "1" : "0";
        this.fingerprint = m59012l.m59041w();
        this.qimei = C14895j.m59074b();
        this.mac = m59045e.m59055f();
        this.wifiMac = m59045e.m59063j();
        this.wifiSsid = m59045e.m59065k();
        this.cid = m59012l.m59034p();
    }

    private void refresh() {
        C14890e m59012l = C14890e.m59012l();
        C14891f m59045e = C14891f.m59045e();
        this.networkType = m59012l.m59035q();
        this.modelApn = m59012l.m59036r();
        this.imei = m59045e.m59048b();
        this.dtImei2 = m59045e.m59050c();
        this.dtMeid = m59045e.m59057g();
        this.imsi = m59045e.m59052d();
        this.androidId = m59045e.m59046a();
        this.mac = m59045e.m59055f();
        this.wifiMac = m59045e.m59063j();
        this.wifiSsid = m59045e.m59065k();
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public String getAppFirstInstallTime() {
        return this.appFirstInstallTime;
    }

    public String getAppLastUpdatedTime() {
        return this.appLastUpdatedTime;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public String getBeaconId() {
        return this.beaconId;
    }

    public String getBoundleId() {
        return this.boundleId;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getCid() {
        return this.cid;
    }

    public String getDpi() {
        return this.dpi;
    }

    public String getDtImei2() {
        return this.dtImei2;
    }

    public String getDtMeid() {
        return this.dtMeid;
    }

    public String getDtMf() {
        return this.dtMf;
    }

    public String getFingerprint() {
        return this.fingerprint;
    }

    public String getHardwareOs() {
        return this.hardwareOs;
    }

    public String getImei() {
        return this.imei;
    }

    public String getImsi() {
        return this.imsi;
    }

    public String getIsRooted() {
        return this.isRooted;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getMac() {
        return this.mac;
    }

    public String getModel() {
        return this.model;
    }

    public String getModelApn() {
        return this.modelApn;
    }

    public String getNetworkType() {
        return this.networkType;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getProductId() {
        return this.productId;
    }

    public String getQimei() {
        return this.qimei;
    }

    public String getResolution() {
        return this.resolution;
    }

    public String getSdkId() {
        return this.sdkId;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public String getWifiMac() {
        return this.wifiMac;
    }

    public String getWifiSsid() {
        return this.wifiSsid;
    }

    public String toString() {
        return super.toString();
    }
}
