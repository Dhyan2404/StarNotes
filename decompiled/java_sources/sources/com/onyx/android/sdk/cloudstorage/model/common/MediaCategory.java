package com.onyx.android.sdk.cloudstorage.model.common;

import com.couchbase.lite.internal.core.C4Constants;
import com.onyx.android.sdk.genericshape.GeoConstant;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpStatus;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "", "id", "", "(Ljava/lang/String;II)V", "getId", "()I", "supportLoadThumbnail", "", HttpStatus.Unknown, "Document", GeoConstant.Image, "Audio", "Video", "Download", "Bluetooth", "Push", "APK", C4Constants.LogDomain.ZIP, "Shortcut", "Font", "WifiTransfer", "Torrent", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MediaCategory {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MediaCategory[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private final int id;
    public static final MediaCategory Unknown = new MediaCategory(HttpStatus.Unknown, 0, 99);
    public static final MediaCategory Document = new MediaCategory("Document", 1, 0);
    public static final MediaCategory Image = new MediaCategory(GeoConstant.Image, 2, 1);
    public static final MediaCategory Audio = new MediaCategory("Audio", 3, 2);
    public static final MediaCategory Video = new MediaCategory("Video", 4, 3);
    public static final MediaCategory Download = new MediaCategory("Download", 5, 4);
    public static final MediaCategory Bluetooth = new MediaCategory("Bluetooth", 6, 5);
    public static final MediaCategory Push = new MediaCategory("Push", 7, 6);
    public static final MediaCategory APK = new MediaCategory("APK", 8, 7);
    public static final MediaCategory Zip = new MediaCategory(C4Constants.LogDomain.ZIP, 9, 8);
    public static final MediaCategory Shortcut = new MediaCategory("Shortcut", 10, 9);
    public static final MediaCategory Font = new MediaCategory("Font", 11, 10);
    public static final MediaCategory WifiTransfer = new MediaCategory("WifiTransfer", 12, 11);
    public static final MediaCategory Torrent = new MediaCategory("Torrent", 13, 12);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;", "", "()V", "safeValueOf", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "name", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final MediaCategory safeValueOf(@Nullable String name) {
            for (MediaCategory mediaCategory : MediaCategory.values()) {
                if (StringUtils.startsWithIgnoreCase(mediaCategory.name(), name)) {
                    return mediaCategory;
                }
            }
            return null;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ MediaCategory[] $values() {
        return new MediaCategory[]{Unknown, Document, Image, Audio, Video, Download, Bluetooth, Push, APK, Zip, Shortcut, Font, WifiTransfer, Torrent};
    }

    static {
        MediaCategory[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private MediaCategory(String str, int i, int i2) {
        this.id = i2;
    }

    @NotNull
    public static EnumEntries<MediaCategory> getEntries() {
        return $ENTRIES;
    }

    public static MediaCategory valueOf(String str) {
        return (MediaCategory) Enum.valueOf(MediaCategory.class, str);
    }

    public static MediaCategory[] values() {
        return (MediaCategory[]) $VALUES.clone();
    }

    public final int getId() {
        return this.id;
    }

    public final boolean supportLoadThumbnail() {
        return this == Image || this == Document || this == Push || this == WifiTransfer;
    }
}
