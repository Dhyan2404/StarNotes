package com.onyx.android.sdk.base.data;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\b\u001a\u00020\u0003J\u001a\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bJ\b\u0010\n\u001a\u00020\u0000H\u0002J\b\u0010\f\u001a\u00020\u0000H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/DockPoint;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "getHorizontalValue", "getVerticalValue", "reverse", "reverseX", "", "reverseY", "TOP_LEFT", "TOP_CENTER", "TOP_RIGHT", "CENTER_LEFT", "CENTER", "CENTER_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DockPoint {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DockPoint[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final int VALUE_CENTER = 2;
    public static final int VALUE_END = 3;
    public static final int VALUE_START = 1;
    private final int value;
    public static final DockPoint TOP_LEFT = new DockPoint("TOP_LEFT", 0, 11);
    public static final DockPoint TOP_CENTER = new DockPoint("TOP_CENTER", 1, 12);
    public static final DockPoint TOP_RIGHT = new DockPoint("TOP_RIGHT", 2, 13);
    public static final DockPoint CENTER_LEFT = new DockPoint("CENTER_LEFT", 3, 21);
    public static final DockPoint CENTER = new DockPoint("CENTER", 4, 22);
    public static final DockPoint CENTER_RIGHT = new DockPoint("CENTER_RIGHT", 5, 23);
    public static final DockPoint BOTTOM_LEFT = new DockPoint("BOTTOM_LEFT", 6, 31);
    public static final DockPoint BOTTOM_CENTER = new DockPoint("BOTTOM_CENTER", 7, 32);
    public static final DockPoint BOTTOM_RIGHT = new DockPoint("BOTTOM_RIGHT", 8, 33);

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/DockPoint$Companion;", "", "()V", "VALUE_CENTER", "", "VALUE_END", "VALUE_START", "fromSubValue", "Lcom/onyx/android/sdk/base/data/DockPoint;", "horizontalValue", "verticalValue", "fromValue", "value", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nDockPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DockPoint.kt\ncom/onyx/android/sdk/base/data/DockPoint$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,75:1\n1282#2,2:76\n*S KotlinDebug\n*F\n+ 1 DockPoint.kt\ncom/onyx/android/sdk/base/data/DockPoint$Companion\n*L\n18#1:76,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DockPoint fromSubValue(int horizontalValue, int verticalValue) {
            return fromValue(horizontalValue + (verticalValue * 10));
        }

        @NotNull
        public final DockPoint fromValue(int value) {
            DockPoint dockPoint;
            DockPoint[] values = DockPoint.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    dockPoint = null;
                    break;
                }
                dockPoint = values[i];
                if (dockPoint.getValue() == value) {
                    break;
                }
                i++;
            }
            return dockPoint == null ? DockPoint.TOP_LEFT : dockPoint;
        }

        private Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockPoint.values().length];
            try {
                iArr[DockPoint.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockPoint.TOP_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockPoint.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockPoint.CENTER_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DockPoint.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DockPoint.CENTER_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DockPoint.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DockPoint.BOTTOM_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DockPoint.BOTTOM_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ DockPoint[] $values() {
        return new DockPoint[]{TOP_LEFT, TOP_CENTER, TOP_RIGHT, CENTER_LEFT, CENTER, CENTER_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT};
    }

    static {
        DockPoint[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private DockPoint(String str, int i, int i2) {
        this.value = i2;
    }

    @NotNull
    public static EnumEntries<DockPoint> getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ DockPoint reverse$default(DockPoint dockPoint, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reverse");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        return dockPoint.reverse(z, z2);
    }

    private final DockPoint reverseX() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return TOP_RIGHT;
            case 2:
                return TOP_CENTER;
            case 3:
                return TOP_LEFT;
            case 4:
                return CENTER_RIGHT;
            case 5:
                return CENTER;
            case 6:
                return CENTER_LEFT;
            case 7:
                return BOTTOM_RIGHT;
            case 8:
                return BOTTOM_CENTER;
            case 9:
                return BOTTOM_LEFT;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final DockPoint reverseY() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return BOTTOM_LEFT;
            case 2:
                return BOTTOM_CENTER;
            case 3:
                return BOTTOM_RIGHT;
            case 4:
                return CENTER_LEFT;
            case 5:
                return CENTER;
            case 6:
                return CENTER_RIGHT;
            case 7:
                return TOP_LEFT;
            case 8:
                return TOP_CENTER;
            case 9:
                return TOP_RIGHT;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static DockPoint valueOf(String str) {
        return (DockPoint) Enum.valueOf(DockPoint.class, str);
    }

    public static DockPoint[] values() {
        return (DockPoint[]) $VALUES.clone();
    }

    public final int getHorizontalValue() {
        return this.value % 10;
    }

    public final int getValue() {
        return this.value;
    }

    public final int getVerticalValue() {
        return this.value / 10;
    }

    @NotNull
    public final DockPoint reverse(boolean reverseX, boolean reverseY) {
        if (reverseX) {
            this = reverseX();
        }
        return reverseY ? this.reverseY() : this;
    }
}
