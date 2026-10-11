package com.oplus.ocs.base.common.api;

import android.content.Context;
import com.oplus.ocs.base.common.AuthResult;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.CapabilityListener;
import com.oplus.ocs.base.internal.ClientSettings;
import com.oplus.ocs.base.utils.C13071a;
import com.oplus.ocs.base.utils.C13074d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes9.dex */
public class CapabilityApiClient {
    private static final String TAG = "CapabilityApiClient";
    private static volatile Map<Api, CapabilityInfo> sApis = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public static CapabilityInfo buildCapabilityInfo(Context context, int i) {
        return new CapabilityInfo(new ArrayList(), 100011, new AuthResult(context.getPackageName(), 0, 0, i, new byte[4]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void callback(Api[] apiArr, int[] iArr, CapabilityListener capabilityListener) {
        synchronized (CapabilityApiClient.class) {
            for (int i : iArr) {
                if (i == 0) {
                    return;
                }
            }
            if (capabilityListener != null) {
                capabilityListener.onResult(apiArr, iArr);
            }
        }
    }

    public static boolean checkCapability(Api api) {
        CapabilityInfo capabilityInfo;
        return sApis.containsKey(api) && (capabilityInfo = sApis.get(api)) != null && capabilityInfo.getAuthResult() != null && capabilityInfo.getAuthResult().getErrrorCode() == 1001;
    }

    public static void checkSelfCapabilities(final Context context, final Api[] apiArr, final CapabilityListener capabilityListener) {
        if (apiArr == null || apiArr.length == 0) {
            if (capabilityListener != null) {
                capabilityListener.onResult(new Api[0], new int[0]);
            }
            C13071a.m52226a(TAG, "capa apis is empty");
            return;
        }
        final int[] iArr = new int[apiArr.length];
        for (int i = 0; i < apiArr.length; i++) {
            final Api api = apiArr[i];
            if (sApis.containsKey(api)) {
                CapabilityInfo capabilityInfo = sApis.get(api);
                if (capabilityInfo == null || capabilityInfo.getAuthResult() == null) {
                    C13071a.m52226a(TAG, api.getName() + "sapis none");
                    iArr[i] = 7;
                } else {
                    iArr[i] = capabilityInfo.getAuthResult().getErrrorCode();
                }
                callback(apiArr, iArr, capabilityListener);
            } else if (api.isAuth()) {
                final C13045l m52188a = C13045l.m52188a(context);
                ClientSettings clientSettings = new ClientSettings(context.getPackageName());
                final int i2 = i;
                InterfaceC13042i interfaceC13042i = new InterfaceC13042i() { // from class: com.oplus.ocs.base.common.api.CapabilityApiClient.1
                    @Override // com.oplus.ocs.base.common.api.InterfaceC13042i
                    /* renamed from: a */
                    public final void mo52157a(CapabilityInfo capabilityInfo2) {
                        if (capabilityInfo2 == null || capabilityInfo2.getAuthResult() == null) {
                            C13071a.m52226a(CapabilityApiClient.TAG, api.getName() + " fail, capability is null");
                            iArr[i2] = 7;
                            capabilityInfo2 = CapabilityApiClient.buildCapabilityInfo(context, 7);
                        } else {
                            iArr[i2] = capabilityInfo2.getAuthResult().getErrrorCode();
                        }
                        CapabilityApiClient.sApis.put(api, capabilityInfo2);
                        CapabilityApiClient.callback(apiArr, iArr, capabilityListener);
                    }
                };
                C13074d.m52235a(api, "api not be null");
                C13074d.m52235a(clientSettings, "clientsettings not be null");
                if (!C13045l.f63070c.containsKey(api.getClientKey())) {
                    C13046m c13046m = new C13046m(m52188a.f63073a, api, null, clientSettings);
                    c13046m.setOnClearListener(new InterfaceC13043j() { // from class: com.oplus.ocs.base.common.api.l.3

                        /* renamed from: a */
                        final /* synthetic */ Api f63080a;

                        public AnonymousClass3(final Api api2) {
                            r2 = api2;
                        }

                        @Override // com.oplus.ocs.base.common.api.InterfaceC13043j
                        /* renamed from: a */
                        public final void mo52187a() {
                            C13045l.m52189a(r2.getClientKey());
                        }
                    });
                    c13046m.setOnCapabilityAuthListener(interfaceC13042i);
                    C13045l.f63070c.put(api2.getClientKey(), c13046m);
                    m52188a.m52197a(api2);
                }
            } else {
                C13071a.m52226a(TAG, "current capa doesn't need to authenticate.");
                iArr[i] = 1001;
                sApis.put(api2, buildCapabilityInfo(context, 1001));
                callback(apiArr, iArr, capabilityListener);
            }
        }
    }

    public static CapabilityInfo getCapabilityInfo(Api api) {
        return sApis.get(api);
    }
}
