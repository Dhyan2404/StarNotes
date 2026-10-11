package Abdullah;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandleInfo;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public class hook extends Application {
    public static final String URL = "https://github.com/L-JINBIN/ApkSignatureKillerEx";

    /* renamed from: Abdullah.hook$a */
    /* loaded from: classes2.dex */
    public class C0000a {
        private boolean override;
    }

    /* renamed from: Abdullah.hook$b */
    /* loaded from: classes2.dex */
    public final class C0001b {
        private transient int accessFlags;
        private transient int classFlags;
        private transient ClassLoader classLoader;
        private transient int classSize;
        private transient int clinitThreadId;
        private transient Class componentType;
        private transient short copiedMethodsOffset;
        private transient Object dexCache;
        private transient int dexClassDefIndex;
        private volatile transient int dexTypeIndex;
        private transient Object extData;
        private transient long iFields;
        private transient Object[] ifTable;
        private transient long methods;
        private transient String name;
        private transient int numReferenceInstanceFields;
        private transient int numReferenceStaticFields;
        private transient int objectSize;
        private transient int objectSizeAllocFastPath;
        private transient int primitiveType;
        private transient int referenceInstanceOffsets;
        private transient long sFields;
        private transient int status;
        private transient Class superClass;
        private transient short virtualMethodsOffset;
        private transient Object vtable;
    }

    /* renamed from: Abdullah.hook$c */
    /* loaded from: classes2.dex */
    public final class C0002c extends C0000a {
        private int accessFlags;
        private long artMethod;
        private C0001b declaringClass;
        private C0001b declaringClassOfOverriddenMethod;
        private Object[] parameters;
    }

    /* renamed from: Abdullah.hook$d */
    /* loaded from: classes2.dex */
    public final class C0003d {
        private final Member member = null;
        private final C0005f handle = null;
    }

    /* renamed from: Abdullah.hook$e */
    /* loaded from: classes2.dex */
    public final class C0004e {
        private C0004e(Object... objArr) {
            throw new IllegalStateException("Failed to new a instance");
        }

        private static Object invoke(Object... objArr) {
            throw new IllegalStateException("Failed to invoke the method");
        }
    }

    /* renamed from: Abdullah.hook$f */
    /* loaded from: classes2.dex */
    public class C0005f {
        private C0005f cachedSpreadInvoker;
        private MethodType nominalType;
        private final MethodType type = null;
        protected final int handleKind = 0;
        protected final long artFieldOrMethod = 0;
    }

    /* renamed from: Abdullah.hook$g */
    /* loaded from: classes2.dex */
    public final class C0006g extends C0005f {
        private final MethodHandleInfo info = null;
    }

    /* renamed from: Abdullah.hook$h */
    /* loaded from: classes2.dex */
    public final class C0007h {

        /* renamed from: s */
        private static int f0s;

        /* renamed from: t */
        private static int f1t;

        /* renamed from: i */
        private int f2i;

        /* renamed from: j */
        private int f3j;

        /* renamed from: a */
        private static void m2a() {
        }

        /* renamed from: b */
        private static void m3b() {
        }
    }

    /* renamed from: Abdullah.hook$i */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class C0008i {
        /* renamed from: c */
        public static /* bridge */ /* synthetic */ MethodHandles.Lookup m6c() {
            return MethodHandles.lookup();
        }
    }

    /* renamed from: Abdullah.hook$j */
    /* loaded from: classes2.dex */
    public final class C0009j {

        /* renamed from: a */
        public static final Unsafe f4a;

        /* renamed from: b */
        public static final long f5b;

        /* renamed from: c */
        public static final long f6c;

        /* renamed from: d */
        public static final long f7d;

        /* renamed from: e */
        public static final long f8e;

        /* renamed from: f */
        public static final HashSet f9f = new HashSet();

        static {
            try {
                Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
                f4a = unsafe;
                f5b = unsafe.objectFieldOffset(C0002c.class.getDeclaredField("artMethod"));
                unsafe.objectFieldOffset(C0002c.class.getDeclaredField("declaringClass"));
                long objectFieldOffset = unsafe.objectFieldOffset(C0005f.class.getDeclaredField("artFieldOrMethod"));
                unsafe.objectFieldOffset(C0006g.class.getDeclaredField(PrivilegedApp.f6532i));
                long objectFieldOffset2 = unsafe.objectFieldOffset(C0001b.class.getDeclaredField("methods"));
                f6c = objectFieldOffset2;
                long objectFieldOffset3 = unsafe.objectFieldOffset(C0001b.class.getDeclaredField("iFields"));
                unsafe.objectFieldOffset(C0001b.class.getDeclaredField("sFields"));
                unsafe.objectFieldOffset(C0003d.class.getDeclaredField("member"));
                Method declaredMethod = C0007h.class.getDeclaredMethod("a", null);
                Method declaredMethod2 = C0007h.class.getDeclaredMethod("b", null);
                declaredMethod.setAccessible(true);
                declaredMethod2.setAccessible(true);
                MethodHandle unreflect = C0008i.m6c().unreflect(declaredMethod);
                MethodHandle unreflect2 = C0008i.m6c().unreflect(declaredMethod2);
                long j = unsafe.getLong(unreflect, objectFieldOffset);
                long j2 = unsafe.getLong(unreflect2, objectFieldOffset);
                long j3 = unsafe.getLong(C0007h.class, objectFieldOffset2);
                long j4 = j2 - j;
                f7d = j4;
                f8e = (j - j3) - j4;
                Field declaredField = C0007h.class.getDeclaredField("i");
                Field declaredField2 = C0007h.class.getDeclaredField("j");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                MethodHandle unreflectGetter = C0008i.m6c().unreflectGetter(declaredField);
                MethodHandle unreflectGetter2 = C0008i.m6c().unreflectGetter(declaredField2);
                unsafe.getLong(unreflectGetter, objectFieldOffset);
                unsafe.getLong(unreflectGetter2, objectFieldOffset);
                unsafe.getLong(C0007h.class, objectFieldOffset3);
            } catch (ReflectiveOperationException e) {
                Log.e("HiddenApiBypass", "Initialize error", e);
                throw new ExceptionInInitializerError(e);
            }
        }

        /* renamed from: a */
        public static Object m7a(Class cls, Object obj, String str, Object... objArr) {
            if (obj != null && !cls.isInstance(obj)) {
                throw new IllegalArgumentException("this object is not an instance of the given class");
            }
            Method declaredMethod = C0004e.class.getDeclaredMethod("invoke", Object[].class);
            declaredMethod.setAccessible(true);
            Unsafe unsafe = f4a;
            long j = unsafe.getLong(cls, f6c);
            if (j == 0) {
                throw new NoSuchMethodException("Cannot find matching method");
            }
            int i = unsafe.getInt(j);
            for (int i2 = 0; i2 < i; i2++) {
                f4a.putLong(declaredMethod, f5b, (i2 * f7d) + j + f8e);
                if (str.equals(declaredMethod.getName())) {
                    Class<?>[] parameterTypes = declaredMethod.getParameterTypes();
                    if (parameterTypes.length == objArr.length) {
                        for (int i3 = 0; i3 < parameterTypes.length; i3++) {
                            if (parameterTypes[i3].isPrimitive()) {
                                Class<?> cls2 = parameterTypes[i3];
                                if (cls2 == Integer.TYPE) {
                                    if (!(objArr[i3] instanceof Integer)) {
                                        break;
                                    }
                                }
                                if (cls2 == Byte.TYPE) {
                                    if (!(objArr[i3] instanceof Byte)) {
                                        break;
                                    }
                                }
                                if (cls2 == Character.TYPE) {
                                    if (!(objArr[i3] instanceof Character)) {
                                        break;
                                    }
                                }
                                if (cls2 == Boolean.TYPE) {
                                    if (!(objArr[i3] instanceof Boolean)) {
                                        break;
                                    }
                                }
                                if (cls2 == Double.TYPE) {
                                    if (!(objArr[i3] instanceof Double)) {
                                        break;
                                    }
                                }
                                if (cls2 == Float.TYPE) {
                                    if (!(objArr[i3] instanceof Float)) {
                                        break;
                                    }
                                }
                                if (cls2 == Long.TYPE) {
                                    if (!(objArr[i3] instanceof Long)) {
                                        break;
                                    }
                                }
                                if (cls2 == Short.TYPE && !(objArr[i3] instanceof Short)) {
                                    break;
                                }
                            } else {
                                Object obj2 = objArr[i3];
                                if (obj2 != null && !parameterTypes[i3].isInstance(obj2)) {
                                    break;
                                }
                            }
                        }
                        return declaredMethod.invoke(obj, objArr);
                    }
                    continue;
                }
            }
            throw new NoSuchMethodException("Cannot find matching method");
        }

        /* renamed from: b */
        public static boolean m8b(String... strArr) {
            try {
                m7a(VMRuntime.class, m7a(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
                return true;
            } catch (Throwable th) {
                Log.w("HiddenApiBypass", "setHiddenApiExemptions", th);
                return false;
            }
        }
    }

    /* renamed from: Abdullah.hook$k */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class C0010k {
    }

    /* renamed from: Abdullah.hook$l */
    /* loaded from: classes2.dex */
    public final class C0011l implements Parcelable.Creator {

        /* renamed from: a */
        public final /* synthetic */ Parcelable.Creator f10a;

        /* renamed from: b */
        public final /* synthetic */ String f11b;

        /* renamed from: c */
        public final /* synthetic */ Signature f12c;

        public C0011l(Parcelable.Creator creator, String str, Signature signature) {
            this.f10a = creator;
            this.f11b = str;
            this.f12c = signature;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            Signature[] apkContentsSigners;
            PackageInfo packageInfo = (PackageInfo) this.f10a.createFromParcel(parcel);
            if (packageInfo.packageName.equals(this.f11b)) {
                Signature[] signatureArr = packageInfo.signatures;
                Signature signature = this.f12c;
                if (signatureArr != null && signatureArr.length > 0) {
                    signatureArr[0] = signature;
                }
                if (Build.VERSION.SDK_INT >= 28 && packageInfo.signingInfo != null && (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) != null && apkContentsSigners.length > 0) {
                    apkContentsSigners[0] = signature;
                }
            }
            return packageInfo;
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return (PackageInfo[]) this.f10a.newArray(i);
        }
    }

    static {
        killPM("com.onyx.galaxy.global.note", "MIIDfjCCAmYCAQEwDQYJKoZIhvcNAQELBQAwgYQxETAPBgNVBAMMCFplbmcgWmh1MRswGQYDVQQL\nDBJPbnl4IEludGVybmF0aW9uYWwxGzAZBgNVBAoMEk9ueXggSW50ZXJuYXRpb25hbDETMBEGA1UE\nBwwKR3VhbmcgWmhvdTETMBEGA1UECAwKR3VhbmcgRG9uZzELMAkGA1UEBhMCQ04wHhcNMjQwNTA5\nMTAzNTQzWhcNNDkwNTAzMTAzNTQzWjCBhDERMA8GA1UEAwwIWmVuZyBaaHUxGzAZBgNVBAsMEk9u\neXggSW50ZXJuYXRpb25hbDEbMBkGA1UECgwST255eCBJbnRlcm5hdGlvbmFsMRMwEQYDVQQHDApH\ndWFuZyBaaG91MRMwEQYDVQQIDApHdWFuZyBEb25nMQswCQYDVQQGEwJDTjCCASIwDQYJKoZIhvcN\nAQEBBQADggEPADCCAQoCggEBAOAAyVgrcbw31vGlDU3mE1Jz3WgXrFo7TNjdIRaZv8cv10GVcWDd\n6NAEGSXK+ZBn/odcgpZlhCFi1lgIiOvJwv7+LFl8NYt2zsIO8kIktZoXq66DhKQooxVByPlpZJlJ\ninb34bMKC8KZtOVYVn9a6uOEfWwcY5XtxdtdwvVbFBo8jq+8tPPh75bsqiqkawNuZ01W17zuTDcD\nDhJr54c+VSkLyeKdMrosFtheYADsU/hcJXWYfmKsp5Vyv0oObl1ySkPF8G/QjFwDIaYKp4RV6pv5\nLmknV/WVIH+ZW0EeHyVBGtYRkf1cd1L6NatbE4/HayT5WRVpwx9R1NlrCLZijY8CAwEAATANBgkq\nhkiG9w0BAQsFAAOCAQEAN4AE1w0KhTvh92ijkrU8iRuK58R3CZX0NOhp67X8W3NYUh9k9RrBl4r2\nCIgtT0/O2/vuFzsIvEu6+ZzcVkS8BOFt3g1IEAa+VbmgyHQ2YzR9CaGWvN5AxCABY0cQTGHTsBZ5\nPkJiNwT0iJDQ+Rq/USe0joerwqVfkFWH2YKj84/M637eMzidEsJN6+hSXHPC0v+4djtGeR5nA/5+\n5834PSE6YoOZLnH3MZqvvY0UEvcIqVjt7ZHh2FSgPnM6GENBzjEeUEJGSPmPsvhMApX8drqDLJtJ\ny4WE9CGThEYT4QjqwAUTTO9YlMjmsPCZwQ7/SqOMIBRJSuLigInEIDFJWg==\n");
        killOpen("com.onyx.galaxy.global.note", "Abdullah", "assets/dexopt/baselioe.profm", "files/baselioe.profm");
    }

    /* renamed from: a */
    public static Field m0a(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e) {
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls.equals(Object.class)) {
                    break;
                }
                try {
                    Field declaredField2 = cls.getDeclaredField(str);
                    declaredField2.setAccessible(true);
                    return declaredField2;
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e;
        }
    }

    /* renamed from: b */
    public static boolean m1b(String str, String str2) {
        if (str2.startsWith("/") && str2.endsWith(".apk")) {
            String[] split = str2.substring(1).split("/", 6);
            int length = split.length;
            if (length == 4 || length == 5) {
                if (split[0].equals("data") && split[1].equals("app") && split[length - 1].equals("base.apk")) {
                    return split[length - 2].startsWith(str);
                }
                if (split[0].equals("mnt") && split[1].equals("asec") && split[length - 1].equals("pkg.apk")) {
                    return split[length - 2].startsWith(str);
                }
            } else if (length == 3) {
                if (split[0].equals("data") && split[1].equals("app")) {
                    return split[2].startsWith(str);
                }
            } else if (length == 6 && split[0].equals("mnt") && split[1].equals("expand") && split[3].equals("app") && split[5].equals("base.apk")) {
                return split[4].endsWith(str);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        if (r5.canWrite() != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void killOpen(java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Abdullah.hook.killOpen(java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    private static void killPM(String str, String str2) {
        try {
            m0a(PackageInfo.class, "CREATOR").set(null, new C0011l(PackageInfo.CREATOR, str, new Signature(Base64.decode(str2, 0))));
            if (Build.VERSION.SDK_INT >= 28) {
                HashSet hashSet = C0009j.f9f;
                hashSet.addAll(Arrays.asList("Landroid/os/Parcel;", "Landroid/content/pm", "Landroid/app"));
                String[] strArr = new String[hashSet.size()];
                hashSet.toArray(strArr);
                C0009j.m8b(strArr);
            }
            try {
                Object obj = m0a(PackageManager.class, "sPackageInfoCache").get(null);
                obj.getClass().getMethod(Constants.CLEAR_ATTRIBUTES, null).invoke(obj, null);
            } catch (Throwable unused) {
            }
            try {
                ((Map) m0a(Parcel.class, "mCreators").get(null)).clear();
            } catch (Throwable unused2) {
            }
            try {
                ((Map) m0a(Parcel.class, "sPairedCreators").get(null)).clear();
            } catch (Throwable unused3) {
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
