package com.google.firebase.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import com.google.firebase.StartupTime;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes6.dex */
public class FirebaseInitProvider extends ContentProvider {

    /* renamed from: e */
    public static final String f36038e = "FirebaseInitProvider";

    /* renamed from: f */
    @Nullable
    public static StartupTime f36039f = StartupTime.now();

    /* renamed from: g */
    @NonNull
    public static AtomicBoolean f36040g = new AtomicBoolean(false);

    /* renamed from: h */
    @VisibleForTesting
    public static final String f36041h = "com.google.firebase.firebaseinitprovider";

    /* renamed from: a */
    public static void m28200a(@NonNull ProviderInfo providerInfo) {
        Preconditions.checkNotNull(providerInfo, "FirebaseInitProvider ProviderInfo cannot be null.");
        if (f36041h.equals(providerInfo.authority)) {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
    }

    @Nullable
    public static StartupTime getStartupTime() {
        return f36039f;
    }

    public static boolean isCurrentlyInitializing() {
        return f36040g.get();
    }

    @Override // android.content.ContentProvider
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        m28200a(providerInfo);
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            f36040g.set(true);
            if (FirebaseApp.initializeApp(getContext()) == null) {
                Log.i(f36038e, "FirebaseApp initialization unsuccessful");
            } else {
                Log.i(f36038e, "FirebaseApp initialization successful");
            }
            return false;
        } finally {
            f36040g.set(false);
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
