package com.onyx.android.sdk.media.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/media/bean/AudioStatus;", "", "(Ljava/lang/String;I)V", "isPlaying", "", "STATUS_IDLE", "STATUS_PLAYING", "STATUS_PAUSE", "STATUS_STOP", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AudioStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AudioStatus[] $VALUES;
    public static final AudioStatus STATUS_IDLE = new AudioStatus("STATUS_IDLE", 0);
    public static final AudioStatus STATUS_PLAYING = new AudioStatus("STATUS_PLAYING", 1);
    public static final AudioStatus STATUS_PAUSE = new AudioStatus("STATUS_PAUSE", 2);
    public static final AudioStatus STATUS_STOP = new AudioStatus("STATUS_STOP", 3);

    private static final /* synthetic */ AudioStatus[] $values() {
        return new AudioStatus[]{STATUS_IDLE, STATUS_PLAYING, STATUS_PAUSE, STATUS_STOP};
    }

    static {
        AudioStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private AudioStatus(String str, int i) {
    }

    @NotNull
    public static EnumEntries<AudioStatus> getEntries() {
        return $ENTRIES;
    }

    public static AudioStatus valueOf(String str) {
        return (AudioStatus) Enum.valueOf(AudioStatus.class, str);
    }

    public static AudioStatus[] values() {
        return (AudioStatus[]) $VALUES.clone();
    }

    public final boolean isPlaying() {
        return this == STATUS_PLAYING;
    }
}
