package com.tencent.beacon.event;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.Log;
import com.tencent.beacon.base.net.p066b.C14933b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.core.info.BeaconPubParams;
import com.tencent.beacon.event.open.BeaconConfig;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.BeaconInitException;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.open.EventType;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.module.EventModule;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p071c.C14961a;
import com.tencent.beacon.upload.InitHandleListener;
import com.tencent.beacon.upload.TunnelInfo;
import com.tencent.beacon.upload.UploadHandleListener;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

@Deprecated
/* loaded from: classes10.dex */
public class UserAction {

    /* renamed from: a */
    private static String f93018a;

    /* renamed from: c */
    private static String f93020c;
    public static Context mContext;

    /* renamed from: b */
    private static BeaconConfig.Builder f93019b = BeaconConfig.builder();

    /* renamed from: d */
    private static boolean f93021d = true;

    @Deprecated
    public static void closeUseInfoEvent() {
    }

    public static void doUploadRecords() {
        EventModule eventModule = (EventModule) C14888c.m58989c().m58990a(ModuleName.EVENT);
        if (eventModule != null) {
            eventModule.m59678a(false);
        }
    }

    public static void flushObjectsToDB(boolean z) {
    }

    public static Map<String, String> getAdditionalInfo() {
        return getAdditionalInfo(null);
    }

    public static String getAppKey() {
        return f93018a;
    }

    public static String getCloudParas(String str) {
        return "";
    }

    public static BeaconPubParams getCommonParams() {
        return BeaconReport.getInstance().getCommonParams(mContext);
    }

    public static String getEventDomain() {
        return C14933b.f92851c;
    }

    public static String getOpenID(String str) {
        EventModule eventModule = (EventModule) C14888c.m58989c().m58990a(ModuleName.EVENT);
        return eventModule != null ? eventModule.m59679b(str) : "";
    }

    public static String getSDKVersion() {
        return BeaconReport.getInstance().getSDKVersion();
    }

    public static String getStrategyDomain() {
        return C14933b.f92852d;
    }

    public static String getUserID(String str) {
        EventModule eventModule = (EventModule) C14888c.m58989c().m58990a(ModuleName.EVENT);
        return eventModule != null ? eventModule.m59682c(str) : "";
    }

    public static void initUserAction(Context context) throws BeaconInitException {
        initUserAction(context, true);
    }

    public static boolean loginEvent(boolean z, long j, Map<String, String> map) {
        if (mContext != null) {
            map.put("A19", C14890e.m59012l().m59035q());
        }
        return onUserAction("rqd_wgLogin", z, j, 0L, map, true);
    }

    public static boolean onDTUserAction(Context context, String str, boolean z, long j, long j2, Map<String, String> map, boolean z2, boolean z3) {
        if (context == null) {
            return false;
        }
        if (map == null) {
            return onUserAction(str, z, j, j2, null, z2, z3);
        }
        C14888c.m58989c().m58994a(context);
        C14890e m59012l = C14890e.m59012l();
        C14891f m59045e = C14891f.m59045e();
        HashMap hashMap = new HashMap(map);
        hashMap.put("dt_imei2", "" + m59045e.m59050c());
        hashMap.put("dt_meid", "" + m59045e.m59057g());
        hashMap.put("dt_mf", "" + m59012l.m59033o());
        return onUserAction(str, z, j, j2, hashMap, z2, z3);
    }

    public static boolean onDTUserActionToTunnel(Context context, String str, String str2, Map<String, String> map, boolean z, boolean z2) {
        if (context == null) {
            return false;
        }
        if (map == null) {
            return onUserActionToTunnel(str, str2, null, z, z2);
        }
        C14888c.m58989c().m58994a(context);
        C14890e m59012l = C14890e.m59012l();
        C14891f m59045e = C14891f.m59045e();
        HashMap hashMap = new HashMap(map);
        hashMap.put("dt_imei2", "" + m59045e.m59050c());
        hashMap.put("dt_meid", "" + m59045e.m59057g());
        hashMap.put("dt_mf", "" + m59012l.m59033o());
        return onUserActionToTunnel(str, str2, hashMap, z, z2);
    }

    public static void onPageIn(String str) {
        C14961a.m59418a(C14991d.m59561d(str));
    }

    public static void onPageOut(String str) {
        C14961a.m59419b(C14991d.m59561d(str));
    }

