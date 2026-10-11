package com.google.firebase.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;

/* loaded from: classes6.dex */
public class DataCollectionConfigStorage {

    @VisibleForTesting
    public static final String DATA_COLLECTION_DEFAULT_ENABLED = "firebase_data_collection_default_enabled";

    /* renamed from: e */
    public static final String f36023e = "com.google.firebase.common.prefs:";

    /* renamed from: a */
    public final Context f36024a;

    /* renamed from: b */
    public final SharedPreferences f36025b;

    /* renamed from: c */
    public final Publisher f36026c;

    /* renamed from: d */
    public boolean f36027d;

    public DataCollectionConfigStorage(Context context, String str, Publisher publisher) {
        Context m28186a = m28186a(context);
        this.f36024a = m28186a;
        this.f36025b = m28186a.getSharedPreferences(f36023e + str, 0);
        this.f36026c = publisher;
        this.f36027d = m28187b();
    }

    /* renamed from: a */
    public static Context m28186a(Context context) {
        return ContextCompat.createDeviceProtectedStorageContext(context);
    }

    /* renamed from: b */
    public final boolean m28187b() {
        return this.f36025b.contains(DATA_COLLECTION_DEFAULT_ENABLED) ? this.f36025b.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED, true) : m28188c();
    }

    /* renamed from: c */
    public final boolean m28188c() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f36024a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f36024a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(DATA_COLLECTION_DEFAULT_ENABLED)) {
                return true;
            }
            return applicationInfo.metaData.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED);
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    /* renamed from: d */
    public final synchronized void m28189d(boolean z) {
        if (this.f36027d != z) {
            this.f36027d = z;
            this.f36026c.publish(new Event<>(DataCollectionDefaultChange.class, new DataCollectionDefaultChange(z)));
        }
    }

    public synchronized boolean isEnabled() {
        return this.f36027d;
    }

    public synchronized void setEnabled(Boolean bool) {
        if (bool == null) {
            this.f36025b.edit().remove(DATA_COLLECTION_DEFAULT_ENABLED).apply();
            m28189d(m28188c());
        } else {
            boolean equals = Boolean.TRUE.equals(bool);
            this.f36025b.edit().putBoolean(DATA_COLLECTION_DEFAULT_ENABLED, equals).apply();
            m28189d(equals);
        }
    }
}
