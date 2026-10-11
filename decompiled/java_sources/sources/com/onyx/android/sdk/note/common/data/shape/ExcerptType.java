package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "", "(Ljava/lang/String;I)V", HWRValues.DIAGRAM_KIND_RECTANGLE, "TEXT", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExcerptType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ExcerptType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final ExcerptType RECTANGLE = new ExcerptType(HWRValues.DIAGRAM_KIND_RECTANGLE, 0);
    public static final ExcerptType TEXT = new ExcerptType("TEXT", 1);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType$Companion;", "", "()V", "fromShapeType", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "shapeType", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExcerptType fromShapeType(int shapeType) {
            if (shapeType != 41 && shapeType == 44) {
                return ExcerptType.TEXT;
            }
            return ExcerptType.RECTANGLE;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ ExcerptType[] $values() {
        return new ExcerptType[]{RECTANGLE, TEXT};
    }

    static {
        ExcerptType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private ExcerptType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ExcerptType> getEntries() {
        return $ENTRIES;
    }

    public static ExcerptType valueOf(String str) {
        return (ExcerptType) Enum.valueOf(ExcerptType.class, str);
    }

    public static ExcerptType[] values() {
        return (ExcerptType[]) $VALUES.clone();
    }
}
