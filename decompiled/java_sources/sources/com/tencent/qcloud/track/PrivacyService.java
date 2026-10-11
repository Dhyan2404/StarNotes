package com.tencent.qcloud.track;

import android.content.Context;
import android.os.Build;
import com.tencent.qcloud.track.utils.NetworkUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class PrivacyService {
    public static void closeReport() {
        QCloudTrackService.getInstance().setIsCloseReport(true);
    }

    public static Map<String, String> getPrivacyParams(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("client_local_ip", NetworkUtils.getLocalMachineIP());
        hashMap.put("network_type", NetworkUtils.getNetworkType(context));
        return hashMap;
    }
}
