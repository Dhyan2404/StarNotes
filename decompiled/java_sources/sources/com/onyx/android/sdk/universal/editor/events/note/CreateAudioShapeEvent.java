package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/CreateAudioShapeEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "component1", "", "component2", "audioInfoBean", "addToCmdStack", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "getAudioInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getAddToCmdStack", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class CreateAudioShapeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final AudioInfoBean audioInfoBean;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean addToCmdStack;

    public CreateAudioShapeEvent(@NotNull AudioInfoBean audioInfoBean, boolean z) {
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        this.audioInfoBean = audioInfoBean;
        this.addToCmdStack = z;
    }

    public static /* synthetic */ CreateAudioShapeEvent copy$default(CreateAudioShapeEvent createAudioShapeEvent, AudioInfoBean audioInfoBean, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            audioInfoBean = createAudioShapeEvent.audioInfoBean;
        }
        if ((i & 2) != 0) {
            z = createAudioShapeEvent.addToCmdStack;
        }
        return createAudioShapeEvent.copy(audioInfoBean, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final AudioInfoBean getAudioInfoBean() {
        return this.audioInfoBean;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    @NotNull
    public final CreateAudioShapeEvent copy(@NotNull AudioInfoBean audioInfoBean, boolean addToCmdStack) {
        Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
        return new CreateAudioShapeEvent(audioInfoBean, addToCmdStack);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateAudioShapeEvent)) {
            return false;
        }
        CreateAudioShapeEvent createAudioShapeEvent = (CreateAudioShapeEvent) other;
        return Intrinsics.areEqual(this.audioInfoBean, createAudioShapeEvent.audioInfoBean) && this.addToCmdStack == createAudioShapeEvent.addToCmdStack;
    }

    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    @NotNull
    public final AudioInfoBean getAudioInfoBean() {
        return this.audioInfoBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.audioInfoBean.hashCode() * 31;
        boolean z = this.addToCmdStack;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "CreateAudioShapeEvent(audioInfoBean=" + this.audioInfoBean + ", addToCmdStack=" + this.addToCmdStack + ')';
    }

    public /* synthetic */ CreateAudioShapeEvent(AudioInfoBean audioInfoBean, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(audioInfoBean, (i & 2) != 0 ? true : z);
    }
}
