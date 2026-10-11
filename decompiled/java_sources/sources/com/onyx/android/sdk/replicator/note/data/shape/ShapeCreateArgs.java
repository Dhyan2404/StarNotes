package com.onyx.android.sdk.replicator.note.data.shape;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.replicator.note.data.pen.PenAttrs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b<\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J\b\u0010?\u001a\u00020\u0000H\u0016J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0013HÆ\u0003J\t\u0010F\u001a\u00020\u0015HÆ\u0003J\t\u0010G\u001a\u00020\u0003HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010J\u001a\u00020\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0003HÆ\u0003J£\u0001\u0010O\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015HÆ\u0001J\u0013\u0010P\u001a\u00020\u00132\b\u0010Q\u001a\u0004\u0018\u00010RH\u0096\u0002J\u0010\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\u0003H\u0007J\b\u0010U\u001a\u00020\u0003H\u0007J\t\u0010V\u001a\u00020\u0015HÖ\u0001J\t\u0010W\u001a\u00020XHÖ\u0001R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0018\"\u0004\b(\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0018\"\u0004\b.\u0010\u001aR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0018\"\u0004\b0\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0018\"\u0004\b6\u0010\u001aR\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0018\"\u0004\b8\u0010\u001aR\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0018\"\u0004\b:\u0010\u001aR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0018\"\u0004\b<\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0018\"\u0004\b>\u0010\u001a¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "", "displayScale", "", "maxPressure", "tiltConfig", "Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;", "penAttrs", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "pressureSensitivity", "velocitySensitivity", "velocityAmplifier", "velocityIgnoreThreshold", "velocityLowerBound", "velocityUpperBound", "alphaFactor", "dpi", "smoothLevel", "directionEnabled", "", "brushShape", "", "(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)V", "getAlphaFactor", "()F", "setAlphaFactor", "(F)V", "getBrushShape", "()I", "setBrushShape", "(I)V", "getDirectionEnabled", Constants.BOOLEAN_VALUE_SIG, "setDirectionEnabled", "(Z)V", "getDisplayScale", "setDisplayScale", "getDpi", "setDpi", "getMaxPressure", "setMaxPressure", "getPenAttrs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "setPenAttrs", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V", "getPressureSensitivity", "setPressureSensitivity", "getSmoothLevel", "setSmoothLevel", "getTiltConfig", "()Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;", "setTiltConfig", "(Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;)V", "getVelocityAmplifier", "setVelocityAmplifier", "getVelocityIgnoreThreshold", "setVelocityIgnoreThreshold", "getVelocityLowerBound", "setVelocityLowerBound", "getVelocitySensitivity", "setVelocitySensitivity", "getVelocityUpperBound", "setVelocityUpperBound", "clone", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "getCreateScaleValue", "value", "getRevisedDisplayScale", "hashCode", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class ShapeCreateArgs implements Cloneable {
    private float alphaFactor;
    private int brushShape;
    private boolean directionEnabled;
    private float displayScale;
    private float dpi;
    private float maxPressure;

    @Nullable
    private PenAttrs penAttrs;
    private float pressureSensitivity;
    private float smoothLevel;

    @Nullable
    private TiltConfig tiltConfig;
    private float velocityAmplifier;
    private float velocityIgnoreThreshold;
    private float velocityLowerBound;
    private float velocitySensitivity;
    private float velocityUpperBound;

    public ShapeCreateArgs() {
        this(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);
    }

    /* renamed from: component1, reason: from getter */
    public final float getDisplayScale() {
        return this.displayScale;
    }

    /* renamed from: component10, reason: from getter */
    public final float getVelocityUpperBound() {
        return this.velocityUpperBound;
    }

    /* renamed from: component11, reason: from getter */
    public final float getAlphaFactor() {
        return this.alphaFactor;
    }

    /* renamed from: component12, reason: from getter */
    public final float getDpi() {
        return this.dpi;
    }

    /* renamed from: component13, reason: from getter */
    public final float getSmoothLevel() {
        return this.smoothLevel;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getDirectionEnabled() {
        return this.directionEnabled;
    }

    /* renamed from: component15, reason: from getter */
    public final int getBrushShape() {
        return this.brushShape;
    }

    /* renamed from: component2, reason: from getter */
    public final float getMaxPressure() {
        return this.maxPressure;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final TiltConfig getTiltConfig() {
        return this.tiltConfig;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final PenAttrs getPenAttrs() {
        return this.penAttrs;
    }

    /* renamed from: component5, reason: from getter */
    public final float getPressureSensitivity() {
        return this.pressureSensitivity;
    }

    /* renamed from: component6, reason: from getter */
    public final float getVelocitySensitivity() {
        return this.velocitySensitivity;
    }

    /* renamed from: component7, reason: from getter */
    public final float getVelocityAmplifier() {
        return this.velocityAmplifier;
    }

    /* renamed from: component8, reason: from getter */
    public final float getVelocityIgnoreThreshold() {
        return this.velocityIgnoreThreshold;
    }

    /* renamed from: component9, reason: from getter */
    public final float getVelocityLowerBound() {
        return this.velocityLowerBound;
    }

    @NotNull
    public final ShapeCreateArgs copy(float displayScale, float maxPressure, @Nullable TiltConfig tiltConfig, @Nullable PenAttrs penAttrs, float pressureSensitivity, float velocitySensitivity, float velocityAmplifier, float velocityIgnoreThreshold, float velocityLowerBound, float velocityUpperBound, float alphaFactor, float dpi, float smoothLevel, boolean directionEnabled, int brushShape) {
        return new ShapeCreateArgs(displayScale, maxPressure, tiltConfig, penAttrs, pressureSensitivity, velocitySensitivity, velocityAmplifier, velocityIgnoreThreshold, velocityLowerBound, velocityUpperBound, alphaFactor, dpi, smoothLevel, directionEnabled, brushShape);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(ShapeCreateArgs.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs");
        ShapeCreateArgs shapeCreateArgs = (ShapeCreateArgs) other;
        if (this.displayScale == shapeCreateArgs.displayScale) {
            if ((this.maxPressure == shapeCreateArgs.maxPressure) && Intrinsics.areEqual(this.tiltConfig, shapeCreateArgs.tiltConfig) && Intrinsics.areEqual(this.penAttrs, shapeCreateArgs.penAttrs)) {
                if (this.pressureSensitivity == shapeCreateArgs.pressureSensitivity) {
                    if (this.velocitySensitivity == shapeCreateArgs.velocitySensitivity) {
                        if (this.alphaFactor == shapeCreateArgs.alphaFactor) {
                            if (this.dpi == shapeCreateArgs.dpi) {
                                if ((this.smoothLevel == shapeCreateArgs.smoothLevel) && this.directionEnabled == shapeCreateArgs.directionEnabled && this.brushShape == shapeCreateArgs.brushShape) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final float getAlphaFactor() {
        return this.alphaFactor;
    }

    public final int getBrushShape() {
        return this.brushShape;
    }

    @JSONField(deserialize = false, serialize = false)
    public final float getCreateScaleValue(float value) {
        float f = this.displayScale;
        return (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1)) == 0 ? value : value / f;
    }

    public final boolean getDirectionEnabled() {
        return this.directionEnabled;
    }

    public final float getDisplayScale() {
        return this.displayScale;
    }

    public final float getDpi() {
        return this.dpi;
    }

    public final float getMaxPressure() {
        return this.maxPressure;
    }

    @Nullable
    public final PenAttrs getPenAttrs() {
        return this.penAttrs;
    }

    public final float getPressureSensitivity() {
        return this.pressureSensitivity;
    }

    @JSONField(deserialize = false, serialize = false)
    public final float getRevisedDisplayScale() {
        if (Float.compare(this.displayScale, 0.0f) == 0) {
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            this.displayScale = FLOAT_ONE.floatValue();
        }
        return this.displayScale;
    }

    public final float getSmoothLevel() {
        return this.smoothLevel;
    }

    @Nullable
    public final TiltConfig getTiltConfig() {
        return this.tiltConfig;
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

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((Float.hashCode(this.displayScale) * 31) + Float.hashCode(this.maxPressure)) * 31;
        TiltConfig tiltConfig = this.tiltConfig;
        int hashCode2 = (hashCode + (tiltConfig == null ? 0 : tiltConfig.hashCode())) * 31;
        PenAttrs penAttrs = this.penAttrs;
        int hashCode3 = (((((((((((((((((((hashCode2 + (penAttrs != null ? penAttrs.hashCode() : 0)) * 31) + Float.hashCode(this.pressureSensitivity)) * 31) + Float.hashCode(this.velocitySensitivity)) * 31) + Float.hashCode(this.velocityAmplifier)) * 31) + Float.hashCode(this.velocityIgnoreThreshold)) * 31) + Float.hashCode(this.velocityLowerBound)) * 31) + Float.hashCode(this.velocityUpperBound)) * 31) + Float.hashCode(this.alphaFactor)) * 31) + Float.hashCode(this.dpi)) * 31) + Float.hashCode(this.smoothLevel)) * 31;
        boolean z = this.directionEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode3 + i) * 31) + Integer.hashCode(this.brushShape);
    }

    public final void setAlphaFactor(float f) {
        this.alphaFactor = f;
    }

    public final void setBrushShape(int i) {
        this.brushShape = i;
    }

    public final void setDirectionEnabled(boolean z) {
        this.directionEnabled = z;
    }

    public final void setDisplayScale(float f) {
        this.displayScale = f;
    }

    public final void setDpi(float f) {
        this.dpi = f;
    }

    public final void setMaxPressure(float f) {
        this.maxPressure = f;
    }

    public final void setPenAttrs(@Nullable PenAttrs penAttrs) {
        this.penAttrs = penAttrs;
    }

    public final void setPressureSensitivity(float f) {
        this.pressureSensitivity = f;
    }

    public final void setSmoothLevel(float f) {
        this.smoothLevel = f;
    }

    public final void setTiltConfig(@Nullable TiltConfig tiltConfig) {
        this.tiltConfig = tiltConfig;
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

    @NotNull
    public String toString() {
        return "ShapeCreateArgs(displayScale=" + this.displayScale + ", maxPressure=" + this.maxPressure + ", tiltConfig=" + this.tiltConfig + ", penAttrs=" + this.penAttrs + ", pressureSensitivity=" + this.pressureSensitivity + ", velocitySensitivity=" + this.velocitySensitivity + ", velocityAmplifier=" + this.velocityAmplifier + ", velocityIgnoreThreshold=" + this.velocityIgnoreThreshold + ", velocityLowerBound=" + this.velocityLowerBound + ", velocityUpperBound=" + this.velocityUpperBound + ", alphaFactor=" + this.alphaFactor + ", dpi=" + this.dpi + ", smoothLevel=" + this.smoothLevel + ", directionEnabled=" + this.directionEnabled + ", brushShape=" + this.brushShape + ')';
    }

    public ShapeCreateArgs(float f, float f2, @Nullable TiltConfig tiltConfig, @Nullable PenAttrs penAttrs, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, boolean z, int i) {
        this.displayScale = f;
        this.maxPressure = f2;
        this.tiltConfig = tiltConfig;
        this.penAttrs = penAttrs;
        this.pressureSensitivity = f3;
        this.velocitySensitivity = f4;
        this.velocityAmplifier = f5;
        this.velocityIgnoreThreshold = f6;
        this.velocityLowerBound = f7;
        this.velocityUpperBound = f8;
        this.alphaFactor = f9;
        this.dpi = f10;
        this.smoothLevel = f11;
        this.directionEnabled = z;
        this.brushShape = i;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeCreateArgs m72362clone() throws CloneNotSupportedException {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs");
        return (ShapeCreateArgs) clone;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ShapeCreateArgs(float r17, float r18, com.onyx.android.sdk.replicator.note.data.shape.TiltConfig r19, com.onyx.android.sdk.replicator.note.data.pen.PenAttrs r20, float r21, float r22, float r23, float r24, float r25, float r26, float r27, float r28, float r29, boolean r30, int r31, int r32, kotlin.jvm.internal.DefaultConstructorMarker r33) {
        /*
            r16 = this;
            r0 = r32
            r1 = r0 & 1
            if (r1 == 0) goto L12
            java.lang.Float r1 = org.apache.commons.lang3.math.NumberUtils.FLOAT_ONE
            java.lang.String r2 = "FLOAT_ONE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            float r1 = r1.floatValue()
            goto L14
        L12:
            r1 = r17
        L14:
            r2 = r0 & 2
            if (r2 == 0) goto L1f
            com.onyx.android.sdk.replicator.note.data.constant.NoteConstant r2 = com.onyx.android.sdk.replicator.note.data.constant.NoteConstant.INSTANCE
            float r2 = r2.getMAX_TOUCH_PRESSURE()
            goto L21
        L1f:
            r2 = r18
        L21:
            r3 = r0 & 4
            r4 = 0
            if (r3 == 0) goto L28
            r3 = r4
            goto L2a
        L28:
            r3 = r19
        L2a:
            r5 = r0 & 8
            if (r5 == 0) goto L2f
            goto L31
        L2f:
            r4 = r20
        L31:
            r5 = r0 & 16
            if (r5 == 0) goto L38
            r5 = 1052770304(0x3ec00000, float:0.375)
            goto L3a
        L38:
            r5 = r21
        L3a:
            r6 = r0 & 32
            if (r6 == 0) goto L45
            com.onyx.android.sdk.pen.utils.PenUtils r6 = com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE
            float r6 = r6.getDEFAULT_VELOCITY_SENSITIVITY()
            goto L47
        L45:
            r6 = r22
        L47:
            r7 = r0 & 64
            r8 = 0
            if (r7 == 0) goto L4e
            r7 = r8
            goto L50
        L4e:
            r7 = r23
        L50:
            r9 = r0 & 128(0x80, float:1.794E-43)
            if (r9 == 0) goto L56
            r9 = r8
            goto L58
        L56:
            r9 = r24
        L58:
            r10 = r0 & 256(0x100, float:3.59E-43)
            if (r10 == 0) goto L5e
            r10 = r8
            goto L60
        L5e:
            r10 = r25
        L60:
            r11 = r0 & 512(0x200, float:7.175E-43)
            if (r11 == 0) goto L65
            goto L67
        L65:
            r8 = r26
        L67:
            r11 = r0 & 1024(0x400, float:1.435E-42)
            if (r11 == 0) goto L6e
            r11 = 1065353216(0x3f800000, float:1.0)
            goto L70
        L6e:
            r11 = r27
        L70:
            r12 = r0 & 2048(0x800, float:2.87E-42)
            if (r12 == 0) goto L77
            r12 = 1134559232(0x43a00000, float:320.0)
            goto L79
        L77:
            r12 = r28
        L79:
            r13 = r0 & 4096(0x1000, float:5.74E-42)
            if (r13 == 0) goto L81
            r13 = 1045220557(0x3e4ccccd, float:0.2)
            goto L83
        L81:
            r13 = r29
        L83:
            r14 = r0 & 8192(0x2000, float:1.14794E-41)
            r15 = 1
            if (r14 == 0) goto L8a
            r14 = r15
            goto L8c
        L8a:
            r14 = r30
        L8c:
            r0 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r0 == 0) goto L91
            goto L93
        L91:
            r15 = r31
        L93:
            r17 = r1
            r18 = r2
            r19 = r3
            r20 = r4
            r21 = r5
            r22 = r6
            r23 = r7
            r24 = r9
            r25 = r10
            r26 = r8
            r27 = r11
            r28 = r12
            r29 = r13
            r30 = r14
            r31 = r15
            r16.<init>(r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs.<init>(float, float, com.onyx.android.sdk.replicator.note.data.shape.TiltConfig, com.onyx.android.sdk.replicator.note.data.pen.PenAttrs, float, float, float, float, float, float, float, float, float, boolean, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
