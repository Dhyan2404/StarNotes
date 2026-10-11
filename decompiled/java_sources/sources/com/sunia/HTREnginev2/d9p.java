package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zaad;
import java.util.Map;

/* loaded from: classes5.dex */
public final class d9p implements PendingResult.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ BasePendingResult f67657a;

    /* renamed from: b */
    public final /* synthetic */ zaad f67658b;

    public d9p(zaad zaadVar, BasePendingResult basePendingResult) {
        this.f67658b = zaadVar;
        this.f67657a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Map map;
        map = this.f67658b.f29177a;
        map.remove(this.f67657a);
    }
}
