package com.sunia.HTREnginev2;

import android.location.LocationManager;
import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final /* synthetic */ class w1j implements Callable {

    /* renamed from: e */
    public final /* synthetic */ LocationManager f88143e;

    /* renamed from: f */
    public final /* synthetic */ LocationManagerCompat.C0691j f88144f;

    public /* synthetic */ w1j(LocationManager locationManager, LocationManagerCompat.C0691j c0691j) {
        this.f88143e = locationManager;
        this.f88144f = c0691j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Boolean m3033d;
        m3033d = LocationManagerCompat.m3033d(this.f88143e, this.f88144f);
        return m3033d;
    }
}
