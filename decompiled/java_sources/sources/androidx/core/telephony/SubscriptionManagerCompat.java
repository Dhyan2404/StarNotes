package androidx.core.telephony;

import android.telephony.SubscriptionManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

@RequiresApi(22)
/* loaded from: classes3.dex */
public class SubscriptionManagerCompat {

    /* renamed from: a */
    public static Method f5632a;

    @RequiresApi(29)
    /* renamed from: androidx.core.telephony.SubscriptionManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0730a {
        @DoNotInline
        /* renamed from: a */
        public static int m3195a(int i) {
            return SubscriptionManager.getSlotIndex(i);
        }
    }

    public static int getSlotIndex(int i) {
        if (i == -1) {
            return -1;
        }
        return C0730a.m3195a(i);
    }
}
