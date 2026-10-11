package com.onyx.android.sdk.replicator.note.data.audio;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\b\u0010\u0015\u001a\u00020\u0003H\u0007J\b\u0010\u0016\u001a\u00020\u0003H\u0007J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007J\u0016\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u001aH\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "", "title", "", "audioPath", "duration", "", "creationTime", "(Ljava/lang/String;Ljava/lang/String;JJ)V", "getAudioPath", "()Ljava/lang/String;", "setAudioPath", "(Ljava/lang/String;)V", "getCreationTime", "()J", "setCreationTime", "(J)V", "getDuration", "setDuration", "getTitle", "setTitle", "getCreationTimeFormatText", "getDurationFormatText", "isFileNameEqual", "", "audioPathList", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAudioInfoBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioInfoBean.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1747#2,3:48\n*S KotlinDebug\n*F\n+ 1 AudioInfoBean.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean\n*L\n45#1:48,3\n*E\n"})
/* loaded from: classes8.dex */
public final class AudioInfoBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String audioPath;
    private long creationTime;
    private long duration;

    @Nullable
    private String title;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;", "", "()V", "ensureObject", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "audioInfoBean", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AudioInfoBean ensureObject(@Nullable AudioInfoBean audioInfoBean) {
            return audioInfoBean == null ? new AudioInfoBean(null, null, 0L, 0L, 15, null) : audioInfoBean;
        }

        private Companion() {
        }
    }

    public AudioInfoBean() {
        this(null, null, 0L, 0L, 15, null);
    }

    @Nullable
    public final String getAudioPath() {
        return this.audioPath;
    }

    public final long getCreationTime() {
        return this.creationTime;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getCreationTimeFormatText() {
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        return dateTimeUtil.formatDate(new Date(this.creationTime), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HHMM_2());
    }

    public final long getDuration() {
        return this.duration;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getDurationFormatText() {
        return DateTimeUtil.formatDurationSecondRoundUp$default(DateTimeUtil.INSTANCE, this.duration, false, null, null, 14, null);
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFileNameEqual(@Nullable String audioPath) {
        return Intrinsics.areEqual(FilenameUtils.getName(this.audioPath), FilenameUtils.getName(audioPath));
    }

    public final void setAudioPath(@Nullable String str) {
        this.audioPath = str;
    }

    public final void setCreationTime(long j) {
        this.creationTime = j;
    }

    public final void setDuration(long j) {
        this.duration = j;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public AudioInfoBean(@Nullable String str, @Nullable String str2, long j, long j2) {
        this.title = str;
        this.audioPath = str2;
        this.duration = j;
        this.creationTime = j2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFileNameEqual(@NotNull List<String> audioPathList) {
        Intrinsics.checkNotNullParameter(audioPathList, "audioPathList");
        List<String> list = audioPathList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (isFileNameEqual((String) it2.next())) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ AudioInfoBean(String str, String str2, long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? 0L : j2);
    }
}
