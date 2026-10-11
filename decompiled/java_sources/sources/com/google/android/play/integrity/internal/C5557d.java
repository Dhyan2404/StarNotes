package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.play.integrity.internal.d */
/* loaded from: classes6.dex */
public final class C5557d {
    /* renamed from: a */
    public static final List m25735a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            AbstractC5558f abstractC5558f = (AbstractC5558f) it2.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", abstractC5558f.mo25738a());
            bundle.putLong("event_timestamp", abstractC5558f.mo25739b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static final void m25736b(int i, List list) {
        list.add(AbstractC5558f.m25737c(i, System.currentTimeMillis()));
    }
}
