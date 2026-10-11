package com.onyx.android.sdk.pen;

import android.graphics.Bitmap;
import com.onyx.android.sdk.pennative.PenConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\bG\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 p2\u00020\u0001:\u0001pB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010j\u001a\u00020kJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0010J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0004J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0004J\u000e\u00100\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0004J\u000e\u00109\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0010J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010O\u001a\u00020#J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u0004J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0010J\u000e\u0010i\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u0004J\u0006\u0010n\u001a\u00020oR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u001a\u0010\u001f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR\u001a\u0010+\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR\u001a\u0010.\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\u001a\u00101\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0006\"\u0004\b3\u0010\bR\u001a\u00104\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010%\"\u0004\b6\u0010'R\u001a\u00107\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0006\"\u0004\b9\u0010\bR\u001a\u0010:\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\u001a\u0010=\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u0006\"\u0004\b?\u0010\bR\u001a\u0010@\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u0012\"\u0004\bB\u0010\u0014R\u001a\u0010C\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\u0006\"\u0004\bE\u0010\bR\u001a\u0010F\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u0006\"\u0004\bH\u0010\bR\u001a\u0010I\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010\u0006\"\u0004\bK\u0010\bR\u001a\u0010L\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010\u0006\"\u0004\bN\u0010\bR\u001a\u0010O\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010%\"\u0004\bQ\u0010'R\u001a\u0010R\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010\u0006\"\u0004\bT\u0010\bR\u001a\u0010U\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010\u0012\"\u0004\bW\u0010\u0014R\u001a\u0010X\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010\u0006\"\u0004\bZ\u0010\bR\u001a\u0010[\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010\u0006\"\u0004\b]\u0010\bR\u001a\u0010^\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010\u0006\"\u0004\b`\u0010\bR\u001a\u0010a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010\u0006\"\u0004\bc\u0010\bR\u001a\u0010d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u0010\u0006\"\u0004\bf\u0010\bR\u001a\u0010g\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010\u0006\"\u0004\bi\u0010\b¨\u0006q"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPenConfig;", "Ljava/io/Serializable;", "()V", "alphaFactor", "", "getAlphaFactor", "()F", "setAlphaFactor", "(F)V", "brushAngle", "getBrushAngle", "setBrushAngle", "brushRatio", "getBrushRatio", "setBrushRatio", "brushShape", "", "getBrushShape", "()I", "setBrushShape", "(I)V", "brushShapes", "", "Landroid/graphics/Bitmap;", "getBrushShapes", "()Ljava/util/List;", "setBrushShapes", "(Ljava/util/List;)V", "brushSpacing", "getBrushSpacing", "setBrushSpacing", "color", "getColor", "setColor", "directionEnabled", "", "getDirectionEnabled", Constants.BOOLEAN_VALUE_SIG, "setDirectionEnabled", "(Z)V", "displayScaleX", "getDisplayScaleX", "setDisplayScaleX", "displayScaleY", "getDisplayScaleY", "setDisplayScaleY", "dpi", "getDpi", "setDpi", "endVelocitySensitivity", "getEndVelocitySensitivity", "setEndVelocitySensitivity", "fastMode", "getFastMode", "setFastMode", "maxTouchPressure", "getMaxTouchPressure", "setMaxTouchPressure", "minWidth", "getMinWidth", "setMinWidth", "pressureSensitivity", "getPressureSensitivity", "setPressureSensitivity", "rotateAngle", "getRotateAngle", "setRotateAngle", "scalePrecision", "getScalePrecision", "setScalePrecision", "smoothLevel", "getSmoothLevel", "setSmoothLevel", "startLengthLimit", "getStartLengthLimit", "setStartLengthLimit", "startPointLimit", "getStartPointLimit", "setStartPointLimit", "tiltEnabled", "getTiltEnabled", "setTiltEnabled", "tiltScale", "getTiltScale", "setTiltScale", "type", "getType", "setType", "velocityAmplifier", "getVelocityAmplifier", "setVelocityAmplifier", "velocityIgnoreThreshold", "getVelocityIgnoreThreshold", "setVelocityIgnoreThreshold", "velocityLowerBound", "getVelocityLowerBound", "setVelocityLowerBound", "velocitySensitivity", "getVelocitySensitivity", "setVelocitySensitivity", "velocityUpperBound", "getVelocityUpperBound", "setVelocityUpperBound", "width", "getWidth", "setWidth", "resetBrushRatioAndAngle", "", "spacing", "scale", "toNativeConfig", "Lcom/onyx/android/sdk/pennative/PenConfig;", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoPenConfig implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int NEOPEN_BRUSH_SHAPE_CIRCLE = 0;
    public static final int NEOPEN_BRUSH_SHAPE_ELLIPSE = 1;
    public static final int NEOPEN_BRUSH_SHAPE_RECTANGLE = 2;
    public static final int NEOPEN_PEN_TYPE_BALLPOINT = 8;
    public static final int NEOPEN_PEN_TYPE_BRUSH = 1;
    public static final int NEOPEN_PEN_TYPE_BRUSH_SIGN = 10;
    public static final int NEOPEN_PEN_TYPE_CHARCOAL = 4;
    public static final int NEOPEN_PEN_TYPE_CHARCOAL_V2 = 5;
    public static final int NEOPEN_PEN_TYPE_FOUNTAIN = 2;
    public static final int NEOPEN_PEN_TYPE_FOUNTAIN_V2 = 6;
    public static final int NEOPEN_PEN_TYPE_MARKER = 3;
    public static final int NEOPEN_PEN_TYPE_PENCIL = 7;
    public static final int NEOPEN_PEN_TYPE_SQUARE = 9;
    private float brushAngle;
    private int brushShape;

    @Nullable
    private List<Bitmap> brushShapes;
    private boolean directionEnabled;
    private float endVelocitySensitivity;
    private boolean fastMode;
    private float minWidth;
    private float pressureSensitivity;
    private int rotateAngle;
    private float startLengthLimit;
    private float startPointLimit;
    private boolean tiltEnabled;
    private float tiltScale;
    private int type;
    private float velocityAmplifier;
    private float velocityIgnoreThreshold;
    private float velocityLowerBound;
    private float velocitySensitivity;
    private float velocityUpperBound;
    private int color = -16777216;
    private float width = 3.0f;
    private float maxTouchPressure = 1.0f;
    private float dpi = 320.0f;
    private float displayScaleX = 1.0f;
    private float displayScaleY = 1.0f;
    private float scalePrecision = 1.0f;
    private float brushSpacing = 0.25f;
    private float brushRatio = 5.0f;
    private float smoothLevel = 0.2f;
    private float alphaFactor = 1.0f;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0014\u0010\r\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\tR\u0014\u0010\u000f\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\tR\u0014\u0010\u0010\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\tR\u0014\u0010\u0011\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\tR\u0014\u0010\u0012\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\tR\u0014\u0010\u0013\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\tR\u0014\u0010\u0014\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\tR\u0014\u0010\u0015\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\t¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;", "", "", "scale", "Lcom/onyx/android/sdk/pen/PenPrecision;", "getPenPrecision", "a", "", "NEOPEN_BRUSH_SHAPE_CIRCLE", "I", "NEOPEN_BRUSH_SHAPE_ELLIPSE", "NEOPEN_BRUSH_SHAPE_RECTANGLE", "NEOPEN_PEN_TYPE_BALLPOINT", "NEOPEN_PEN_TYPE_BRUSH", "NEOPEN_PEN_TYPE_BRUSH_SIGN", "NEOPEN_PEN_TYPE_CHARCOAL", "NEOPEN_PEN_TYPE_CHARCOAL_V2", "NEOPEN_PEN_TYPE_FOUNTAIN", "NEOPEN_PEN_TYPE_FOUNTAIN_V2", "NEOPEN_PEN_TYPE_MARKER", "NEOPEN_PEN_TYPE_PENCIL", "NEOPEN_PEN_TYPE_SQUARE", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final float m34429a(float scale) {
            if (scale < 1.5f) {
                return 1.0f;
            }
            return scale < 7.0f ? 4.0f : 8.0f;
        }

        @NotNull
        public final PenPrecision getPenPrecision(float scale) {
            return new PenPrecision(m34429a(scale), scale);
        }

        public Companion() {
        }
    }

    public final float getAlphaFactor() {
        return this.alphaFactor;
    }

    public final float getBrushAngle() {
        return this.brushAngle;
    }

    public final float getBrushRatio() {
        return this.brushRatio;
    }

    public final int getBrushShape() {
        return this.brushShape;
    }

    @Nullable
    public final List<Bitmap> getBrushShapes() {
        return this.brushShapes;
    }

    public final float getBrushSpacing() {
        return this.brushSpacing;
    }

    public final int getColor() {
        return this.color;
    }

    public final boolean getDirectionEnabled() {
        return this.directionEnabled;
    }

    public final float getDisplayScaleX() {
        return this.displayScaleX;
    }

    public final float getDisplayScaleY() {
        return this.displayScaleY;
    }

    public final float getDpi() {
        return this.dpi;
    }

    public final float getEndVelocitySensitivity() {
        return this.endVelocitySensitivity;
    }

    public final boolean getFastMode() {
        return this.fastMode;
    }

    public final float getMaxTouchPressure() {
        return this.maxTouchPressure;
    }

    public final float getMinWidth() {
        return this.minWidth;
    }

    public final float getPressureSensitivity() {
        return this.pressureSensitivity;
    }

    public final int getRotateAngle() {
        return this.rotateAngle;
    }

    public final float getScalePrecision() {
        return this.scalePrecision;
    }

    public final float getSmoothLevel() {
        return this.smoothLevel;
    }

    public final float getStartLengthLimit() {
        return this.startLengthLimit;
    }

    public final float getStartPointLimit() {
        return this.startPointLimit;
    }

    public final boolean getTiltEnabled() {
        return this.tiltEnabled;
    }

    public final float getTiltScale() {
        return this.tiltScale;
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

    public final void resetBrushRatioAndAngle() {
        this.brushRatio = 5.0f;
        this.brushAngle = 0.0f;
    }

    public final void setAlphaFactor(float f) {
        this.alphaFactor = f;
    }

    public final void setBrushAngle(float f) {
        this.brushAngle = f;
    }

    public final void setBrushRatio(float f) {
        this.brushRatio = f;
    }

    public final void setBrushShape(int i) {
        this.brushShape = i;
    }

    public final void setBrushShapes(@Nullable List<Bitmap> list) {
        this.brushShapes = list;
    }

    /* renamed from: setBrushSpacing, reason: collision with other method in class */
    public final void m72311setBrushSpacing(float f) {
        this.brushSpacing = f;
    }

    /* renamed from: setColor, reason: collision with other method in class */
    public final void m72312setColor(int i) {
        this.color = i;
    }

    public final void setDirectionEnabled(boolean z) {
        this.directionEnabled = z;
    }

    /* renamed from: setDisplayScaleX, reason: collision with other method in class */
    public final void m72313setDisplayScaleX(float f) {
        this.displayScaleX = f;
    }

    /* renamed from: setDisplayScaleY, reason: collision with other method in class */
    public final void m72314setDisplayScaleY(float f) {
        this.displayScaleY = f;
    }

    /* renamed from: setDpi, reason: collision with other method in class */
    public final void m72315setDpi(float f) {
        this.dpi = f;
    }

    public final void setEndVelocitySensitivity(float f) {
        this.endVelocitySensitivity = f;
    }

    public final void setFastMode(boolean z) {
        this.fastMode = z;
    }

    /* renamed from: setMaxTouchPressure, reason: collision with other method in class */
    public final void m72316setMaxTouchPressure(float f) {
        this.maxTouchPressure = f;
    }

    public final void setMinWidth(float f) {
        this.minWidth = f;
    }

    public final void setPressureSensitivity(float f) {
        this.pressureSensitivity = f;
    }

    /* renamed from: setRotateAngle, reason: collision with other method in class */
    public final void m72317setRotateAngle(int i) {
        this.rotateAngle = i;
    }

    public final void setScalePrecision(float f) {
        this.scalePrecision = f;
    }

    public final void setSmoothLevel(float f) {
        this.smoothLevel = f;
    }

    public final void setStartLengthLimit(float f) {
        this.startLengthLimit = f;
    }

    public final void setStartPointLimit(float f) {
        this.startPointLimit = f;
    }

    /* renamed from: setTiltEnabled, reason: collision with other method in class */
    public final void m72318setTiltEnabled(boolean z) {
        this.tiltEnabled = z;
    }

    /* renamed from: setTiltScale, reason: collision with other method in class */
    public final void m72319setTiltScale(float f) {
        this.tiltScale = f;
    }

    /* renamed from: setType, reason: collision with other method in class */
    public final void m72320setType(int i) {
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

    /* renamed from: setWidth, reason: collision with other method in class */
    public final void m72321setWidth(float f) {
        this.width = f;
    }

    @NotNull
    public final PenConfig toNativeConfig() {
        PenConfig penConfig = new PenConfig();
        penConfig.setType(this.type);
        penConfig.setFastMode(this.fastMode);
        penConfig.setColor(this.color);
        penConfig.setWidth(this.width);
        penConfig.setMinWidth(this.minWidth);
        penConfig.setRotateAngle(this.rotateAngle);
        penConfig.setTiltEnabled(this.tiltEnabled);
        penConfig.setTiltScale(this.tiltScale);
        penConfig.setDirectionEnabled(this.directionEnabled);
        penConfig.setMaxTouchPressure(this.maxTouchPressure);
        penConfig.setDpi(this.dpi);
        penConfig.setDisplayScaleX(this.displayScaleX);
        penConfig.setDisplayScaleY(this.displayScaleY);
        penConfig.setScalePrecision(this.scalePrecision);
        penConfig.setBrushSpacing(this.brushSpacing);
        penConfig.setBrushShape(this.brushShape);
        penConfig.setBrushRatio(this.brushRatio);
        penConfig.setBrushAngle(this.brushAngle);
        penConfig.setPressureSensitivity(this.pressureSensitivity);
        penConfig.setVelocitySensitivity(this.velocitySensitivity);
        penConfig.setVelocityAmplifier(this.velocityAmplifier);
        penConfig.setVelocityIgnoreThreshold(this.velocityIgnoreThreshold);
        penConfig.setVelocityLowerBound(this.velocityLowerBound);
        penConfig.setVelocityUpperBound(this.velocityUpperBound);
        penConfig.setSmoothLevel(this.smoothLevel);
        penConfig.setStartPointLimit(this.startPointLimit);
        penConfig.setStartLengthLimit(this.startLengthLimit);
        penConfig.setEndVelocitySensitivity(this.endVelocitySensitivity);
        return penConfig;
    }

    @NotNull
    public final NeoPenConfig setBrushSpacing(float spacing) {
        this.brushSpacing = spacing;
        return this;
    }

    @NotNull
    public final NeoPenConfig setColor(int color) {
        this.color = color;
        return this;
    }

    @NotNull
    public final NeoPenConfig setDisplayScaleX(float scale) {
        this.displayScaleX = scale;
        return this;
    }

    @NotNull
    public final NeoPenConfig setDisplayScaleY(float scale) {
        this.displayScaleY = scale;
        return this;
    }

    @NotNull
    public final NeoPenConfig setDpi(float dpi) {
        this.dpi = dpi;
        return this;
    }

    @NotNull
    public final NeoPenConfig setMaxTouchPressure(float maxTouchPressure) {
        this.maxTouchPressure = maxTouchPressure;
        return this;
    }

    @NotNull
    public final NeoPenConfig setRotateAngle(int rotateAngle) {
        this.rotateAngle = rotateAngle;
        return this;
    }

    @NotNull
    public final NeoPenConfig setTiltEnabled(boolean tiltEnabled) {
        this.tiltEnabled = tiltEnabled;
        return this;
    }

    @NotNull
    public final NeoPenConfig setTiltScale(float tiltScale) {
        this.tiltScale = tiltScale;
        return this;
    }

    @NotNull
    public final NeoPenConfig setType(int type) {
        this.type = type;
        return this;
    }

    @NotNull
    public final NeoPenConfig setWidth(float width) {
        this.width = width;
        return this;
    }
}
