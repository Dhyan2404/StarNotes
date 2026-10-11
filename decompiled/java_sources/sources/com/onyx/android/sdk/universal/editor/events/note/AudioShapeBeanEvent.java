package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;", "", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "toAudioInfoBeanList", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "createAudioDataSet", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;", "component1", "audioShapeBeanList", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getAudioShapeBeanList", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class AudioShapeBeanEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<ShapeBean> audioShapeBeanList;

    public AudioShapeBeanEvent(@NotNull List<ShapeBean> audioShapeBeanList) {
        Intrinsics.checkNotNullParameter(audioShapeBeanList, "audioShapeBeanList");
        this.audioShapeBeanList = audioShapeBeanList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AudioShapeBeanEvent copy$default(AudioShapeBeanEvent audioShapeBeanEvent, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = audioShapeBeanEvent.audioShapeBeanList;
        }
        return audioShapeBeanEvent.copy(list);
    }

    @NotNull
    public final List<ShapeBean> component1() {
        return this.audioShapeBeanList;
    }

    @NotNull
    public final AudioShapeBeanEvent copy(@NotNull List<ShapeBean> audioShapeBeanList) {
        Intrinsics.checkNotNullParameter(audioShapeBeanList, "audioShapeBeanList");
        return new AudioShapeBeanEvent(audioShapeBeanList);
    }

    @NotNull
    public final AudioDataSet createAudioDataSet() {
        AudioDataSet ensureObject$default = AudioDataSet.Companion.ensureObject$default(AudioDataSet.INSTANCE, null, 1, null);
        ensureObject$default.setAudioInfoList(toAudioInfoBeanList());
        return ensureObject$default;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AudioShapeBeanEvent) && Intrinsics.areEqual(this.audioShapeBeanList, ((AudioShapeBeanEvent) other).audioShapeBeanList);
    }

    @NotNull
    public final List<ShapeBean> getAudioShapeBeanList() {
        return this.audioShapeBeanList;
    }

    public int hashCode() {
        return this.audioShapeBeanList.hashCode();
    }

    @NotNull
    public final List<AudioInfoBean> toAudioInfoBeanList() {
        Sequence asSequence;
        Sequence map;
        Sequence filterNotNull;
        List<AudioInfoBean> mutableList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.audioShapeBeanList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<ShapeBean, AudioInfoBean>() { // from class: com.onyx.android.sdk.universal.editor.events.note.AudioShapeBeanEvent$toAudioInfoBeanList$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final AudioInfoBean invoke(@NotNull ShapeBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getAudioInfoBean();
            }
        });
        filterNotNull = SequencesKt___SequencesKt.filterNotNull(map);
        mutableList = SequencesKt___SequencesKt.toMutableList(filterNotNull);
        return mutableList;
    }

    @NotNull
    public String toString() {
        return "AudioShapeBeanEvent(audioShapeBeanList=" + this.audioShapeBeanList + ')';
    }
}
