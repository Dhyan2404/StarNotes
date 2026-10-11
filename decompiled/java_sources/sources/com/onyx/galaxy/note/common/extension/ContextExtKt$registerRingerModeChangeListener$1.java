package com.onyx.galaxy.note.common.extension;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.onyx.galaxy.note.common.extension.ContextExtKt$registerRingerModeChangeListener$1;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, m61528d2 = {"com/onyx/galaxy/note/common/extension/ContextExtKt$registerRingerModeChangeListener$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", v6l.f87196g, "Landroid/content/Intent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ContextExtKt$registerRingerModeChangeListener$1 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ Function0<Unit> f56007a;

    public ContextExtKt$registerRingerModeChangeListener$1(Function0<Unit> function0) {
        this.f56007a = function0;
    }

    /* renamed from: b */
    public static final void m45000b(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "$block");
        block.invoke();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, "android.media.RINGER_MODE_CHANGED")) {
            Handler handler = new Handler(Looper.getMainLooper());
            final Function0<Unit> function0 = this.f56007a;
            handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.rbe
                @Override // java.lang.Runnable
                public final void run() {
                    ContextExtKt$registerRingerModeChangeListener$1.m45000b(Function0.this);
                }
            });
        }
    }
}