    public static boolean onUserAction(String str, boolean z, long j, long j2, Map<String, String> map, boolean z2) {
        return onUserAction(str, z, j, j2, map, z2, false);
    }

    public static boolean onUserActionToTunnel(String str, String str2, boolean z, long j, long j2, Map<String, String> map, boolean z2, boolean z3) {
        return BeaconReport.getInstance().report(BeaconEvent.builder().withCode(str2).withType(z2 ? EventType.REALTIME : EventType.NORMAL).withParams(map).withAppKey(str).withIsSucceed(z).build()).isSuccess();
    }

    public static void registerTunnel(TunnelInfo tunnelInfo) {
    }

    public static void setAdditionalInfo(String str, Map<String, String> map) {
        BeaconReport.getInstance().setAdditionalParams(str, map);
    }

    public static void setAppKey(String str) {
        f93018a = str;
    }

    public static void setAppVersion(String str) {
        f93020c = str;
    }

    @Deprecated
    public static void setAutoLaunchEventUsable(boolean z) {
    }

    public static void setChannelID(String str) {
        BeaconReport.getInstance().setChannelID(str);
    }

    public static void setJsClientId(String str) {
    }

    public static void setLogAble(boolean z, boolean z2) {
        C14954c.m59394a(z);
        C14954c.m59396b(z);
    }

    public static void setOAID(String str) {
        BeaconReport.getInstance().setOAID(str);
    }

    @Deprecated
    public static void setOldInitMethodEnable(boolean z) {
        f93021d = z;
    }

    public static void setOmgId(String str) {
        BeaconReport.getInstance().setOmgID(str);
    }

    public static void setOpenID(String str) {
        BeaconReport.getInstance().setOpenID(null, str);
    }

    public static void setQQ(String str) {
        BeaconReport.getInstance().setQQ(str);
    }

    public static void setReportDomain(String str, String str2) {
        C14933b.m59281a(str, str2);
    }

    public static void setReportIP(String str, String str2) {
        C14933b.m59284b(str, str2);
    }

    public static void setScheduledService(ScheduledExecutorService scheduledExecutorService) {
        f93019b.setExecutorService(scheduledExecutorService);
    }

    public static void setStrictMode(boolean z) {
        BeaconReport.getInstance().setStrictMode(z);
    }

    public static void setUploadMode(boolean z) {
        if (z) {
            BeaconReport.getInstance().pauseUpload(true);
        } else {
            BeaconReport.getInstance().resumeUpload();
        }
    }

    public static void setUserID(String str, String str2) {
        BeaconReport.getInstance().setUserID(str, str2);
    }

    public static Map<String, String> getAdditionalInfo(String str) {
        EventModule eventModule = (EventModule) C14888c.m58989c().m58990a(ModuleName.EVENT);
        if (eventModule != null) {
            return eventModule.m59675a(str);
        }
        return null;
    }

    public static void initUserAction(Context context, boolean z) throws BeaconInitException {
        initUserAction(context, z, 0L);
    }

    public static boolean onUserAction(String str, Map<String, String> map, boolean z, boolean z2) {
        return onUserAction(str, true, -1L, -1L, map, z, z2);
    }

    public static void setAdditionalInfo(Map<String, String> map) {
        setAdditionalInfo(null, map);
    }

    public static void setUserID(String str) {
        setUserID(null, str);
    }

    public static void initUserAction(Context context, boolean z, long j) throws BeaconInitException {
        initUserAction(context, z, j, null, null);
    }

    public static boolean onUserAction(String str, boolean z, long j, long j2, Map<String, String> map, boolean z2, boolean z3) {
        return BeaconReport.getInstance().report(BeaconEvent.builder().withCode(str).withType(z2 ? EventType.REALTIME : EventType.NORMAL).withParams(map).withAppKey(f93018a).withIsSucceed(z).build()).isSuccess();
    }

    @TargetApi(14)
    public static void initUserAction(Context context, boolean z, long j, InitHandleListener initHandleListener, UploadHandleListener uploadHandleListener) throws BeaconInitException {
        if (f93021d) {
            mContext = context;
            BeaconReport.getInstance().start(context, f93018a, f93019b.build());
        } else {
            Log.e("beacon", "UserAction.initUserAction is not available");
        }
    }

    public static boolean onUserActionToTunnel(String str, String str2, Map<String, String> map, boolean z, boolean z2) {
        return onUserActionToTunnel(str, str2, true, -1L, -1L, map, z, z2);
    }
}
