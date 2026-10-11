package androidx.media;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.media.MediaSessionManager;

@RequiresApi(21)
/* renamed from: androidx.media.a */
/* loaded from: classes3.dex */
public class C1209a extends C1214c {
    public C1209a(Context context) {
        super(context);
        this.f8284a = context;
    }

    @Override // androidx.media.C1214c, androidx.media.MediaSessionManager.InterfaceC1203a
    /* renamed from: a */
    public boolean mo5068a(@NonNull MediaSessionManager.InterfaceC1204b userInfo) {
        return m5070d(userInfo) || super.mo5068a(userInfo);
    }

    /* renamed from: d */
    public final boolean m5070d(@NonNull MediaSessionManager.InterfaceC1204b userInfo) {
        return getContext().checkPermission(C1214c.f8282f, userInfo.getPid(), userInfo.getUid()) == 0;
    }
}
