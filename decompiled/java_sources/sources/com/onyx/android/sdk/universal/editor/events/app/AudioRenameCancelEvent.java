package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameCancelEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "component1", "audioInfoBean", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "getAudioInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class AudioRenameCancelEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    public AudioRenameCancelEvent(@NotNull AudioInfoBean audioInfoBean) {
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.audioInfoBean = audioInfoBean;
    }

    public static /* synthetic */ AudioRenameCancelEvent copy$default(AudioRenameCancelEvent audioRenameCancelEvent, AudioInfoBean audioInfoBean, int i, Object obj) {
        if ((i & 1) != 0) {
            audioInfoBean = audioRenameCancelEvent.audioInfoBean;
        }
        return audioRenameCancelEvent.copy(audioInfoBean);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final AudioInfoBean getAudioInfoBean() {
        return this.audioInfoBean;
    }

    @NotNull
    public final AudioRenameCancelEvent copy(@NotNull AudioInfoBean audioInfoBean) {
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        return new AudioRenameCancelEvent(audioInfoBean);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AudioRenameCancelEvent) && Intrinsics.areEqual(this.audioInfoBean, ((AudioRenameCancelEvent) other).audioInfoBean);
    }

    @NotNull
    public final AudioInfoBean getAudioInfoBean() {
        return this.audioInfoBean;
    }

    public int hashCode() {
        return this.audioInfoBean.hashCode();
    }

    @NotNull
    public String toString() {
        return "AudioRenameCancelEvent(audioInfoBean=" + this.audioInfoBean + ')';
    }
}
