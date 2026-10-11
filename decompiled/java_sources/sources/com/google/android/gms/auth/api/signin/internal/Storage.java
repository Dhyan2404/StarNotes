package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

@KeepForSdk
/* loaded from: classes5.dex */
public class Storage {

    /* renamed from: c */
    public static final Lock f28965c = new ReentrantLock();

    /* renamed from: d */
    @Nullable
    @GuardedBy("sLk")
    public static Storage f28966d;

    /* renamed from: a */
    public final Lock f28967a = new ReentrantLock();

    /* renamed from: b */
    @GuardedBy("mLk")
    public final SharedPreferences f28968b;

    @VisibleForTesting
    public Storage(Context context) {
        this.f28968b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    /* renamed from: a */
    public static final String m21901a(String str, String str2) {
        return str + ":" + str2;
    }

    @NonNull
    @KeepForSdk
    public static Storage getInstance(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        Lock lock = f28965c;
        lock.lock();
        try {
            if (f28966d == null) {
                f28966d = new Storage(context.getApplicationContext());
            }
            Storage storage = f28966d;
            lock.unlock();
            return storage;
        } catch (Throwable th) {
            f28965c.unlock();
            throw th;
        }
    }

    @KeepForSdk
    public void clear() {
        this.f28967a.lock();
        try {
            this.f28968b.edit().clear().apply();
        } finally {
            this.f28967a.unlock();
        }
    }

    @Nullable
    @KeepForSdk
    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        String zaa;
        String zaa2 = zaa("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(zaa2) || (zaa = zaa(m21901a("googleSignInAccount", zaa2))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zab(zaa);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @KeepForSdk
    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        String zaa;
        String zaa2 = zaa("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(zaa2) || (zaa = zaa(m21901a("googleSignInOptions", zaa2))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(zaa);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @KeepForSdk
    public String getSavedRefreshToken() {
        return zaa("refreshToken");
    }

    @KeepForSdk
    public void saveDefaultGoogleSignInAccount(@NonNull GoogleSignInAccount googleSignInAccount, @NonNull GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        zad("defaultGoogleSignInAccount", googleSignInAccount.zac());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String zac = googleSignInAccount.zac();
        zad(m21901a("googleSignInAccount", zac), googleSignInAccount.zad());
        zad(m21901a("googleSignInOptions", zac), googleSignInOptions.zaf());
    }

    @Nullable
    public final String zaa(@NonNull String str) {
        this.f28967a.lock();
        try {
            return this.f28968b.getString(str, null);
        } finally {
            this.f28967a.unlock();
        }
    }

    public final void zab(@NonNull String str) {
        this.f28967a.lock();
        try {
            this.f28968b.edit().remove(str).apply();
        } finally {
            this.f28967a.unlock();
        }
    }

    public final void zac() {
        String zaa = zaa("defaultGoogleSignInAccount");
        zab("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(zaa)) {
            return;
        }
        zab(m21901a("googleSignInAccount", zaa));
        zab(m21901a("googleSignInOptions", zaa));
    }

    public final void zad(@NonNull String str, @NonNull String str2) {
        this.f28967a.lock();
        try {
            this.f28968b.edit().putString(str, str2).apply();
        } finally {
            this.f28967a.unlock();
        }
    }
}
