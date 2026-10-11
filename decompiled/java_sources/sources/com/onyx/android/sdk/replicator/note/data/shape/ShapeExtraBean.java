package com.onyx.android.sdk.replicator.note.data.shape;

import com.onyx.android.sdk.replicator.note.data.audio.AudioDataSet;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.audio.AudioMarkBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010!\u001a\u00020\u0000H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\tR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;", "", "()V", "audioDataSetList", "", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;", "getAudioDataSetList", "()Ljava/util/List;", "setAudioDataSetList", "(Ljava/util/List;)V", "audioInfoList", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "getAudioInfoList", "setAudioInfoList", "audioMarkList", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioMarkBean;", "getAudioMarkList", "setAudioMarkList", "featureCollection", "", "getFeatureCollection", "()Ljava/lang/String;", "setFeatureCollection", "(Ljava/lang/String;)V", "textContent", "getTextContent", "setTextContent", "textSize", "", "getTextSize", "()F", "setTextSize", "(F)V", "clone", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeExtraBean implements Cloneable {

    @Nullable
    private List<AudioDataSet> audioDataSetList;

    @Nullable
    private List<AudioInfoBean> audioInfoList;

    @Nullable
    private List<AudioMarkBean> audioMarkList;

    @Nullable
    private String featureCollection;

    @NotNull
    private String textContent = "";
    private float textSize;

    @Nullable
    public final List<AudioDataSet> getAudioDataSetList() {
        return this.audioDataSetList;
    }

    @Nullable
    public final List<AudioInfoBean> getAudioInfoList() {
        return this.audioInfoList;
    }

    @Nullable
    public final List<AudioMarkBean> getAudioMarkList() {
        return this.audioMarkList;
    }

    @Nullable
    public final String getFeatureCollection() {
        return this.featureCollection;
    }

    @NotNull
    public final String getTextContent() {
        return this.textContent;
    }

    public final float getTextSize() {
        return this.textSize;
    }

    public final void setAudioDataSetList(@Nullable List<AudioDataSet> list) {
        this.audioDataSetList = list;
    }

    public final void setAudioInfoList(@Nullable List<AudioInfoBean> list) {
        this.audioInfoList = list;
    }

    public final void setAudioMarkList(@Nullable List<AudioMarkBean> list) {
        this.audioMarkList = list;
    }

    public final void setFeatureCollection(@Nullable String str) {
        this.featureCollection = str;
    }

    public final void setTextContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.textContent = str;
    }

    public final void setTextSize(float f) {
        this.textSize = f;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeExtraBean m72370clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean");
        return (ShapeExtraBean) clone;
    }
}
