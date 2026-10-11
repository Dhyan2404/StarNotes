package com.sunia.HTREnginev2;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes5.dex */
public final class l9p extends q9p {

    /* renamed from: f */
    public final Map f76268f;

    /* renamed from: g */
    public final /* synthetic */ zaaw f76269g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l9p(zaaw zaawVar, Map map) {
        super(zaawVar, null);
        this.f76269g = zaawVar;
        this.f76268f = map;
    }

    @Override // com.sunia.HTREnginev2.q9p
    @WorkerThread
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: a */
    public final void mo55407a() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        boolean z;
        Context context2;
        zabi zabiVar;
        com.google.android.gms.signin.zae zaeVar;
        com.google.android.gms.signin.zae zaeVar2;
        zabi zabiVar2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.f76269g.f29187d;
        com.google.android.gms.common.internal.zal zalVar = new com.google.android.gms.common.internal.zal(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.f76268f.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z2 = ((i9p) this.f76268f.get(client)).f73036c;
                if (!z2) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i = 0;
        int i2 = -1;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i < size) {
                Api.Client client2 = (Api.Client) arrayList.get(i);
                context = this.f76269g.f29186c;
                i2 = zalVar.zab(context, client2);
                i++;
                if (i2 != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i < size2) {
                Api.Client client3 = (Api.Client) arrayList2.get(i);
                context3 = this.f76269g.f29186c;
                i2 = zalVar.zab(context3, client3);
                i++;
                if (i2 == 0) {
                    break;
                }
            }
        }
        if (i2 != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i2, null);
            zaaw zaawVar = this.f76269g;
            zabiVar2 = zaawVar.f29184a;
            zabiVar2.m22081f(new j9p(this, zaawVar, connectionResult));
            return;
        }
        zaaw zaawVar2 = this.f76269g;
        z = zaawVar2.f29196m;
        if (z) {
            zaeVar = zaawVar2.f29194k;
            if (zaeVar != null) {
                zaeVar2 = zaawVar2.f29194k;
                zaeVar2.zab();
            }
        }
        for (Api.Client client4 : this.f76268f.keySet()) {
            BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks = (BaseGmsClient.ConnectionProgressReportCallbacks) this.f76268f.get(client4);
            if (client4.requiresGooglePlayServices()) {
                context2 = this.f76269g.f29186c;
                if (zalVar.zab(context2, client4) != 0) {
                    zaaw zaawVar3 = this.f76269g;
                    zabiVar = zaawVar3.f29184a;
                    zabiVar.m22081f(new k9p(this, zaawVar3, connectionProgressReportCallbacks));
                }
            }
            client4.connect(connectionProgressReportCallbacks);
        }
    }
}
