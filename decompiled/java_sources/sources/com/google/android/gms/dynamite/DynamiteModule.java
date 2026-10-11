package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.ljp;
import com.sunia.HTREnginev2.zpp;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

@KeepForSdk
/* loaded from: classes5.dex */
public final class DynamiteModule {

    @KeepForSdk
    public static final int LOCAL = -1;

    @KeepForSdk
    public static final int NONE = 0;

    @KeepForSdk
    public static final int NO_SELECTION = 0;

    @KeepForSdk
    public static final int REMOTE = 1;

    /* renamed from: b */
    @Nullable
    @GuardedBy("DynamiteModule.class")
    public static Boolean f29523b = null;

    /* renamed from: c */
    @Nullable
    @GuardedBy("DynamiteModule.class")
    public static String f29524c = null;

    /* renamed from: d */
    @GuardedBy("DynamiteModule.class")
    public static boolean f29525d = false;

    /* renamed from: e */
    @GuardedBy("DynamiteModule.class")
    public static int f29526e = -1;

    /* renamed from: f */
    @Nullable
    @GuardedBy("DynamiteModule.class")
    public static Boolean f29527f;

    /* renamed from: j */
    @Nullable
    @GuardedBy("DynamiteModule.class")
    public static zzq f29531j;

    /* renamed from: k */
    @Nullable
    @GuardedBy("DynamiteModule.class")
    public static zzr f29532k;

    /* renamed from: a */
    public final Context f29533a;

    /* renamed from: g */
    public static final ThreadLocal f29528g = new ThreadLocal();

    /* renamed from: h */
    public static final ThreadLocal f29529h = new ljp();

    /* renamed from: i */
    public static final VersionPolicy.IVersions f29530i = new C5081a();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new C5082b();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new C5083c();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new C5084d();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new C5085e();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new C5086f();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new C5087g();

    @NonNull
    public static final VersionPolicy zza = new C5088h();

    @DynamiteApi
    /* loaded from: classes5.dex */
    public static class DynamiteLoaderClassLoader {

        @Nullable
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes5.dex */
    public static class LoadingException extends Exception {
        public /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, Throwable th, zzp zzpVar) {
            super(str, th);
        }
    }

    /* loaded from: classes5.dex */
    public interface VersionPolicy {

        @KeepForSdk
        /* loaded from: classes5.dex */
        public interface IVersions {
            int zza(@NonNull Context context, @NonNull String str);

            int zzb(@NonNull Context context, @NonNull String str, boolean z) throws LoadingException;
        }

        @KeepForSdk
        /* loaded from: classes5.dex */
        public static class SelectionResult {

            @KeepForSdk
            public int localVersion = 0;

            @KeepForSdk
            public int remoteVersion = 0;

            @KeepForSdk
            public int selection = 0;
        }

        @NonNull
        @KeepForSdk
        SelectionResult selectModule(@NonNull Context context, @NonNull String str, @NonNull IVersions iVersions) throws LoadingException;
    }

    public DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.f29533a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
    
        r8.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00dc  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m22242a(android.content.Context r8, java.lang.String r9, boolean r10, boolean r11) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m22242a(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    /* renamed from: b */
    public static DynamiteModule m22243b(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    @GuardedBy("DynamiteModule.class")
    /* renamed from: c */
    public static void m22244c(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        zzp zzpVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzrVar = queryLocalInterface instanceof zzr ? (zzr) queryLocalInterface : new zzr(iBinder);
            }
            f29532k = zzrVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        }
    }

    /* renamed from: d */
    public static boolean m22245d(Cursor cursor) {
        zpp zppVar = (zpp) f29528g.get();
        if (zppVar == null || zppVar.f92074a != null) {
            return false;
        }
        zppVar.f92074a = cursor;
        return true;
    }

