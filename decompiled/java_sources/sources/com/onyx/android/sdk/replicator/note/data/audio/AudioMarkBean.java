package com.onyx.android.sdk.replicator.note.data.audio;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/audio/AudioMarkBean;", "", "mark", "", "time", "", "(Ljava/lang/String;I)V", "getMark", "()Ljava/lang/String;", "setMark", "(Ljava/lang/String;)V", "getTime", "()I", "setTime", "(I)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class AudioMarkBean {

    @Nullable
    private String mark;
    private int time;

    /* JADX WARN: Multi-variable type inference failed */
    public AudioMarkBean() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ AudioMarkBean copy$default(AudioMarkBean audioMarkBean, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = audioMarkBean.mark;
        }
        if ((i2 & 2) != 0) {
            i = audioMarkBean.time;
        }
        return audioMarkBean.copy(str, i);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getMark() {
        return this.mark;
    }

    /* renamed from: component2, reason: from getter */
    public final int getTime() {
        return this.time;
    }

    @NotNull
    public final AudioMarkBean copy(@Nullable String mark, int time) {
        return new AudioMarkBean(mark, time);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioMarkBean)) {
            return false;
        }
        AudioMarkBean audioMarkBean = (AudioMarkBean) other;
        return Intrinsics.areEqual(this.mark, audioMarkBean.mark) && this.time == audioMarkBean.time;
    }

    @Nullable
    public final String getMark() {
        return this.mark;
    }

    public final int getTime() {
        return this.time;
    }

    public int hashCode() {
        String str = this.mark;
        return ((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.time);
    }

    public final void setMark(@Nullable String str) {
        this.mark = str;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    @NotNull
    public String toString() {
        return "AudioMarkBean(mark=" + this.mark + ", time=" + this.time + ')';
    }

    public AudioMarkBean(@Nullable String str, int i) {
        this.mark = str;
        this.time = i;
    }

    public /* synthetic */ AudioMarkBean(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? 0 : i);
    }
}
