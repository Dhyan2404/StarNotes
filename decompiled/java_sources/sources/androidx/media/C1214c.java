package androidx.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.ObjectsCompat;
import androidx.media.MediaSessionManager;

/* renamed from: androidx.media.c */
/* loaded from: classes3.dex */
public class C1214c implements MediaSessionManager.InterfaceC1203a {

    /* renamed from: c */
    public static final String f8279c = "MediaSessionManager";

    /* renamed from: d */
    public static final boolean f8280d = MediaSessionManager.f8258c;

    /* renamed from: e */
    public static final String f8281e = "android.permission.STATUS_BAR_SERVICE";

    /* renamed from: f */
    public static final String f8282f = "android.permission.MEDIA_CONTENT_CONTROL";

    /* renamed from: g */
    public static final String f8283g = "enabled_notification_listeners";

    /* renamed from: a */
    public Context f8284a;

    /* renamed from: b */
    public ContentResolver f8285b;

    /* renamed from: androidx.media.c$a */
    /* loaded from: classes3.dex */
    public static class a implements MediaSessionManager.InterfaceC1204b {

        /* renamed from: a */
        public String f8286a;

        /* renamed from: b */
        public int f8287b;

        /* renamed from: c */
        public int f8288c;

        public a(String packageName, int pid, int uid) {
            this.f8286a = packageName;
            this.f8287b = pid;
            this.f8288c = uid;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return (this.f8287b < 0 || aVar.f8287b < 0) ? TextUtils.equals(this.f8286a, aVar.f8286a) && this.f8288c == aVar.f8288c : TextUtils.equals(this.f8286a, aVar.f8286a) && this.f8287b == aVar.f8287b && this.f8288c == aVar.f8288c;
        }

        @Override // androidx.media.MediaSessionManager.InterfaceC1204b
        public String getPackageName() {
            return this.f8286a;
        }

        @Override // androidx.media.MediaSessionManager.InterfaceC1204b
        public int getPid() {
            return this.f8287b;
        }

        @Override // androidx.media.MediaSessionManager.InterfaceC1204b
        public int getUid() {
            return this.f8288c;
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f8286a, Integer.valueOf(this.f8288c));
        }
    }

    public C1214c(Context context) {
        this.f8284a = context;
        this.f8285b = context.getContentResolver();
    }

    @Override // androidx.media.MediaSessionManager.InterfaceC1203a
    /* renamed from: a */
    public boolean mo5068a(@NonNull MediaSessionManager.InterfaceC1204b userInfo) {
        try {
            if (this.f8284a.getPackageManager().getApplicationInfo(userInfo.getPackageName(), 0) == null) {
                return false;
            }
            return m5086c(userInfo, f8281e) || m5086c(userInfo, f8282f) || userInfo.getUid() == 1000 || m5085b(userInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            if (f8280d) {
                Log.d("MediaSessionManager", "Package " + userInfo.getPackageName() + " doesn't exist");
            }
            return false;
        }
    }

    /* renamed from: b */
    public boolean m5085b(@NonNull MediaSessionManager.InterfaceC1204b userInfo) {
        String string = Settings.Secure.getString(this.f8285b, "enabled_notification_listeners");
        if (string != null) {
            for (String str : string.split(":")) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                if (unflattenFromString != null && unflattenFromString.getPackageName().equals(userInfo.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m5086c(MediaSessionManager.InterfaceC1204b userInfo, String permission) {
        return userInfo.getPid() < 0 ? this.f8284a.getPackageManager().checkPermission(permission, userInfo.getPackageName()) == 0 : this.f8284a.checkPermission(permission, userInfo.getPid(), userInfo.getUid()) == 0;
    }

    @Override // androidx.media.MediaSessionManager.InterfaceC1203a
    public Context getContext() {
        return this.f8284a;
    }
}
