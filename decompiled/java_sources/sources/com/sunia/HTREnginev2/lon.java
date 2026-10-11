package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import java.util.Calendar;

/* loaded from: classes3.dex */
public class lon {

    /* renamed from: d */
    public static final String f76718d = "TwilightManager";

    /* renamed from: e */
    public static final int f76719e = 6;

    /* renamed from: f */
    public static final int f76720f = 22;

    /* renamed from: g */
    public static lon f76721g;

    /* renamed from: a */
    public final Context f76722a;

    /* renamed from: b */
    public final LocationManager f76723b;

    /* renamed from: c */
    public final C14056a f76724c = new C14056a();

    /* renamed from: com.sunia.HTREnginev2.lon$a */
    /* loaded from: classes3.dex */
    public static class C14056a {

        /* renamed from: a */
        public boolean f76725a;

        /* renamed from: b */
        public long f76726b;
    }

    @VisibleForTesting
    public lon(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.f76722a = context;
        this.f76723b = locationManager;
    }

    /* renamed from: a */
    public static lon m55484a(@NonNull Context context) {
        if (f76721g == null) {
            Context applicationContext = context.getApplicationContext();
            f76721g = new lon(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f76721g;
    }

    @VisibleForTesting
    /* renamed from: f */
    public static void m55485f(lon lonVar) {
        f76721g = lonVar;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    public final Location m55486b() {
        Location m55487c = PermissionChecker.checkSelfPermission(this.f76722a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m55487c("network") : null;
        Location m55487c2 = PermissionChecker.checkSelfPermission(this.f76722a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? m55487c("gps") : null;
        return (m55487c2 == null || m55487c == null) ? m55487c2 != null ? m55487c2 : m55487c : m55487c2.getTime() > m55487c.getTime() ? m55487c2 : m55487c;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    /* renamed from: c */
    public final Location m55487c(String str) {
        try {
            if (this.f76723b.isProviderEnabled(str)) {
                return this.f76723b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d(f76718d, "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: d */
    public boolean m55488d() {
        C14056a c14056a = this.f76724c;
        if (m55489e()) {
            return c14056a.f76725a;
        }
        Location m55486b = m55486b();
        if (m55486b != null) {
            m55490g(m55486b);
            return c14056a.f76725a;
        }
        Log.i(f76718d, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    /* renamed from: e */
    public final boolean m55489e() {
        return this.f76724c.f76726b > System.currentTimeMillis();
    }

    /* renamed from: g */
    public final void m55490g(@NonNull Location location) {
        long j;
        C14056a c14056a = this.f76724c;
        long currentTimeMillis = System.currentTimeMillis();
        kon m55296b = kon.m55296b();
        m55296b.m55297a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        m55296b.m55297a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = m55296b.f75694c == 1;
        long j2 = m55296b.f75693b;
        long j3 = m55296b.f75692a;
        m55296b.m55297a(currentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
        long j4 = m55296b.f75693b;
        if (j2 == -1 || j3 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j3 ? j4 + 0 : currentTimeMillis > j2 ? j3 + 0 : j2 + 0) + 60000;
        }
        c14056a.f76725a = z;
        c14056a.f76726b = j;
    }
}
