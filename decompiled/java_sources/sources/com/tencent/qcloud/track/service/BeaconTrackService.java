package com.tencent.qcloud.track.service;

import android.content.Context;
import android.util.Log;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.open.EventResult;
import com.tencent.beacon.event.open.EventType;
import com.tencent.qcloud.track.Constants;
import com.tencent.qcloud.track.TrackExecutors;
import com.tencent.qcloud.track.service.BeaconTrackService;
import com.tencent.qcloud.track.utils.EventFileUtils;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes10.dex */
public class BeaconTrackService extends ATrackService {
    private static final String TAG = "BeaconTrackService";
    private String beaconKey;
    private Context context;

    private void directReport(String str, Map<String, String> map) {
        EventResult report = BeaconReport.getInstance().report(BeaconEvent.builder().withAppKey(this.beaconKey).withCode(str).withType(EventType.NORMAL).withParams(map).build());
        if (isDebug()) {
            StringBuilder sb = new StringBuilder("{");
            for (String str2 : map.keySet()) {
                sb.append(str2 + "=" + map.get(str2) + ", ");
            }
            sb.delete(sb.length() - 2, sb.length()).append("}");
            Log.i(TAG, String.format("beaconKey: %s, eventCode: %s, params: %s => result{ eventID: %s, errorCode: %d, errorMsg: %s}", this.beaconKey, str, sb, Long.valueOf(report.eventID), Integer.valueOf(report.errorCode), report.errMsg));
        }
    }

    public static boolean isInclude() {
        return true;
    }

    private boolean isSimpleDataTrackService() {
        return Constants.SIMPLE_DATA_BEACON_APP_KEY.equals(this.beaconKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$report$0(String str, Map map) {
        EventFileUtils.appendEventToFile(this.context, str, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$report$1() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        EventFileUtils.readEventFromFile(this.context, arrayList, arrayList2);
        for (int i = 0; i < arrayList.size(); i++) {
            directReport((String) arrayList.get(i), (Map) arrayList2.get(i));
        }
    }

    public void init(String str) {
        if (this.isInit) {
            return;
        }
        this.isInit = true;
        this.beaconKey = str;
        if (isInclude()) {
            BeaconReport.getInstance().setLogAble(isDebug());
        }
    }

    @Override // com.tencent.qcloud.track.IReport
    public void report(final String str, final Map<String, String> map) {
        if (!this.isInit && !isSimpleDataTrackService()) {
            TrackExecutors.COMMAND_EXECUTOR.execute(new Runnable() { // from class: com.sunia.HTREnginev2.ro
                @Override // java.lang.Runnable
                public final void run() {
                    BeaconTrackService.this.lambda$report$0(str, map);
                }
            });
        }
        if (!isCloseReport() && this.isInit && isInclude()) {
            if (!isSimpleDataTrackService() && EventFileUtils.eventFileExists(this.context)) {
                TrackExecutors.COMMAND_EXECUTOR.execute(new Runnable() { // from class: com.sunia.HTREnginev2.so
                    @Override // java.lang.Runnable
                    public final void run() {
                        BeaconTrackService.this.lambda$report$1();
                    }
                });
            }
            directReport(str, map);
        }
    }

    public void setContext(Context context) {
        this.context = context;
    }

    @Override // com.tencent.qcloud.track.service.ATrackService
    public void setDebug(boolean z) {
        super.setDebug(z);
        if (isInclude()) {
            BeaconReport.getInstance().setLogAble(z);
        }
    }
}
