package com.onyx.galaxy.note.common.audio;

import android.content.Context;
import android.media.AudioManager;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001b\u0010\u000f\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u0005\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/audio/RingMuteStrategy;", "", "", "shouldMute", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "b", Constants.HASIDCALL_INDEX_SIG, "playInSilentMode", "Landroid/media/AudioManager;", "c", "Lkotlin/Lazy;", "()Landroid/media/AudioManager;", "audioManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RingMuteStrategy {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean playInSilentMode;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy audioManager;

    public RingMuteStrategy(@NotNull Context context, boolean z) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.playInSilentMode = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AudioManager>() { // from class: com.onyx.galaxy.note.common.audio.RingMuteStrategy$audioManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AudioManager invoke() {
                Context context2;
                context2 = RingMuteStrategy.this.context;
                return ContextExtKt.getAudioManager(context2);
            }
        });
        this.audioManager = lazy;
    }

    /* renamed from: a */
    public final AudioManager m44982a() {
        return (AudioManager) this.audioManager.getValue();
    }

    public final boolean shouldMute() {
        if (this.playInSilentMode) {
            return false;
        }
        int ringerMode = m44982a().getRingerMode();
        return ringerMode == 0 || ringerMode == 1;
    }
}
