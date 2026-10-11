package com.tencent.qcloud.track;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.tencent.beacon.event.open.BeaconConfig;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.qcloud.track.service.ATrackService;
import com.tencent.qcloud.track.service.BeaconTrackService;
import com.tencent.qcloud.track.service.ClsTrackService;
import com.tencent.qcloud.track.utils.NetworkUtils;
import com.tencent.qimei.sdk.QimeiSDK;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public class QCloudTrackService {
    private static final String EVENT_KEY_CLS_REPORT = "cls_report";
    private static final String TAG = "TrackService";
    private static volatile QCloudTrackService instance;
    private Map<String, String> businessParams;
    private Map<String, String> commonParams;
    private Context context;
    private BeaconTrackService simpleDataTrackService;
    private boolean isInitialized = false;
    private final Map<String, List<ATrackService>> trackServiceMap = new HashMap();

    private QCloudTrackService() {
    }

    private Map<String, String> getCommonParams() {
        HashMap hashMap = new HashMap();
        String packageName = this.context.getPackageName();
        hashMap.put("boundle_id", packageName);
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(packageName, 0);
            String str = packageInfo.versionName;
            hashMap.put("app_version_code", String.valueOf(packageInfo.getLongVersionCode()));
            hashMap.put("app_version_name", str);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        hashMap.put("os_name", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("client_local_ip", NetworkUtils.getLocalMachineIP());
        hashMap.put("client_proxy", String.valueOf(NetworkUtils.isProxy()));
        hashMap.put("network_type", NetworkUtils.getNetworkType(this.context));
        return hashMap;
    }

    public static QCloudTrackService getInstance() {
        if (instance == null) {
            synchronized (QCloudTrackService.class) {
                if (instance == null) {
                    instance = new QCloudTrackService();
                }
            }
        }
        return instance;
    }

    private void initBeaconAndQimei() {
        BeaconConfig build = BeaconConfig.builder().auditEnable(false).bidEnable(false).qmspEnable(false).pagePathEnable(false).setNormalPollingTime(30000L).build();
        BeaconReport beaconReport = BeaconReport.getInstance();
        try {
            beaconReport.setCollectProcessInfo(false);
        } catch (NoSuchMethodError unused) {
        }
        try {
            QimeiSDK.getInstance(Constants.SIMPLE_DATA_BEACON_APP_KEY).getStrategy().enableOAID(false).enableIMEI(false).enableIMSI(false).enableAndroidId(false).enableMAC(false).enableCid(false).enableProcessInfo(false).enableBuildModel(false);
            beaconReport.start(this.context, Constants.SIMPLE_DATA_BEACON_APP_KEY, build);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            beaconReport.setCollectProcessInfo(false);
        } catch (NoSuchMethodError unused2) {
        }
    }

    public synchronized void addTrackService(String str, ATrackService aTrackService) {
        if (this.trackServiceMap.get(str) == null) {
            this.trackServiceMap.put(str, new ArrayList());
        }
        this.trackServiceMap.get(str).add(aTrackService);
    }

    public synchronized void init(Context context) {
        try {
            if (this.isInitialized) {
                Log.d(TAG, "init has been called and the initialization code will not be executed again.");
            } else {
                this.context = context.getApplicationContext();
                this.commonParams = getCommonParams();
                if (BeaconTrackService.isInclude()) {
                    initBeaconAndQimei();
                    BeaconTrackService beaconTrackService = new BeaconTrackService();
                    this.simpleDataTrackService = beaconTrackService;
                    beaconTrackService.setContext(context);
                    this.simpleDataTrackService.init(Constants.SIMPLE_DATA_BEACON_APP_KEY);
                } else {
                    Log.i(TAG, "The beacon library is not referenced, cancel the beacon initialization");
                }
                this.isInitialized = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void report(String str, Map<String, String> map) {
        try {
            Map<String, String> map2 = this.commonParams;
            if (map2 != null && map2.size() > 0) {
                map.putAll(this.commonParams);
            }
            Map<String, String> map3 = this.businessParams;
            if (map3 != null && map3.size() > 0) {
                map.putAll(this.businessParams);
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getValue() == null) {
                    map.put(entry.getKey(), "null");
                }
            }
            List<ATrackService> list = this.trackServiceMap.get(str);
            if (list != null) {
                Iterator<ATrackService> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().report(str, map);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void reportSimpleData(String str, Map<String, String> map) {
        if (this.simpleDataTrackService == null) {
            return;
        }
        try {
            Map<String, String> map2 = this.commonParams;
            if (map2 != null && map2.size() > 0) {
                map.putAll(this.commonParams);
            }
            Map<String, String> map3 = this.businessParams;
            if (map3 != null && map3.size() > 0) {
                map.putAll(this.businessParams);
            }
            map.put(EVENT_KEY_CLS_REPORT, String.valueOf(ClsTrackService.isInclude()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getValue() == null) {
                    map.put(entry.getKey(), "null");
                }
            }
            this.simpleDataTrackService.report(str, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setBusinessParams(Map<String, String> map) {
        this.businessParams = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.businessParams.put("business_" + entry.getKey(), entry.getValue());
        }
    }

    public void setDebug(boolean z) {
        BeaconTrackService beaconTrackService = this.simpleDataTrackService;
        if (beaconTrackService != null) {
            beaconTrackService.setDebug(z);
        }
        Iterator<String> it2 = this.trackServiceMap.keySet().iterator();
        while (it2.hasNext()) {
            List<ATrackService> list = this.trackServiceMap.get(it2.next());
            if (list != null) {
                Iterator<ATrackService> it3 = list.iterator();
                while (it3.hasNext()) {
                    it3.next().setDebug(z);
                }
            }
        }
    }

    public void setIsCloseReport(boolean z) {
        BeaconTrackService beaconTrackService = this.simpleDataTrackService;
        if (beaconTrackService != null) {
            beaconTrackService.setIsCloseReport(z);
        }
        Iterator<String> it2 = this.trackServiceMap.keySet().iterator();
        while (it2.hasNext()) {
            List<ATrackService> list = this.trackServiceMap.get(it2.next());
            if (list != null) {
                Iterator<ATrackService> it3 = list.iterator();
                while (it3.hasNext()) {
                    it3.next().setIsCloseReport(z);
                }
            }
        }
    }
}
