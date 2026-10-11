package com.onyx.android.sdk.media.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/media/bean/AudioDataBean;", "", "", "component1", "", "component2", "data", "presentationTimeMs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "[B", "getData", "()[B", "b", "J", "getPresentationTimeMs", "()J", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "([BJ)V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class AudioDataBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final byte[] data;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final long presentationTimeMs;

    public AudioDataBean(@NotNull byte[] data, long j) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.presentationTimeMs = j;
    }

    public static /* synthetic */ AudioDataBean copy$default(AudioDataBean audioDataBean, byte[] bArr, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr = audioDataBean.data;
        }
        if ((i & 2) != 0) {
            j = audioDataBean.presentationTimeMs;
        }
        return audioDataBean.copy(bArr, j);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final byte[] getData() {
        return this.data;
    }

    /* renamed from: component2, reason: from getter */
    public final long getPresentationTimeMs() {
        return this.presentationTimeMs;
    }

    @NotNull
    public final AudioDataBean copy(@NotNull byte[] data, long presentationTimeMs) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new AudioDataBean(data, presentationTimeMs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioDataBean)) {
            return false;
        }
        AudioDataBean audioDataBean = (AudioDataBean) other;
        return Intrinsics.areEqual(this.data, audioDataBean.data) && this.presentationTimeMs == audioDataBean.presentationTimeMs;
    }

    @NotNull
    public final byte[] getData() {
        return this.data;
    }

    public final long getPresentationTimeMs() {
        return this.presentationTimeMs;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.data) * 31) + Long.hashCode(this.presentationTimeMs);
    }

    @NotNull
    public String toString() {
        return "AudioDataBean(data=" + Arrays.toString(this.data) + ", presentationTimeMs=" + this.presentationTimeMs + ')';
    }
}
