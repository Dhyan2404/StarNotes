package com.onyx.android.sdk.reader.api;

import android.graphics.RectF;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\nJ\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;", "", "data", "", "mediaType", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia$MediaType;", "name", "", UniversalShapeTypeConst.RECTANGLE, "Landroid/graphics/RectF;", "MediaType", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderRichMedia {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderRichMedia$MediaType;", "", "(Ljava/lang/String;I)V", "Audio", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class MediaType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ MediaType[] $VALUES;
        public static final MediaType Audio = new MediaType("Audio", 0);

        private static final /* synthetic */ MediaType[] $values() {
            return new MediaType[]{Audio};
        }

        static {
            MediaType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private MediaType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<MediaType> getEntries() {
            return $ENTRIES;
        }

        public static MediaType valueOf(String str) {
            return (MediaType) Enum.valueOf(MediaType.class, str);
        }

        public static MediaType[] values() {
            return (MediaType[]) $VALUES.clone();
        }
    }

    @Nullable
    byte[] data();

    @NotNull
    MediaType mediaType();

    @NotNull
    String name();

    @NotNull
    RectF rectangle();
}
