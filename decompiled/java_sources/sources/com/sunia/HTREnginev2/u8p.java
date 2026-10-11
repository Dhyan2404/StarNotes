package com.sunia.HTREnginev2;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.play.integrity.internal.AbstractRunnableC5570r;
import com.google.android.play.integrity.internal.C5545ac;
import com.google.android.play.integrity.internal.InterfaceC5574x;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class u8p extends AbstractRunnableC5570r {

    /* renamed from: g */
    public final /* synthetic */ IBinder f86217g;

    /* renamed from: h */
    public final /* synthetic */ zxo f86218h;

    public u8p(zxo zxoVar, IBinder iBinder) {
        this.f86218h = zxoVar;
        this.f86217g = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        InterfaceC5574x interfaceC5574x;
        List list;
        List list2;
        C5545ac c5545ac = this.f86218h.f92298e;
        interfaceC5574x = c5545ac.f33469i;
        c5545ac.f33474n = (IInterface) interfaceC5574x.mo25662a(this.f86217g);
        C5545ac.m25716r(this.f86218h.f92298e);
        this.f86218h.f92298e.f33467g = false;
        list = this.f86218h.f92298e.f33464d;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        list2 = this.f86218h.f92298e.f33464d;
        list2.clear();
    }
}