    @GuardedBy("DynamiteModule.class")
    /* renamed from: e */
    public static boolean m22246e(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f29527f)) {
            return true;
        }
        boolean z = false;
        if (f29527f == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z = true;
            }
            Boolean valueOf = Boolean.valueOf(z);
            f29527f = valueOf;
            z = valueOf.booleanValue();
            if (z && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f29525d = true;
            }
        }
        if (!z) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z;
    }

    @Nullable
    /* renamed from: f */
    public static zzq m22247f(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            zzq zzqVar2 = f29531j;
            if (zzqVar2 != null) {
                return zzqVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzqVar = queryLocalInterface instanceof zzq ? (zzq) queryLocalInterface : new zzq(iBinder);
                }
                if (zzqVar != null) {
                    f29531j = zzqVar;
                    return zzqVar;
                }
            } catch (Exception e) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e.getMessage());
            }
            return null;
        }
    }

    @KeepForSdk
    public static int getLocalVersion(@NonNull Context context, @NonNull String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + CloudStorageConstants.SINGLE_QUOTES);
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e.getMessage())));
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(@NonNull Context context, @NonNull String str) {
        return zza(context, str, false);
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static DynamiteModule load(@NonNull Context context, @NonNull VersionPolicy versionPolicy, @NonNull String str) throws LoadingException {
        DynamiteModule m22243b;
        Boolean bool;
        IObjectWrapper zzh;
        DynamiteModule dynamiteModule;
        zzr zzrVar;
        Boolean valueOf;
        IObjectWrapper zze;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context", null);
        }
        ThreadLocal threadLocal = f29528g;
        zpp zppVar = (zpp) threadLocal.get();
        zpp zppVar2 = new zpp(null);
        threadLocal.set(zppVar2);
        ThreadLocal threadLocal2 = f29529h;
        long longValue = ((Long) threadLocal2.get()).longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            VersionPolicy.SelectionResult selectModule = versionPolicy.selectModule(context, str, f29530i);
            Log.i("DynamiteModule", "Considering local module " + str + ":" + selectModule.localVersion + " and remote module " + str + ":" + selectModule.remoteVersion);
            int i = selectModule.selection;
            if (i != 0) {
                if (i == -1) {
                    if (selectModule.localVersion != 0) {
                        i = -1;
                    }
                }
                if (i != 1 || selectModule.remoteVersion != 0) {
                    if (i == -1) {
                        m22243b = m22243b(applicationContext, str);
                    } else {
                        if (i != 1) {
                            throw new LoadingException("VersionPolicy returned invalid code:" + i, null);
                        }
                        try {
                            int i2 = selectModule.remoteVersion;
                            try {
                                synchronized (DynamiteModule.class) {
                                    if (!m22246e(context)) {
                                        throw new LoadingException("Remote loading disabled", null);
                                    }
                                    bool = f29523b;
                                }
                                if (bool == null) {
                                    throw new LoadingException("Failed to determine which loading route to use.", null);
                                }
                                if (bool.booleanValue()) {
                                    Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i2);
                                    synchronized (DynamiteModule.class) {
                                        zzrVar = f29532k;
                                    }
                                    if (zzrVar == null) {
                                        throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                    }
                                    zpp zppVar3 = (zpp) threadLocal.get();
                                    if (zppVar3 == null || zppVar3.f92074a == null) {
                                        throw new LoadingException("No result cursor", null);
                                    }
                                    Context applicationContext2 = context.getApplicationContext();
                                    Cursor cursor = zppVar3.f92074a;
                                    ObjectWrapper.wrap(null);
                                    synchronized (DynamiteModule.class) {
                                        valueOf = Boolean.valueOf(f29526e >= 2);
                                    }
                                    if (valueOf.booleanValue()) {
                                        Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                        zze = zzrVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i2, ObjectWrapper.wrap(cursor));
                                    } else {
                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                        zze = zzrVar.zze(ObjectWrapper.wrap(applicationContext2), str, i2, ObjectWrapper.wrap(cursor));
                                    }
                                    Context context2 = (Context) ObjectWrapper.unwrap(zze);
                                    if (context2 == null) {
                                        throw new LoadingException("Failed to get module context", null);
                                    }
                                    dynamiteModule = new DynamiteModule(context2);
                                } else {
                                    Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i2);
                                    zzq m22247f = m22247f(context);
                                    if (m22247f == null) {
                                        throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                    }
                                    int zze2 = m22247f.zze();
                                    if (zze2 >= 3) {
                                        zpp zppVar4 = (zpp) threadLocal.get();
                                        if (zppVar4 == null) {
                                            throw new LoadingException("No cached result cursor holder", null);
                                        }
                                        zzh = m22247f.zzi(ObjectWrapper.wrap(context), str, i2, ObjectWrapper.wrap(zppVar4.f92074a));
                                    } else if (zze2 == 2) {
                                        Log.w("DynamiteModule", "IDynamite loader version = 2");
                                        zzh = m22247f.zzj(ObjectWrapper.wrap(context), str, i2);
                                    } else {
                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                        zzh = m22247f.zzh(ObjectWrapper.wrap(context), str, i2);
                                    }
                                    Object unwrap = ObjectWrapper.unwrap(zzh);
                                    if (unwrap == null) {
                                        throw new LoadingException("Failed to load remote module.", null);
                                    }
                                    dynamiteModule = new DynamiteModule((Context) unwrap);
                                }
                                m22243b = dynamiteModule;
                            } catch (RemoteException e) {
                                throw new LoadingException("Failed to load remote module.", e, null);
                            } catch (LoadingException e2) {
                                throw e2;
                            } catch (Throwable th) {
                                CrashUtils.addDynamiteErrorToDropBox(context, th);
                                throw new LoadingException("Failed to load remote module.", th, null);
                            }
                        } catch (LoadingException e3) {
                            Log.w("DynamiteModule", "Failed to load remote module: " + e3.getMessage());
                            int i3 = selectModule.localVersion;
                            if (i3 == 0 || versionPolicy.selectModule(context, str, new C5089i(i3, 0)).selection != -1) {
                                throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                            }
                            m22243b = m22243b(applicationContext, str);
                        }
                    }
                    if (longValue == 0) {
                        f29529h.remove();
                    } else {
                        f29529h.set(Long.valueOf(longValue));
                    }
                    Cursor cursor2 = zppVar2.f92074a;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    f29528g.set(zppVar);
                    return m22243b;
                }
            }
            throw new LoadingException("No acceptable module " + str + " found. Local version is " + selectModule.localVersion + " and remote version is " + selectModule.remoteVersion + ".", null);
        } catch (Throwable th2) {
            if (longValue == 0) {
                f29529h.remove();
            } else {
                f29529h.set(Long.valueOf(longValue));
            }
            Cursor cursor3 = zppVar2.f92074a;
            if (cursor3 != null) {
                cursor3.close();
            }
            f29528g.set(zppVar);
            throw th2;
        }
    }

    public static int zza(@NonNull Context context, @NonNull String str, boolean z) {
        Field declaredField;
        Throwable th;
        RemoteException e;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f29523b;
                int i = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e2.toString());
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                m22244c(classLoader);
                            } catch (LoadingException unused) {
                            }
                            bool = Boolean.TRUE;
                        } else {
                            if (!m22246e(context)) {
                                return 0;
                            }
                            if (!f29525d) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int m22242a = m22242a(context, str, z, true);
                                        String str2 = f29524c;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader zza2 = zzb.zza();
                                            if (zza2 == null) {
                                                String str3 = f29524c;
                                                Preconditions.checkNotNull(str3);
                                                zza2 = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                            }
                                            m22244c(zza2);
                                            declaredField.set(null, zza2);
                                            f29523b = bool2;
                                            return m22242a;
                                        }
                                        return m22242a;
                                    } catch (LoadingException unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        f29523b = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return m22242a(context, str, z, false);
                    } catch (LoadingException e3) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e3.getMessage());
                        return 0;
                    }
                }
                zzq m22247f = m22247f(context);
                if (m22247f != null) {
                    try {
                        try {
                            int zze = m22247f.zze();
                            if (zze >= 3) {
                                zpp zppVar = (zpp) f29528g.get();
                                if (zppVar == null || (cursor = zppVar.f92074a) == null) {
                                    Cursor cursor2 = (Cursor) ObjectWrapper.unwrap(m22247f.zzk(ObjectWrapper.wrap(context), str, z, ((Long) f29529h.get()).longValue()));
                                    if (cursor2 != null) {
                                        try {
                                            if (cursor2.moveToFirst()) {
                                                int i2 = cursor2.getInt(0);
                                                r2 = (i2 <= 0 || !m22245d(cursor2)) ? cursor2 : null;
                                                if (r2 != null) {
                                                    r2.close();
                                                }
                                                i = i2;
                                            }
                                        } catch (RemoteException e4) {
                                            e = e4;
                                            r2 = cursor2;
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e.getMessage());
                                            if (r2 != null) {
                                                r2.close();
                                            }
                                            return i;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            r2 = cursor2;
                                            if (r2 != null) {
                                                r2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                } else {
                                    i = cursor.getInt(0);
                                }
                            } else if (zze == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i = m22247f.zzg(ObjectWrapper.wrap(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i = m22247f.zzf(ObjectWrapper.wrap(context), str, z);
                            }
                        } catch (RemoteException e5) {
                            e = e5;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                return i;
            }
        } catch (Throwable th4) {
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public Context getModuleContext() {
        return this.f29533a;
    }

    @NonNull
    @KeepForSdk
    public IBinder instantiate(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.f29533a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e, null);
        }
    }
}
