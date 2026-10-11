package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import androidx.annotation.RequiresApi;
import androidx.media.C1214c;
import androidx.media.MediaSessionManager;

@RequiresApi(28)
/* renamed from: androidx.media.b */
/* loaded from: classes3.dex */
public class C1213b extends C1209a {

    /* renamed from: h */
    public android.media.session.MediaSessionManager f8277h;

    public C1213b(Context context) {
        super(context);
        this.f8277h = (android.media.session.MediaSessionManager) context.getSystemService("media_session");
    }

    @Override // androidx.media.C1209a, androidx.media.C1214c, androidx.media.MediaSessionManager.InterfaceC1203a
    /* renamed from: a */
    public boolean mo5068a(MediaSessionManager.InterfaceC1204b userInfo) {
        return super.mo5068a(userInfo);
    }

    @RequiresApi(28)
    /* renamed from: androidx.media.b$a */
    /* loaded from: classes3.dex */
    public static final class a extends C1214c.a {

        /* renamed from: d */
        public final MediaSessionManager.RemoteUserInfo f8278d;

        public a(String packageName, int pid, int uid) {
            super(packageName, pid, uid);
            this.f8278d = new MediaSessionManager.RemoteUserInfo(packageName, pid, uid);
        }

        /* renamed from: a */
        public static String m5084a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            return remoteUserInfo.getPackageName();
        }

        public a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
            this.f8278d = remoteUserInfo;
        }
    }
}
