package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class ProfileVerifier {

    /* renamed from: a */
    public static final String f9128a = "/data/misc/profiles/ref/";

    /* renamed from: b */
    public static final String f9129b = "/data/misc/profiles/cur/0/";

    /* renamed from: c */
    public static final String f9130c = "primary.prof";

    /* renamed from: d */
    public static final String f9131d = "profileInstalled";

    /* renamed from: g */
    public static final String f9134g = "ProfileVerifier";

    /* renamed from: e */
    public static final ResolvableFuture<CompilationStatus> f9132e = ResolvableFuture.create();

    /* renamed from: f */
    public static final Object f9133f = new Object();

    /* renamed from: h */
    @Nullable
    public static CompilationStatus f9135h = null;

    /* loaded from: classes3.dex */
    public static class CompilationStatus {
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
        public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;

        /* renamed from: RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE */
        public static final int f9136xf2722a21 = 196608;
        public static final int RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST = 65536;
        public static final int RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION = 262144;
        public static final int RESULT_CODE_NO_PROFILE = 0;
        public static final int RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION = 2;

        /* renamed from: d */
        public static final int f9137d = 16;

        /* renamed from: a */
        public final int f9138a;

        /* renamed from: b */
        public final boolean f9139b;

        /* renamed from: c */
        public final boolean f9140c;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes3.dex */
        public @interface ResultCode {
        }

        public CompilationStatus(int i, boolean z, boolean z2) {
            this.f9138a = i;
            this.f9140c = z2;
            this.f9139b = z;
        }

        public int getProfileInstallResultCode() {
            return this.f9138a;
        }

        public boolean hasProfileEnqueuedForCompilation() {
            return this.f9140c;
        }

        public boolean isCompiledWithProfile() {
            return this.f9139b;
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.profileinstaller.ProfileVerifier$a */
    /* loaded from: classes3.dex */
    public static class C1302a {
        @DoNotInline
        /* renamed from: a */
        public static PackageInfo m5448a(PackageManager packageManager, Context context) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: androidx.profileinstaller.ProfileVerifier$b */
    /* loaded from: classes3.dex */
    public static class C1303b {

        /* renamed from: e */
        public static final int f9141e = 1;

        /* renamed from: a */
        public final int f9142a;

        /* renamed from: b */
        public final int f9143b;

        /* renamed from: c */
        public final long f9144c;

        /* renamed from: d */
        public final long f9145d;

        public C1303b(int i, int i2, long j, long j2) {
            this.f9142a = i;
            this.f9143b = i2;
            this.f9144c = j;
            this.f9145d = j2;
        }

        /* renamed from: a */
        public static C1303b m5449a(@NonNull File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                C1303b c1303b = new C1303b(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return c1303b;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        /* renamed from: b */
        public void m5450b(@NonNull File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f9142a);
                dataOutputStream.writeInt(this.f9143b);
                dataOutputStream.writeLong(this.f9144c);
                dataOutputStream.writeLong(this.f9145d);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof C1303b)) {
                return false;
            }
            C1303b c1303b = (C1303b) obj;
            return this.f9143b == c1303b.f9143b && this.f9144c == c1303b.f9144c && this.f9142a == c1303b.f9142a && this.f9145d == c1303b.f9145d;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f9143b), Long.valueOf(this.f9144c), Integer.valueOf(this.f9142a), Long.valueOf(this.f9145d));
        }
    }

    /* renamed from: a */
    public static long m5445a(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? C1302a.m5448a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    /* renamed from: b */
    public static CompilationStatus m5446b(int i, boolean z, boolean z2) {
        CompilationStatus compilationStatus = new CompilationStatus(i, z, z2);
        f9135h = compilationStatus;
        f9132e.set(compilationStatus);
        return f9135h;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:14|(1:78)(1:18)|19|(1:77)(1:23)|24|25|26|(2:63|64)(1:28)|29|(8:36|(1:40)|(1:47)|48|(2:55|56)|52|53|54)|(1:62)|(1:40)|(3:42|45|47)|48|(1:50)|55|56|52|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ce, code lost:
    
        r3 = 196608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009f, code lost:
    
        r3 = 1;
     */
    @androidx.annotation.NonNull
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY})
    @androidx.annotation.WorkerThread
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.profileinstaller.ProfileVerifier.CompilationStatus m5447c(@androidx.annotation.NonNull android.content.Context r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.ProfileVerifier.m5447c(android.content.Context, boolean):androidx.profileinstaller.ProfileVerifier$CompilationStatus");
    }

    @NonNull
    public static ListenableFuture<CompilationStatus> getCompilationStatusAsync() {
        return f9132e;
    }

    @NonNull
    @WorkerThread
    public static CompilationStatus writeProfileVerification(@NonNull Context context) {
        return m5447c(context, false);
    }
}
