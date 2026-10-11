package com.onyx.galaxy.note.editor.view.toolbar;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0000j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "", "(Ljava/lang/String;I)V", "getIconRotationByType", "", "isHorizontalDockType", "", "reverse", "LEFT", "TOP", "RIGHT", "BOTTOM", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class DockType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DockType[] $VALUES;
    public static final DockType LEFT = new DockType("LEFT", 0);
    public static final DockType TOP = new DockType("TOP", 1);
    public static final DockType RIGHT = new DockType("RIGHT", 2);
    public static final DockType BOTTOM = new DockType("BOTTOM", 3);

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ DockType[] $values() {
        return new DockType[]{LEFT, TOP, RIGHT, BOTTOM};
    }

    static {
        DockType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DockType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<DockType> getEntries() {
        return $ENTRIES;
    }

    public static DockType valueOf(String str) {
        return (DockType) Enum.valueOf(DockType.class, str);
    }

    public static DockType[] values() {
        return (DockType[]) $VALUES.clone();
    }

    public final float getIconRotationByType() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1 || i == 2) {
            return 270.0f;
        }
        if (i == 3 || i == 4) {
            return 0.0f;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean isHorizontalDockType() {
        return this == LEFT || this == RIGHT;
    }

    @NotNull
    public final DockType reverse() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return RIGHT;
        }
        if (i == 2) {
            return LEFT;
        }
        if (i == 3) {
            return BOTTOM;
        }
        if (i == 4) {
            return TOP;
        }
        throw new NoWhenBranchMatchedException();
    }
}
