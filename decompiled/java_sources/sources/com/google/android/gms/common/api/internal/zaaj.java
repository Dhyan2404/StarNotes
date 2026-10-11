package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.g9p;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zaaj implements zabf {

    /* renamed from: a */
    public final zabi f29182a;

    /* renamed from: b */
    public boolean f29183b = false;

    public zaaj(zabi zabiVar) {
        this.f29182a = zabiVar;
    }

    /* renamed from: b */
    public final void m22037b() {
        if (this.f29183b) {
            this.f29183b = false;
            this.f29182a.f29244n.f29229x.zab();
            zaj();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation.ApiMethodImpl zaa(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zab(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        try {
            this.f29182a.f29244n.f29229x.m22124a(apiMethodImpl);
            zabe zabeVar = this.f29182a.f29244n;
            Api.Client client = (Api.Client) zabeVar.f29220o.get(apiMethodImpl.getClientKey());
            Preconditions.checkNotNull(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !this.f29182a.f29237g.containsKey(apiMethodImpl.getClientKey())) {
                apiMethodImpl.run(client);
            } else {
                apiMethodImpl.setFailedResult(new Status(17));
            }
        } catch (DeadObjectException unused) {
            this.f29182a.m22081f(new C5054b(this, this));
        }
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zad() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zae() {
        if (this.f29183b) {
            this.f29183b = false;
            this.f29182a.m22081f(new g9p(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zag(@Nullable Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zah(ConnectionResult connectionResult, Api api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zai(int i) {
        this.f29182a.m22080e(null);
        this.f29182a.f29245o.zac(i, this.f29183b);
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final boolean zaj() {
        if (this.f29183b) {
            return false;
        }
        Set set = this.f29182a.f29244n.f29228w;
        if (set == null || set.isEmpty()) {
            this.f29182a.m22080e(null);
            return true;
        }
        this.f29183b = true;
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            ((zada) it2.next()).m22119h();
        }
        return false;
    }
}
