package com.onyx.android.sdk.textbox.data;

import android.text.Layout;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.ss.util.CellUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TextAlignType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "JUSTIFY_LEFT", "JUSTIFY_RIGHT", "JUSTIFY_CENTER", "Companion", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextAlignType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TextAlignType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private final String value;
    public static final TextAlignType JUSTIFY_LEFT = new TextAlignType("JUSTIFY_LEFT", 0, "left");
    public static final TextAlignType JUSTIFY_RIGHT = new TextAlignType("JUSTIFY_RIGHT", 1, gon.f71288n0);
    public static final TextAlignType JUSTIFY_CENTER = new TextAlignType("JUSTIFY_CENTER", 2, "center");

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\t¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;", "", "()V", "fromAlignment", "Lcom/onyx/android/sdk/textbox/data/TextAlignType;", CellUtil.ALIGNMENT, "Landroid/text/Layout$Alignment;", "fromValue", "value", "", "toAlignment", "alignType", "toTextAlignment", "", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;

            static {
                int[] iArr = new int[Layout.Alignment.values().length];
                try {
                    iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[TextAlignType.values().length];
                try {
                    iArr2[TextAlignType.JUSTIFY_LEFT.ordinal()] = 1;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr2[TextAlignType.JUSTIFY_RIGHT.ordinal()] = 2;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[TextAlignType.JUSTIFY_CENTER.ordinal()] = 3;
                } catch (NoSuchFieldError unused6) {
                }
                $EnumSwitchMapping$1 = iArr2;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextAlignType fromAlignment(@NotNull Layout.Alignment alignment) {
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            int i = WhenMappings.$EnumSwitchMapping$0[alignment.ordinal()];
            if (i == 1) {
                return TextAlignType.JUSTIFY_LEFT;
            }
            if (i == 2) {
                return TextAlignType.JUSTIFY_RIGHT;
            }
            if (i == 3) {
                return TextAlignType.JUSTIFY_CENTER;
            }
            throw new NoWhenBranchMatchedException();
        }

        @NotNull
        public final TextAlignType fromValue(@Nullable String value) {
            for (TextAlignType textAlignType : TextAlignType.values()) {
                if (StringKt.safelyEqualsIgnoreCase(value, textAlignType.getValue())) {
                    return textAlignType;
                }
            }
            return TextAlignType.JUSTIFY_LEFT;
        }

        @NotNull
        public final Layout.Alignment toAlignment(@NotNull String alignType) {
            Intrinsics.checkNotNullParameter(alignType, "alignType");
            int i = WhenMappings.$EnumSwitchMapping$1[TextAlignType.INSTANCE.fromValue(alignType).ordinal()];
            if (i == 1) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            if (i == 2) {
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            if (i == 3) {
                return Layout.Alignment.ALIGN_CENTER;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final int toTextAlignment(@NotNull String alignType) {
            Intrinsics.checkNotNullParameter(alignType, "alignType");
            return ShapeTextAlignType.INSTANCE.toTextAlignment(toAlignment(alignType));
        }

        public Companion() {
        }

        public final int toTextAlignment(@NotNull Layout.Alignment alignment) {
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            return ShapeTextAlignType.INSTANCE.toTextAlignment(alignment);
        }
    }

    private static final /* synthetic */ TextAlignType[] $values() {
        return new TextAlignType[]{JUSTIFY_LEFT, JUSTIFY_RIGHT, JUSTIFY_CENTER};
    }

    static {
        TextAlignType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private TextAlignType(String str, int i, String str2) {
        this.value = str2;
    }

    @NotNull
    public static EnumEntries<TextAlignType> getEntries() {
        return $ENTRIES;
    }

    public static TextAlignType valueOf(String str) {
        return (TextAlignType) Enum.valueOf(TextAlignType.class, str);
    }

    public static TextAlignType[] values() {
        return (TextAlignType[]) $VALUES.clone();
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
