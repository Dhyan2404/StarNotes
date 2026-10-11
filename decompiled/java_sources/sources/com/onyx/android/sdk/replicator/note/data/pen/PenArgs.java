package com.onyx.android.sdk.replicator.note.data.pen;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b.\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0086\b\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0001cB;\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0006\u0010R\u001a\u00020SJ\b\u0010T\u001a\u00020\u0000H\u0016J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000b\u0010U\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010V\u001a\u00020\u0006HÆ\u0003J\t\u0010W\u001a\u00020\bHÆ\u0003J\t\u0010X\u001a\u00020\u0006HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u000bHÆ\u0003J?\u0010Z\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010[\u001a\u00020$2\b\u0010\\\u001a\u0004\u0018\u00010]HÖ\u0003J\t\u0010^\u001a\u00020\u0006HÖ\u0001J\t\u0010_\u001a\u00020\u0004HÖ\u0001J\u0016\u0010`\u001a\u00020S2\u0006\u0010a\u001a\u00020\u00062\u0006\u0010b\u001a\u00020\u0006R\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010-\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u000f\"\u0004\b/\u0010\u0011R\u001a\u00100\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u000f\"\u0004\b2\u0010\u0011R\u001a\u00103\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010&\"\u0004\b5\u0010(R\u001a\u00106\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u000f\"\u0004\b8\u0010\u0011R\u001a\u00109\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0018\"\u0004\b;\u0010\u001aR\u001a\u0010<\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010*\"\u0004\b>\u0010,R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0018\"\u0004\b@\u0010\u001aR\u001a\u0010A\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u000f\"\u0004\bC\u0010\u0011R\u001a\u0010D\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u000f\"\u0004\bF\u0010\u0011R\u001a\u0010G\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u000f\"\u0004\bI\u0010\u0011R\u001a\u0010J\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010\u000f\"\u0004\bL\u0010\u0011R\u001a\u0010M\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010\u000f\"\u0004\bO\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010\u000f\"\u0004\bQ\u0010\u0011¨\u0006d"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "Ljava/io/Serializable;", "", "id", "", "type", "", "width", "", "color", "attrs", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V", "alphaFactor", "getAlphaFactor", "()F", "setAlphaFactor", "(F)V", "getAttrs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "setAttrs", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V", "brushShape", "getBrushShape", "()I", "setBrushShape", "(I)V", "getColor", "setColor", "colorList", "Lcom/onyx/android/sdk/base/extension/IntList;", "getColorList", "()Lcom/onyx/android/sdk/base/extension/IntList;", "setColorList", "(Lcom/onyx/android/sdk/base/extension/IntList;)V", "directionEnabled", "", "getDirectionEnabled", Constants.BOOLEAN_VALUE_SIG, "setDirectionEnabled", "(Z)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "nib", "getNib", "setNib", "pressureSensitivity", "getPressureSensitivity", "setPressureSensitivity", "roundCorner", "getRoundCorner", "setRoundCorner", "smoothLevel", "getSmoothLevel", "setSmoothLevel", "subShapeType", "getSubShapeType", "setSubShapeType", "tapeFillStyle", "getTapeFillStyle", "setTapeFillStyle", "getType", "setType", "velocityAmplifier", "getVelocityAmplifier", "setVelocityAmplifier", "velocityIgnoreThreshold", "getVelocityIgnoreThreshold", "setVelocityIgnoreThreshold", "velocityLowerBound", "getVelocityLowerBound", "setVelocityLowerBound", "velocitySensitivity", "getVelocitySensitivity", "setVelocitySensitivity", "velocityUpperBound", "getVelocityUpperBound", "setVelocityUpperBound", "getWidth", "setWidth", "clearPressureAndVelocityAttr", "", "clone", "component1", "component2", "component3", "component4", "component5", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "toString", "updateColorList", "newColor", "updateIndex", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class PenArgs implements Serializable, Cloneable {
    public static final int ONYX_NOTE_EDIT_HISTORY_COLOR_LIST_MAX_SIZE = 5;
    private float alphaFactor;

    @Nullable
    private PenAttrs attrs;
    private int brushShape;
    private int color;

    @NotNull
    private IntList colorList;
    private boolean directionEnabled;

    @Nullable
    private String id;
    private float nib;
    private float pressureSensitivity;
    private boolean roundCorner;
    private float smoothLevel;
    private int subShapeType;

    @NotNull
    private String tapeFillStyle;
    private int type;
    private float velocityAmplifier;
    private float velocityIgnoreThreshold;
    private float velocityLowerBound;
    private float velocitySensitivity;
    private float velocityUpperBound;
    private float width;

    public PenArgs() {
        this(null, 0, 0.0f, 0, null, 31, null);
    }

    public static /* synthetic */ PenArgs copy$default(PenArgs penArgs, String str, int i, float f, int i2, PenAttrs penAttrs, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = penArgs.id;
        }
        if ((i3 & 2) != 0) {
            i = penArgs.type;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            f = penArgs.width;
        }
        float f2 = f;
        if ((i3 & 8) != 0) {
            i2 = penArgs.color;
        }
        int i5 = i2;
        if ((i3 & 16) != 0) {
            penAttrs = penArgs.attrs;
        }
        return penArgs.copy(str, i4, f2, i5, penAttrs);
    }

    public final void clearPressureAndVelocityAttr() {
        this.pressureSensitivity = 0.0f;
        this.velocitySensitivity = 0.0f;
        this.velocityAmplifier = 0.0f;
        this.velocityIgnoreThreshold = 0.0f;
        this.velocityLowerBound = 0.0f;
        this.velocityUpperBound = 0.0f;
        this.directionEnabled = false;
        this.brushShape = 0;
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component2, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* renamed from: component3, reason: from getter */
    public final float getWidth() {
        return this.width;
    }

    /* renamed from: component4, reason: from getter */
    public final int getColor() {
        return this.color;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final PenAttrs getAttrs() {
        return this.attrs;
    }

    @NotNull
    public final PenArgs copy(@Nullable String id, int type, float width, int color, @Nullable PenAttrs attrs) {
        return new PenArgs(id, type, width, color, attrs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PenArgs)) {
            return false;
        }
        PenArgs penArgs = (PenArgs) other;
        return Intrinsics.areEqual(this.id, penArgs.id) && this.type == penArgs.type && Float.compare(this.width, penArgs.width) == 0 && this.color == penArgs.color && Intrinsics.areEqual(this.attrs, penArgs.attrs);
    }

    public final float getAlphaFactor() {
        return this.alphaFactor;
    }

    @Nullable
    public final PenAttrs getAttrs() {
        return this.attrs;
    }

    public final int getBrushShape() {
        return this.brushShape;
    }

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final IntList getColorList() {
        return this.colorList;
    }

    public final boolean getDirectionEnabled() {
        return this.directionEnabled;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    public final float getNib() {
        return this.nib;
    }

    public final float getPressureSensitivity() {
        return this.pressureSensitivity;
    }

    public final boolean getRoundCorner() {
        return this.roundCorner;
    }

    public final float getSmoothLevel() {
        return this.smoothLevel;
    }

    public final int getSubShapeType() {
        return this.subShapeType;
    }

    @NotNull
    public final String getTapeFillStyle() {
        return this.tapeFillStyle;
    }

    public final int getType() {
        return this.type;
    }

    public final float getVelocityAmplifier() {
        return this.velocityAmplifier;
    }

    public final float getVelocityIgnoreThreshold() {
        return this.velocityIgnoreThreshold;
    }

    public final float getVelocityLowerBound() {
        return this.velocityLowerBound;
    }

    public final float getVelocitySensitivity() {
        return this.velocitySensitivity;
    }

    public final float getVelocityUpperBound() {
        return this.velocityUpperBound;
    }

    public final float getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.id;
        int hashCode = (((((((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.type)) * 31) + Float.hashCode(this.width)) * 31) + Integer.hashCode(this.color)) * 31;
        PenAttrs penAttrs = this.attrs;
        return hashCode + (penAttrs != null ? penAttrs.hashCode() : 0);
    }

    public final void setAlphaFactor(float f) {
        this.alphaFactor = f;
    }

    public final void setAttrs(@Nullable PenAttrs penAttrs) {
        this.attrs = penAttrs;
    }

    public final void setBrushShape(int i) {
        this.brushShape = i;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setColorList(@NotNull IntList intList) {
        Intrinsics.checkNotNullParameter(intList, "<set-?>");
        this.colorList = intList;
    }

    public final void setDirectionEnabled(boolean z) {
        this.directionEnabled = z;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setNib(float f) {
        this.nib = f;
    }

    public final void setPressureSensitivity(float f) {
        this.pressureSensitivity = f;
    }

    public final void setRoundCorner(boolean z) {
        this.roundCorner = z;
    }

    public final void setSmoothLevel(float f) {
        this.smoothLevel = f;
    }

    public final void setSubShapeType(int i) {
        this.subShapeType = i;
    }

    public final void setTapeFillStyle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tapeFillStyle = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVelocityAmplifier(float f) {
        this.velocityAmplifier = f;
    }

    public final void setVelocityIgnoreThreshold(float f) {
        this.velocityIgnoreThreshold = f;
    }

    public final void setVelocityLowerBound(float f) {
        this.velocityLowerBound = f;
    }

    public final void setVelocitySensitivity(float f) {
        this.velocitySensitivity = f;
    }

    public final void setVelocityUpperBound(float f) {
        this.velocityUpperBound = f;
    }

    public final void setWidth(float f) {
        this.width = f;
    }

    @NotNull
    public String toString() {
        return "PenArgs(id=" + this.id + ", type=" + this.type + ", width=" + this.width + ", color=" + this.color + ", attrs=" + this.attrs + ')';
    }

    public final void updateColorList(int newColor, int updateIndex) {
        List mutableList;
        if (CollectionKt.isOutOfRange(this.colorList, updateIndex)) {
            return;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.colorList);
        mutableList.set(updateIndex, Integer.valueOf(newColor));
        if (mutableList.size() > 5) {
            mutableList = CollectionKt.safelySubList(mutableList, 0, 5);
        }
        this.colorList = TypeExtKt.toIntList((List<Integer>) mutableList);
        this.color = newColor;
    }

    public PenArgs(@Nullable String str, int i, float f, int i2, @Nullable PenAttrs penAttrs) {
        this.id = str;
        this.type = i;
        this.width = f;
        this.color = i2;
        this.attrs = penAttrs;
        this.pressureSensitivity = 0.375f;
        PenUtils penUtils = PenUtils.INSTANCE;
        this.velocitySensitivity = penUtils.getDEFAULT_VELOCITY_SENSITIVITY();
        this.velocityAmplifier = penUtils.getDEFAULT_VELOCITY_AMPLIFIER();
        this.velocityIgnoreThreshold = penUtils.getDEFAULT_VELOCITY_IGNORE_THRESHOLD();
        this.velocityLowerBound = penUtils.getDEFAULT_VELOCITY_LOWER_BOUND();
        this.velocityUpperBound = penUtils.getDEFAULT_VELOCITY_UPPER_BOUND();
        this.smoothLevel = 0.2f;
        this.alphaFactor = 1.0f;
        this.roundCorner = true;
        this.subShapeType = -1;
        this.tapeFillStyle = "";
        this.colorList = new IntList();
        this.directionEnabled = true;
        this.brushShape = 1;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public PenArgs m72358clone() throws CloneNotSupportedException {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.pen.PenArgs");
        return (PenArgs) clone;
    }

    @NotNull
    public final PenArgs clone(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        PenArgs m72358clone = m72358clone();
        m72358clone.id = id;
        return m72358clone;
    }

    public /* synthetic */ PenArgs(String str, int i, float f, int i2, PenAttrs penAttrs, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0.0f : f, (i3 & 8) != 0 ? -16777216 : i2, (i3 & 16) != 0 ? null : penAttrs);
    }
}
