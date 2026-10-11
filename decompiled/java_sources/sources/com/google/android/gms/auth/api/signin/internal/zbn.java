package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* loaded from: classes5.dex */
public final class zbn {

    /* renamed from: d */
    @Nullable
    public static zbn f28976d;

    /* renamed from: a */
    @VisibleForTesting
    public final Storage f28977a;

    /* renamed from: b */
    @Nullable
    @VisibleForTesting
    public GoogleSignInAccount f28978b;

    /* renamed from: c */
    @Nullable
    @VisibleForTesting
    public GoogleSignInOptions f28979c;

    public zbn(Context context) {
        Storage storage = Storage.getInstance(context);
        this.f28977a = storage;
        this.f28978b = storage.getSavedDefaultGoogleSignInAccount();
        this.f28979c = storage.getSavedDefaultGoogleSignInOptions();
    }

    /* renamed from: a */
    public static synchronized zbn m21904a(Context context) {
        synchronized (zbn.class) {
            zbn zbnVar = f28976d;
            if (zbnVar != null) {
                return zbnVar;
            }
            zbn zbnVar2 = new zbn(context);
            f28976d = zbnVar2;
            return zbnVar2;
        }
    }

    public static synchronized zbn zbc(@NonNull Context context) {
        zbn m21904a;
        synchronized (zbn.class) {
            m21904a = m21904a(context.getApplicationContext());
        }
        return m21904a;
    }

    @Nullable
    public final synchronized GoogleSignInAccount zba() {
        return this.f28978b;
    }

    @Nullable
    public final synchronized GoogleSignInOptions zbb() {
        return this.f28979c;
    }

    public final synchronized void zbd() {
        this.f28977a.clear();
        this.f28978b = null;
        this.f28979c = null;
    }

    public final synchronized void zbe(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f28977a.saveDefaultGoogleSignInAccount(googleSignInAccount, googleSignInOptions);
        this.f28978b = googleSignInAccount;
        this.f28979c = googleSignInOptions;
    }
}
