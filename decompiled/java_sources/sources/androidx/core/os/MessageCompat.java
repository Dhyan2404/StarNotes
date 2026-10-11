package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class MessageCompat {

    /* renamed from: a */
    public static boolean f5543a = true;

    /* renamed from: b */
    public static boolean f5544b = true;

    @RequiresApi(22)
    /* renamed from: androidx.core.os.MessageCompat$a */
    /* loaded from: classes3.dex */
    public static class C0709a {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3125a(Message message) {
            return message.isAsynchronous();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3126b(Message message, boolean z) {
            message.setAsynchronous(z);
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean isAsynchronous(@NonNull Message message) {
        return C0709a.m3125a(message);
    }

    @SuppressLint({"NewApi"})
    public static void setAsynchronous(@NonNull Message message, boolean z) {
        C0709a.m3126b(message, z);
    }
}
