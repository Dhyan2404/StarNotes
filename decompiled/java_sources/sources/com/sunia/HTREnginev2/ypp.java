package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.errorprone.annotations.CheckReturnValue;
import com.sunia.HTREnginev2.ypp;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

@CheckReturnValue
/* loaded from: classes5.dex */
public final class ypp {

    /* renamed from: e */
    public static volatile zzag f90964e;

    /* renamed from: g */
    public static Context f90966g;

    /* renamed from: a */
    public static final fop f90960a = new dkp(rmp.m56984c("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b */
    public static final fop f90961b = new lkp(rmp.m56984c("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c */
    public static final fop f90962c = new alp(rmp.m56984c("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* renamed from: d */
    public static final fop f90963d = new qlp(rmp.m56984c("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f */
    public static final Object f90965f = new Object();

    /* renamed from: a */
    public static bsp m58460a(String str, rmp rmpVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m58467h(str, rmpVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: b */
    public static bsp m58461b(String str, boolean z, boolean z2, boolean z3) {
        return m58468i(str, z, false, false, true);
    }

    /* renamed from: c */
    public static bsp m58462c(String str, boolean z, boolean z2, boolean z3) {
        return m58468i(str, z, false, false, false);
    }

    /* renamed from: d */
    public static /* synthetic */ String m58463d(boolean z, String str, rmp rmpVar) throws Exception {
        boolean z2 = false;
        if (!z && m58467h(str, rmpVar, true, false).f66104a) {
            z2 = true;
        }
        String str2 = true != z2 ? "not allowed" : "debug cert rejected";
        MessageDigest zza = AndroidUtilsLight.zza(MessageDigestAlgorithms.SHA_256);
        Preconditions.checkNotNull(zza);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, Hex.bytesToStringLowercase(zza.digest(rmpVar.mo54151e())), Boolean.valueOf(z), "12451000.false");
    }

    /* renamed from: e */
    public static synchronized void m58464e(Context context) {
        synchronized (ypp.class) {
            if (f90966g != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            } else if (context != null) {
                f90966g = context.getApplicationContext();
            }
        }
    }

    /* renamed from: f */
    public static boolean m58465f() {
        boolean z;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                m58469j();
                z = f90964e.zzg();
            } catch (RemoteException | DynamiteModule.LoadingException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                z = false;
            }
            return z;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: g */
    public static boolean m58466g() {
        boolean z;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                m58469j();
                z = f90964e.zzi();
            } catch (RemoteException | DynamiteModule.LoadingException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                z = false;
            }
            return z;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: h */
    public static bsp m58467h(final String str, final rmp rmpVar, final boolean z, boolean z2) {
        try {
            m58469j();
            Preconditions.checkNotNull(f90966g);
            try {
                return f90964e.zzh(new zzs(str, rmpVar, z, z2), ObjectWrapper.wrap(f90966g.getPackageManager())) ? bsp.m53337b() : new urp(new Callable() { // from class: com.google.android.gms.common.zze
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ypp.m58463d(z, str, rmpVar);
                    }
                }, null);
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return bsp.m53339d("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            return bsp.m53339d("module init: ".concat(String.valueOf(e2.getMessage())), e2);
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.dynamic.IObjectWrapper, android.os.IBinder] */
    /* renamed from: i */
    public static bsp m58468i(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        bsp m53339d;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(f90966g);
            try {
                m58469j();
                com.google.android.gms.common.zzo zzoVar = new com.google.android.gms.common.zzo(str, z, false, ObjectWrapper.wrap(f90966g), false, true);
                try {
                    zzq zze = z4 ? f90964e.zze(zzoVar) : f90964e.zzf(zzoVar);
                    if (zze.zzb()) {
                        m53339d = bsp.m53340f(zze.zzc());
                    } else {
                        String zza = zze.zza();
                        PackageManager.NameNotFoundException nameNotFoundException = zze.zzd() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (zza == null) {
                            zza = "error checking package certificate";
                        }
                        m53339d = bsp.m53341g(zze.zzc(), zze.zzd(), zza, nameNotFoundException);
                    }
                } catch (RemoteException e) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                    m53339d = bsp.m53339d("module call", e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                m53339d = bsp.m53339d("module init: ".concat(String.valueOf(e2.getMessage())), e2);
            }
            return m53339d;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: j */
    public static void m58469j() throws DynamiteModule.LoadingException {
        if (f90964e != null) {
            return;
        }
        Preconditions.checkNotNull(f90966g);
        synchronized (f90965f) {
            if (f90964e == null) {
                f90964e = zzaf.zzb(DynamiteModule.load(f90966g, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
