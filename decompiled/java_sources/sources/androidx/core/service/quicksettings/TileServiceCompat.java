package androidx.core.service.quicksettings;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.service.quicksettings.TileService;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public class TileServiceCompat {

    /* renamed from: a */
    public static InterfaceC0729c f5631a;

    @RequiresApi(24)
    /* renamed from: androidx.core.service.quicksettings.TileServiceCompat$a */
    /* loaded from: classes3.dex */
    public static class C0727a {
        @DoNotInline
        /* renamed from: a */
        public static void m3191a(TileService tileService, Intent intent) {
            tileService.startActivityAndCollapse(intent);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.service.quicksettings.TileServiceCompat$b */
    /* loaded from: classes3.dex */
    public static class C0728b {
        @DoNotInline
        /* renamed from: a */
        public static void m3192a(TileService tileService, PendingIntent pendingIntent) {
            tileService.startActivityAndCollapse(pendingIntent);
        }
    }

    /* renamed from: androidx.core.service.quicksettings.TileServiceCompat$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC0729c {
        /* renamed from: a */
        void m3193a(Intent intent);

        /* renamed from: b */
        void m3194b(PendingIntent pendingIntent);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static void clearTileServiceWrapper() {
        f5631a = null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static void setTileServiceWrapper(@NonNull InterfaceC0729c interfaceC0729c) {
        f5631a = interfaceC0729c;
    }

    public static void startActivityAndCollapse(@NonNull TileService tileService, @NonNull PendingIntentActivityWrapper pendingIntentActivityWrapper) {
        if (Build.VERSION.SDK_INT >= 34) {
            InterfaceC0729c interfaceC0729c = f5631a;
            if (interfaceC0729c != null) {
                interfaceC0729c.m3194b(pendingIntentActivityWrapper.getPendingIntent());
                return;
            } else {
                C0728b.m3192a(tileService, pendingIntentActivityWrapper.getPendingIntent());
                return;
            }
        }
        InterfaceC0729c interfaceC0729c2 = f5631a;
        if (interfaceC0729c2 != null) {
            interfaceC0729c2.m3193a(pendingIntentActivityWrapper.getIntent());
        } else {
            C0727a.m3191a(tileService, pendingIntentActivityWrapper.getIntent());
        }
    }
}
