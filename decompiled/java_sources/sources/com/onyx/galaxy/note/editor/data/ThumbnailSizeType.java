package com.onyx.galaxy.note.editor.data;

import androidx.annotation.DrawableRes;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "", "imageRes", "", "(Ljava/lang/String;II)V", "getImageRes", "()I", "switchNext", "SMALL", "LARGE", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ThumbnailSizeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ThumbnailSizeType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private final int imageRes;
    public static final ThumbnailSizeType SMALL = new ThumbnailSizeType("SMALL", 0, C10651R.drawable.ic_thumbnail_size_large);
    public static final ThumbnailSizeType LARGE = new ThumbnailSizeType("LARGE", 1, C10651R.drawable.ic_thumbnail_size_small);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;", "", "()V", "getTypeByName", "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "name", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ThumbnailSizeType getTypeByName(@Nullable String name) {
            ThumbnailSizeType thumbnailSizeType = ThumbnailSizeType.SMALL;
            if (Intrinsics.areEqual(name, thumbnailSizeType.name())) {
                return thumbnailSizeType;
            }
            ThumbnailSizeType thumbnailSizeType2 = ThumbnailSizeType.LARGE;
            return Intrinsics.areEqual(name, thumbnailSizeType2.name()) ? thumbnailSizeType2 : thumbnailSizeType;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ThumbnailSizeType.values().length];
            try {
                iArr[ThumbnailSizeType.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ThumbnailSizeType.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ ThumbnailSizeType[] $values() {
        return new ThumbnailSizeType[]{SMALL, LARGE};
    }

    static {
        ThumbnailSizeType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private ThumbnailSizeType(@DrawableRes String str, int i, int i2) {
        this.imageRes = i2;
    }

    @NotNull
    public static EnumEntries<ThumbnailSizeType> getEntries() {
        return $ENTRIES;
    }

    public static ThumbnailSizeType valueOf(String str) {
        return (ThumbnailSizeType) Enum.valueOf(ThumbnailSizeType.class, str);
    }

    public static ThumbnailSizeType[] values() {
        return (ThumbnailSizeType[]) $VALUES.clone();
    }

    public final int getImageRes() {
        return this.imageRes;
    }

    @NotNull
    public final ThumbnailSizeType switchNext() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return LARGE;
        }
        if (i == 2) {
            return SMALL;
        }
        throw new NoWhenBranchMatchedException();
    }
}
