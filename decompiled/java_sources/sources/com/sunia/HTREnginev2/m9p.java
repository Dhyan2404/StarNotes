package com.sunia.HTREnginev2;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class m9p extends q9p {

    /* renamed from: f */
    public final ArrayList f77386f;

    /* renamed from: g */
    public final /* synthetic */ zaaw f77387g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m9p(zaaw zaawVar, ArrayList arrayList) {
        super(zaawVar, null);
        this.f77387g = zaawVar;
        this.f77386f = arrayList;
    }

    @Override // com.sunia.HTREnginev2.q9p
    @WorkerThread
    /* renamed from: a */
    public final void mo55407a() {
        zabi zabiVar;
        IAccountAccessor iAccountAccessor;
        zabi zabiVar2;
        zaaw zaawVar = this.f77387g;
        zabiVar = zaawVar.f29184a;
        zabiVar.f29244n.f29221p = zaaw.m22046q(zaawVar);
        ArrayList arrayList = this.f77386f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Api.Client client = (Api.Client) arrayList.get(i);
            zaaw zaawVar2 = this.f77387g;
            iAccountAccessor = zaawVar2.f29198o;
            zabiVar2 = zaawVar2.f29184a;
            client.getRemoteService(iAccountAccessor, zabiVar2.f29244n.f29221p);
        }
    }
}
