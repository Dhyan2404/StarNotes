package com.onyx.android.sdk.note.common.shape;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;", "", "(Ljava/lang/String;I)V", "STROKE", "STRIPES_FILL", "BITMAP_FILL", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TapeStrokeStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TapeStrokeStyle[] $VALUES;
    public static final TapeStrokeStyle BITMAP_FILL;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final TapeStrokeStyle STRIPES_FILL;
    public static final TapeStrokeStyle STROKE = new TapeStrokeStyle("STROKE", 0);

    @NotNull
    private static final TapeStrokeStyle defaultTapeStrokeStyle;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle$Companion;", "", "()V", "defaultTapeStrokeStyle", "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;", "getDefaultTapeStrokeStyle", "()Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;", "fromString", "value", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TapeStrokeStyle fromString(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                String upperCase = value.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                return TapeStrokeStyle.valueOf(upperCase);
            } catch (IllegalArgumentException unused) {
                return this.getDefaultTapeStrokeStyle();
            }
        }

        @NotNull
        public final TapeStrokeStyle getDefaultTapeStrokeStyle() {
            return TapeStrokeStyle.defaultTapeStrokeStyle;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ TapeStrokeStyle[] $values() {
        return new TapeStrokeStyle[]{STROKE, STRIPES_FILL, BITMAP_FILL};
    }

    static {
        TapeStrokeStyle tapeStrokeStyle = new TapeStrokeStyle("STRIPES_FILL", 1);
        STRIPES_FILL = tapeStrokeStyle;
        BITMAP_FILL = new TapeStrokeStyle("BITMAP_FILL", 2);
        TapeStrokeStyle[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
        defaultTapeStrokeStyle = tapeStrokeStyle;
    }

    private TapeStrokeStyle(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TapeStrokeStyle> getEntries() {
        return $ENTRIES;
    }

    public static TapeStrokeStyle valueOf(String str) {
        return (TapeStrokeStyle) Enum.valueOf(TapeStrokeStyle.class, str);
    }

    public static TapeStrokeStyle[] values() {
        return (TapeStrokeStyle[]) $VALUES.clone();
    }
}
