package com.onyx.galaxy.note.editor.view.ruler;

import android.graphics.Paint;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\b\u0086\u0081\u0002\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bj\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;", "", "smallScaleStep", "", "middleScaleStep", "bigScaleStep", "scaleTextStep", "(Ljava/lang/String;IIIII)V", "getBigScaleStep", "()I", "setBigScaleStep", "(I)V", "getMiddleScaleStep", "setMiddleScaleStep", "getScaleTextStep", "setScaleTextStep", "getSmallScaleStep", "setSmallScaleStep", "CM_DEFAULT", "CM_COARSE", "CM_TWO_SCALE", "CM_FIVE_SCALE", "IN_DEFAULT", "IN_HALF", "IN_QUARTER", "IN_TWO_SCALE", "IN_FIVE_SCALE", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class RulerScaleType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RulerScaleType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private static final float MIN_SCALE_INTERVAL;
    private int bigScaleStep;
    private int middleScaleStep;
    private int scaleTextStep;
    private int smallScaleStep;
    public static final RulerScaleType CM_DEFAULT = new RulerScaleType("CM_DEFAULT", 0, 1, 5, 10, 10);
    public static final RulerScaleType CM_COARSE = new RulerScaleType("CM_COARSE", 1, 5, 5, 10, 10);
    public static final RulerScaleType CM_TWO_SCALE = new RulerScaleType("CM_TWO_SCALE", 2, 5, 5, 10, 20);
    public static final RulerScaleType CM_FIVE_SCALE = new RulerScaleType("CM_FIVE_SCALE", 3, 10, 10, 50, 50);
    public static final RulerScaleType IN_DEFAULT = new RulerScaleType("IN_DEFAULT", 4, 1, 2, 16, 16);
    public static final RulerScaleType IN_HALF = new RulerScaleType("IN_HALF", 5, 2, 4, 16, 16);
    public static final RulerScaleType IN_QUARTER = new RulerScaleType("IN_QUARTER", 6, 4, 4, 16, 16);
    public static final RulerScaleType IN_TWO_SCALE = new RulerScaleType("IN_TWO_SCALE", 7, 8, 8, 16, 32);
    public static final RulerScaleType IN_FIVE_SCALE = new RulerScaleType("IN_FIVE_SCALE", 8, 16, 16, 80, 80);

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;", "", "()V", "MIN_SCALE_INTERVAL", "", "getMIN_SCALE_INTERVAL", "()F", "loadRulerScaleType", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;", "scaleInterval", "angleTextPaint", "Landroid/graphics/Paint;", "unitsType", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float getMIN_SCALE_INTERVAL() {
            return RulerScaleType.MIN_SCALE_INTERVAL;
        }

        @NotNull
        public final RulerScaleType loadRulerScaleType(float scaleInterval, @NotNull Paint angleTextPaint, @NotNull RulerUnitsType unitsType) {
            Intrinsics.checkNotNullParameter(angleTextPaint, "angleTextPaint");
            Intrinsics.checkNotNullParameter(unitsType, "unitsType");
            float measureText = angleTextPaint.measureText("10");
            if (unitsType == RulerUnitsType.f60707IN) {
                RulerScaleType rulerScaleType = RulerScaleType.IN_TWO_SCALE;
                return measureText >= ((float) rulerScaleType.getScaleTextStep()) * scaleInterval ? RulerScaleType.IN_FIVE_SCALE : measureText >= ((float) RulerScaleType.CM_DEFAULT.getScaleTextStep()) * scaleInterval ? rulerScaleType : ((float) 2) * scaleInterval < getMIN_SCALE_INTERVAL() ? RulerScaleType.IN_QUARTER : scaleInterval < getMIN_SCALE_INTERVAL() ? RulerScaleType.IN_HALF : RulerScaleType.IN_DEFAULT;
            }
            RulerScaleType rulerScaleType2 = RulerScaleType.CM_TWO_SCALE;
            if (measureText >= rulerScaleType2.getScaleTextStep() * scaleInterval) {
                return RulerScaleType.CM_FIVE_SCALE;
            }
            RulerScaleType rulerScaleType3 = RulerScaleType.CM_DEFAULT;
            return measureText >= ((float) rulerScaleType3.getScaleTextStep()) * scaleInterval ? rulerScaleType2 : scaleInterval < getMIN_SCALE_INTERVAL() ? RulerScaleType.CM_COARSE : rulerScaleType3;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ RulerScaleType[] $values() {
        return new RulerScaleType[]{CM_DEFAULT, CM_COARSE, CM_TWO_SCALE, CM_FIVE_SCALE, IN_DEFAULT, IN_HALF, IN_QUARTER, IN_TWO_SCALE, IN_FIVE_SCALE};
    }

    static {
        RulerScaleType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
        MIN_SCALE_INTERVAL = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_2);
    }

    private RulerScaleType(String str, int i, int i2, int i3, int i4, int i5) {
        this.smallScaleStep = i2;
        this.middleScaleStep = i3;
        this.bigScaleStep = i4;
        this.scaleTextStep = i5;
    }

    @NotNull
    public static EnumEntries<RulerScaleType> getEntries() {
        return $ENTRIES;
    }

    public static RulerScaleType valueOf(String str) {
        return (RulerScaleType) Enum.valueOf(RulerScaleType.class, str);
    }

    public static RulerScaleType[] values() {
        return (RulerScaleType[]) $VALUES.clone();
    }

    public final int getBigScaleStep() {
        return this.bigScaleStep;
    }

    public final int getMiddleScaleStep() {
        return this.middleScaleStep;
    }

    public final int getScaleTextStep() {
        return this.scaleTextStep;
    }

    public final int getSmallScaleStep() {
        return this.smallScaleStep;
    }

    public final void setBigScaleStep(int i) {
        this.bigScaleStep = i;
    }

    public final void setMiddleScaleStep(int i) {
        this.middleScaleStep = i;
    }

    public final void setScaleTextStep(int i) {
        this.scaleTextStep = i;
    }

    public final void setSmallScaleStep(int i) {
        this.smallScaleStep = i;
    }
}
