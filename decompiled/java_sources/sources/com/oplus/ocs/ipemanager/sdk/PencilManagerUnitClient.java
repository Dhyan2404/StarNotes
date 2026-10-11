package com.oplus.ocs.ipemanager.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import com.oplus.ipemanager.sdk.ISdkAidlInterface;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.Feature;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.common.api.OplusApi;
import com.oplus.ocs.base.internal.ClientSettings;
import com.oplus.ocs.ipemanager.sdk.PencilManager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes9.dex */
public class PencilManagerUnitClient extends OplusApi<Api.ApiOptions.NoOptions, PencilManagerUnitClient> {
    public static final Api<Api.ApiOptions.NoOptions> API;

    /* renamed from: j */
    public static final String f63162j = "PencilManagerUnitClient";

    /* renamed from: k */
    public static final String f63163k = "OPPO";

    /* renamed from: l */
    public static final String f63164l = "realme";

    /* renamed from: m */
    public static final String f63165m = "oneplus";

    /* renamed from: n */
    public static final String f63166n = "oplus";

    /* renamed from: o */
    public static final int f63167o = 10000;

    /* renamed from: p */
    public static final List<Feature> f63168p = new ArrayList();

    /* renamed from: q */
    public static final Api.ClientKey<PencilManagerClient> f63169q;

    /* renamed from: r */
    public static final Api.AbstractClientBuilder<PencilManagerClient, Api.ApiOptions.NoOptions> f63170r;

    /* renamed from: s */
    public static PencilManagerUnitClient f63171s;

    /* renamed from: g */
    public ISdkAidlInterface f63172g;

    /* renamed from: h */
    public boolean f63173h;

    /* renamed from: i */
    public PencilManager.Callback f63174i;

    static {
        Api.ClientKey<PencilManagerClient> clientKey = new Api.ClientKey<>();
        f63169q = clientKey;
        PencilManagerClientBuilder pencilManagerClientBuilder = new PencilManagerClientBuilder();
        f63170r = pencilManagerClientBuilder;
        API = new Api<>("PencilManagerClient.API", pencilManagerClientBuilder, clientKey);
        f63171s = null;
    }

    @TargetApi(23)
    public PencilManagerUnitClient(Context context) {
        super(context, API, null, new ClientSettings(context.getPackageName(), 10000, f63168p), true);
        Log.i(f63162j, "new PencilManagerUnitClient");
        checkCapability();
    }

    /* renamed from: a */
    public static void m52244a(Context context) {
        try {
            f63171s = new PencilManagerUnitClient(context);
        } catch (Error e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized PencilManagerUnitClient initialize(Context context) {
        synchronized (PencilManagerUnitClient.class) {
            PencilManagerUnitClient pencilManagerUnitClient = f63171s;
            if (pencilManagerUnitClient != null) {
                pencilManagerUnitClient.addThis2Cache();
                return f63171s;
            }
            m52244a(context);
            return f63171s;
        }
    }

    /* renamed from: b */
    public final boolean m52245b() {
        String str = Build.BRAND;
        return "OPPO".equalsIgnoreCase(str) || f63164l.equalsIgnoreCase(str) || f63165m.equalsIgnoreCase(str) || f63166n.equalsIgnoreCase(str);
    }

    @Override // com.oplus.ocs.base.common.api.OplusApi
    public void checkAuthResult(CapabilityInfo capabilityInfo) {
        this.f63173h = capabilityInfo.getAuthResult().getErrrorCode() == 1001;
        Log.d(f63162j, "mAuthCheckFlag: " + this.f63173h);
        if (this.f63173h) {
            this.f63172g = ISdkAidlInterface.AbstractBinderC13024a.m52150a(capabilityInfo.getBinder());
            PencilManager pencilManager = PencilManager.getInstance();
            ISdkAidlInterface iSdkAidlInterface = this.f63172g;
            PencilManager.Callback callback = this.f63174i;
            Log.d("PencilManager", "init");
            if (iSdkAidlInterface == null) {
                Log.e("PencilManager", "sdk interface is null!");
                if (callback != null) {
                    callback.onReleased(-1);
                    return;
                }
                return;
            }
            pencilManager.f63154b = iSdkAidlInterface;
            pencilManager.f63153a = callback;
            try {
                iSdkAidlInterface.asBinder().linkToDeath(pencilManager.f63155c, 0);
                pencilManager.f63154b.setISdkAidlCallback(pencilManager.f63156d);
            } catch (RemoteException e) {
                Log.e("PencilManager", "init setISdkAidlCallback error = ".concat(String.valueOf(e)));
            }
        }
    }

    @Override // com.oplus.ocs.base.common.api.OplusApi
    public int getVersion() {
        return 10000;
    }

    @Override // com.oplus.ocs.base.common.api.OplusApi
    public boolean hasFeature(String str) {
        return m52245b();
    }

    @Override // com.oplus.ocs.base.common.api.OplusApi
    public void init() {
    }

    public void release() {
        PencilManager.getInstance().release();
        PencilManagerUnitClient pencilManagerUnitClient = f63171s;
        if (pencilManagerUnitClient != null) {
            pencilManagerUnitClient.disconnect();
        }
    }

    public void setPencilCallback(PencilManager.Callback callback) {
        this.f63174i = callback;
    }
}
