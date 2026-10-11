package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.google.android.gms.common.data.DataBufferObserver;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class DataBufferObserverSet implements DataBufferObserver, DataBufferObserver.Observable {

    /* renamed from: a */
    public final HashSet f29307a = new HashSet();

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void addObserver(@NonNull DataBufferObserver dataBufferObserver) {
        this.f29307a.add(dataBufferObserver);
    }

    public void clear() {
        this.f29307a.clear();
    }

    public boolean hasObservers() {
        return !this.f29307a.isEmpty();
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataChanged() {
        Iterator it2 = this.f29307a.iterator();
        while (it2.hasNext()) {
            ((DataBufferObserver) it2.next()).onDataChanged();
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeChanged(int i, int i2) {
        Iterator it2 = this.f29307a.iterator();
        while (it2.hasNext()) {
            ((DataBufferObserver) it2.next()).onDataRangeChanged(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeInserted(int i, int i2) {
        Iterator it2 = this.f29307a.iterator();
        while (it2.hasNext()) {
            ((DataBufferObserver) it2.next()).onDataRangeInserted(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeMoved(int i, int i2, int i3) {
        Iterator it2 = this.f29307a.iterator();
        while (it2.hasNext()) {
            ((DataBufferObserver) it2.next()).onDataRangeMoved(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeRemoved(int i, int i2) {
        Iterator it2 = this.f29307a.iterator();
        while (it2.hasNext()) {
            ((DataBufferObserver) it2.next()).onDataRangeRemoved(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void removeObserver(@NonNull DataBufferObserver dataBufferObserver) {
        this.f29307a.remove(dataBufferObserver);
    }
}
