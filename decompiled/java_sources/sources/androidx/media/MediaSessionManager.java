package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.C1213b;

/* loaded from: classes3.dex */
public final class MediaSessionManager {

    /* renamed from: b */
    public static final String f8257b = "MediaSessionManager";

    /* renamed from: c */
    public static final boolean f8258c = Log.isLoggable("MediaSessionManager", 3);

    /* renamed from: d */
    public static final Object f8259d = new Object();

    /* renamed from: e */
    public static volatile MediaSessionManager f8260e;

    /* renamed from: a */
    public InterfaceC1203a f8261a;

    /* renamed from: androidx.media.MediaSessionManager$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC1203a {
        /* renamed from: a */
        boolean mo5068a(InterfaceC1204b userInfo);

        Context getContext();
    }

    /* renamed from: androidx.media.MediaSessionManager$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1204b {
        String getPackageName();

        int getPid();

        int getUid();
    }

    public MediaSessionManager(Context context) {
        this.f8261a = new C1213b(context);
    }

    @NonNull
    public static MediaSessionManager getSessionManager(@NonNull Context context) {
        MediaSessionManager mediaSessionManager;
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        synchronized (f8259d) {
            if (f8260e == null) {
                f8260e = new MediaSessionManager(context.getApplicationContext());
            }
            mediaSessionManager = f8260e;
        }
        return mediaSessionManager;
    }

    /* renamed from: a */
    public Context m5067a() {
        return this.f8261a.getContext();
    }

    public boolean isTrustedForMediaControl(@NonNull RemoteUserInfo userInfo) {
        if (userInfo != null) {
            return this.f8261a.mo5068a(userInfo.f8262a);
        }
        throw new IllegalArgumentException("userInfo should not be null");
    }

    /* loaded from: classes3.dex */
    public static final class RemoteUserInfo {
        public static final String LEGACY_CONTROLLER = "android.media.session.MediaController";

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final int UNKNOWN_PID = -1;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final int UNKNOWN_UID = -1;

        /* renamed from: a */
        public InterfaceC1204b f8262a;

        public RemoteUserInfo(@NonNull String packageName, int pid, int uid) {
            if (packageName != null) {
                if (!TextUtils.isEmpty(packageName)) {
                    this.f8262a = new C1213b.a(packageName, pid, uid);
                    return;
                }
                throw new IllegalArgumentException("packageName should be nonempty");
            }
            throw new NullPointerException("package shouldn't be null");
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RemoteUserInfo) {
                return this.f8262a.equals(((RemoteUserInfo) obj).f8262a);
            }
            return false;
        }

        @NonNull
        public String getPackageName() {
            return this.f8262a.getPackageName();
        }

        public int getPid() {
            return this.f8262a.getPid();
        }

        public int getUid() {
            return this.f8262a.getUid();
        }

        public int hashCode() {
            return this.f8262a.hashCode();
        }

        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String m5084a = C1213b.a.m5084a(remoteUserInfo);
            if (m5084a != null) {
                if (!TextUtils.isEmpty(m5084a)) {
                    this.f8262a = new C1213b.a(remoteUserInfo);
                    return;
                }
                throw new IllegalArgumentException("packageName should be nonempty");
            }
            throw new NullPointerException("package shouldn't be null");
        }
    }
}
