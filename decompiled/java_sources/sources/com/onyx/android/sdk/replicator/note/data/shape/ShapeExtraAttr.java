package com.onyx.android.sdk.replicator.note.data.shape;

import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010 \u001a\u00020\u00002\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cJ\u0010\u0010&\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010#J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0018\"\u0004\b*\u0010\u001a¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;", "", "()V", Constants.ELEMNAME_ANCHOR_STRING, "", "getAnchor", "()Ljava/lang/String;", "setAnchor", "(Ljava/lang/String;)V", "lineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "getLineStyle", "()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "setLineStyle", "(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V", "matrixValues", "", "getMatrixValues", "()[F", "setMatrixValues", "([F)V", "paintStyle", "", "getPaintStyle", "()I", "setPaintStyle", "(I)V", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getPoints", "()Ljava/util/List;", "setPoints", "(Ljava/util/List;)V", "shapeCreateArgs", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "getShapeCreateArgs", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "setShapeCreateArgs", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V", "type", "getType", "setType", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeExtraAttr {

    @Nullable
    private String anchor;

    @Nullable
    private ShapeLineStyle lineStyle;

    @Nullable
    private float[] matrixValues;
    private int paintStyle = Paint.Style.STROKE.ordinal();

    @Nullable
    private List<TouchPoint> points;

    @Nullable
    private ShapeCreateArgs shapeCreateArgs;
    private int type;

    @Nullable
    public final String getAnchor() {
        return this.anchor;
    }

    @Nullable
    public final ShapeLineStyle getLineStyle() {
        return this.lineStyle;
    }

    @Nullable
    public final float[] getMatrixValues() {
        return this.matrixValues;
    }

    public final int getPaintStyle() {
        return this.paintStyle;
    }

    @Nullable
    public final List<TouchPoint> getPoints() {
        return this.points;
    }

    @Nullable
    public final ShapeCreateArgs getShapeCreateArgs() {
        return this.shapeCreateArgs;
    }

    public final int getType() {
        return this.type;
    }

    /* renamed from: setAnchor, reason: collision with other method in class */
    public final void m72363setAnchor(@Nullable String str) {
        this.anchor = str;
    }

    /* renamed from: setLineStyle, reason: collision with other method in class */
    public final void m72364setLineStyle(@Nullable ShapeLineStyle shapeLineStyle) {
        this.lineStyle = shapeLineStyle;
    }

    /* renamed from: setMatrixValues, reason: collision with other method in class */
    public final void m72365setMatrixValues(@Nullable float[] fArr) {
        this.matrixValues = fArr;
    }

    /* renamed from: setPaintStyle, reason: collision with other method in class */
    public final void m72366setPaintStyle(int i) {
        this.paintStyle = i;
    }

    /* renamed from: setPoints, reason: collision with other method in class */
    public final void m72367setPoints(@Nullable List<TouchPoint> list) {
        this.points = list;
    }

    /* renamed from: setShapeCreateArgs, reason: collision with other method in class */
    public final void m72368setShapeCreateArgs(@Nullable ShapeCreateArgs shapeCreateArgs) {
        this.shapeCreateArgs = shapeCreateArgs;
    }

    /* renamed from: setType, reason: collision with other method in class */
    public final void m72369setType(int i) {
        this.type = i;
    }

    @NotNull
    public final ShapeExtraAttr setAnchor(@Nullable String anchor) {
        this.anchor = anchor;
        return this;
    }

    @NotNull
    public final ShapeExtraAttr setLineStyle(@Nullable ShapeLineStyle lineStyle) {
        this.lineStyle = lineStyle;
        return this;
    }

    @NotNull
    public final ShapeExtraAttr setMatrixValues(@NotNull float[] matrixValues) {
        Intrinsics.checkNotNullParameter(matrixValues, "matrixValues");
        this.matrixValues = matrixValues;
        return this;
    }

    @NotNull
    public final ShapeExtraAttr setPaintStyle(int paintStyle) {
        this.paintStyle = paintStyle;
        return this;
    }

    @NotNull
    public final ShapeExtraAttr setPoints(@Nullable List<TouchPoint> points) {
        this.points = points;
        return this;
    }

    @NotNull
    public final ShapeExtraAttr setShapeCreateArgs(@Nullable ShapeCreateArgs shapeCreateArgs) {
        this.shapeCreateArgs = shapeCreateArgs;
        return this;
    }

    @NotNull
    public final ShapeExtraAttr setType(int type) {
        this.type = type;
        return this;
    }
}
