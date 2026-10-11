package com.onyx.android.sdk.reader.api;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\bI\b\u0086\b\u0018\u00002\u00020\u0001B³\u0001\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001e\u001a\u00020\t\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u000b\u0012\b\b\u0002\u0010 \u001a\u00020\u000b\u0012\b\b\u0002\u0010!\u001a\u00020\u000e\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010#\u001a\u00020\u000b\u0012\b\b\u0002\u0010$\u001a\u00020\u000e\u0012\b\b\u0002\u0010%\u001a\u00020\u000e\u0012\b\b\u0002\u0010&\u001a\u00020\u000b\u0012\b\b\u0002\u0010'\u001a\u00020\u0002\u0012\b\b\u0002\u0010(\u001a\u00020\u0002\u0012\b\b\u0002\u0010)\u001a\u00020\u0002¢\u0006\u0004\bu\u0010vJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\t\u0010\r\u001a\u00020\u000bHÆ\u0003J\t\u0010\u000f\u001a\u00020\u000eHÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010\u0012\u001a\u00020\u000bHÆ\u0003J\t\u0010\u0013\u001a\u00020\u000eHÆ\u0003J\t\u0010\u0014\u001a\u00020\u000eHÆ\u0003J\t\u0010\u0015\u001a\u00020\u000bHÆ\u0003J\t\u0010\u0016\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0002HÆ\u0003Jµ\u0001\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u00022\b\b\u0002\u0010\u001b\u001a\u00020\u00022\b\b\u0002\u0010\u001c\u001a\u00020\u00022\b\b\u0002\u0010\u001d\u001a\u00020\u00072\b\b\u0002\u0010\u001e\u001a\u00020\t2\b\b\u0002\u0010\u001f\u001a\u00020\u000b2\b\b\u0002\u0010 \u001a\u00020\u000b2\b\b\u0002\u0010!\u001a\u00020\u000e2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010#\u001a\u00020\u000b2\b\b\u0002\u0010$\u001a\u00020\u000e2\b\b\u0002\u0010%\u001a\u00020\u000e2\b\b\u0002\u0010&\u001a\u00020\u000b2\b\b\u0002\u0010'\u001a\u00020\u00022\b\b\u0002\u0010(\u001a\u00020\u00022\b\b\u0002\u0010)\u001a\u00020\u0002HÆ\u0001J\t\u0010+\u001a\u00020\u0002HÖ\u0001J\t\u0010,\u001a\u00020\u000bHÖ\u0001J\u0013\u0010/\u001a\u00020.2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00101\u001a\u0004\b7\u00103\"\u0004\b8\u00105R\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00101\u001a\u0004\b:\u00103\"\u0004\b;\u00105R\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00101\u001a\u0004\b=\u00103\"\u0004\b>\u00105R\"\u0010\u001d\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010\u001e\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010\u001f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\"\u0010 \u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010L\u001a\u0004\bR\u0010N\"\u0004\bS\u0010PR\"\u0010!\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR$\u0010\"\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\"\u0010#\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010L\u001a\u0004\ba\u0010N\"\u0004\bb\u0010PR\"\u0010$\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010U\u001a\u0004\bd\u0010W\"\u0004\be\u0010YR\"\u0010%\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010U\u001a\u0004\bg\u0010W\"\u0004\bh\u0010YR\"\u0010&\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010L\u001a\u0004\bj\u0010N\"\u0004\bk\u0010PR\"\u0010'\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u00101\u001a\u0004\bm\u00103\"\u0004\bn\u00105R\"\u0010(\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u00101\u001a\u0004\bp\u00103\"\u0004\bq\u00105R\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u00101\u001a\u0004\bs\u00103\"\u0004\bt\u00105¨\u0006w"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderShapeData;", "", "", "component1", "component2", "component3", "component4", "Landroid/graphics/RectF;", "component5", "Landroid/graphics/Matrix;", "component6", "", "component7", "component8", "", "component9", "", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "id", "objectId", "layerId", NotificationCompat.CarExtender.f4973i, "bounds", "matrix", ApiBroadCastReceiver.ARGS_STROKE_COLOR, CouchFieldKey.KEY_FILL_COLOR, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "strokeDashArray", "strokeDashPhase", "strokeWavyLength", "strokeWavyPeak", "lineArrowDirection", CouchFieldKey.KEY_RESOURCE_ID, "extraAttr", "customAttr", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "b", "getObjectId", "setObjectId", "c", "getLayerId", "setLayerId", "d", "getAuthor", "setAuthor", "e", "Landroid/graphics/RectF;", "getBounds", "()Landroid/graphics/RectF;", "setBounds", "(Landroid/graphics/RectF;)V", C6997f.f39671c, "Landroid/graphics/Matrix;", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", C6998g.f39679a, "I", "getStrokeColor", "()I", "setStrokeColor", "(I)V", C6999h.f39688c, "getFillColor", "setFillColor", "i", "F", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", "j", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TYPES_INDEX_SIG, "getStrokeDashArray", "()[I", "setStrokeDashArray", "([I)V", C4921e.f26537n, "getStrokeDashPhase", "setStrokeDashPhase", "l", "getStrokeWavyLength", "setStrokeWavyLength", "m", "getStrokeWavyPeak", "setStrokeWavyPeak", GoogleApiAvailabilityLight.f29016b, "getLineArrowDirection", "setLineArrowDirection", C4921e.f26528e, "getResourceId", "setResourceId", "p", "getExtraAttr", "setExtraAttr", "q", "getCustomAttr", "setCustomAttr", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Matrix;IIF[IIFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderShapeData {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String id;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String objectId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String layerId;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String author;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF bounds;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public Matrix matrix;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public int strokeColor;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public int fillColor;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public float strokeWidth;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    @Nullable
    public int[] strokeDashArray;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    public int strokeDashPhase;

    /* renamed from: l, reason: from kotlin metadata and from toString */
    public float strokeWavyLength;

    /* renamed from: m, reason: from kotlin metadata and from toString */
    public float strokeWavyPeak;

    /* renamed from: n, reason: from kotlin metadata and from toString */
    public int lineArrowDirection;

    /* renamed from: o, reason: from kotlin metadata and from toString */
    @NotNull
    public String resourceId;

    /* renamed from: p, reason: from kotlin metadata and from toString */
    @NotNull
    public String extraAttr;

    /* renamed from: q, reason: from kotlin metadata and from toString */
    @NotNull
    public String customAttr;

    public ReaderShapeData() {
        this(null, null, null, null, null, null, 0, 0, 0.0f, null, 0, 0.0f, 0.0f, 0, null, null, null, 131071, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @Nullable
    /* renamed from: component10, reason: from getter */
    public final int[] getStrokeDashArray() {
        return this.strokeDashArray;
    }

    /* renamed from: component11, reason: from getter */
    public final int getStrokeDashPhase() {
        return this.strokeDashPhase;
    }

    /* renamed from: component12, reason: from getter */
    public final float getStrokeWavyLength() {
        return this.strokeWavyLength;
    }

    /* renamed from: component13, reason: from getter */
    public final float getStrokeWavyPeak() {
        return this.strokeWavyPeak;
    }

    /* renamed from: component14, reason: from getter */
    public final int getLineArrowDirection() {
        return this.lineArrowDirection;
    }

    @NotNull
    /* renamed from: component15, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    @NotNull
    /* renamed from: component16, reason: from getter */
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    @NotNull
    /* renamed from: component17, reason: from getter */
    public final String getCustomAttr() {
        return this.customAttr;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getObjectId() {
        return this.objectId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getLayerId() {
        return this.layerId;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final RectF getBounds() {
        return this.bounds;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final Matrix getMatrix() {
        return this.matrix;
    }

    /* renamed from: component7, reason: from getter */
    public final int getStrokeColor() {
        return this.strokeColor;
    }

    /* renamed from: component8, reason: from getter */
    public final int getFillColor() {
        return this.fillColor;
    }

    /* renamed from: component9, reason: from getter */
    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    @NotNull
    public final ReaderShapeData copy(@NotNull String id, @NotNull String objectId, @NotNull String layerId, @NotNull String author, @NotNull RectF bounds, @NotNull Matrix matrix, int strokeColor, int fillColor, float strokeWidth, @Nullable int[] strokeDashArray, int strokeDashPhase, float strokeWavyLength, float strokeWavyPeak, int lineArrowDirection, @NotNull String resourceId, @NotNull String extraAttr, @NotNull String customAttr) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(objectId, "objectId");
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        Intrinsics.checkNotNullParameter(customAttr, "customAttr");
        return new ReaderShapeData(id, objectId, layerId, author, bounds, matrix, strokeColor, fillColor, strokeWidth, strokeDashArray, strokeDashPhase, strokeWavyLength, strokeWavyPeak, lineArrowDirection, resourceId, extraAttr, customAttr);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderShapeData)) {
            return false;
        }
        ReaderShapeData readerShapeData = (ReaderShapeData) other;
        return Intrinsics.areEqual(this.id, readerShapeData.id) && Intrinsics.areEqual(this.objectId, readerShapeData.objectId) && Intrinsics.areEqual(this.layerId, readerShapeData.layerId) && Intrinsics.areEqual(this.author, readerShapeData.author) && Intrinsics.areEqual(this.bounds, readerShapeData.bounds) && Intrinsics.areEqual(this.matrix, readerShapeData.matrix) && this.strokeColor == readerShapeData.strokeColor && this.fillColor == readerShapeData.fillColor && Float.compare(this.strokeWidth, readerShapeData.strokeWidth) == 0 && Intrinsics.areEqual(this.strokeDashArray, readerShapeData.strokeDashArray) && this.strokeDashPhase == readerShapeData.strokeDashPhase && Float.compare(this.strokeWavyLength, readerShapeData.strokeWavyLength) == 0 && Float.compare(this.strokeWavyPeak, readerShapeData.strokeWavyPeak) == 0 && this.lineArrowDirection == readerShapeData.lineArrowDirection && Intrinsics.areEqual(this.resourceId, readerShapeData.resourceId) && Intrinsics.areEqual(this.extraAttr, readerShapeData.extraAttr) && Intrinsics.areEqual(this.customAttr, readerShapeData.customAttr);
    }

    @NotNull
    public final String getAuthor() {
        return this.author;
    }

    @NotNull
    public final RectF getBounds() {
        return this.bounds;
    }

    @NotNull
    public final String getCustomAttr() {
        return this.customAttr;
    }

    @NotNull
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getLayerId() {
        return this.layerId;
    }

    public final int getLineArrowDirection() {
        return this.lineArrowDirection;
    }

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    public final String getObjectId() {
        return this.objectId;
    }

    @NotNull
    public final String getResourceId() {
        return this.resourceId;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    @Nullable
    public final int[] getStrokeDashArray() {
        return this.strokeDashArray;
    }

    public final int getStrokeDashPhase() {
        return this.strokeDashPhase;
    }

    public final float getStrokeWavyLength() {
        return this.strokeWavyLength;
    }

    public final float getStrokeWavyPeak() {
        return this.strokeWavyPeak;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((this.id.hashCode() * 31) + this.objectId.hashCode()) * 31) + this.layerId.hashCode()) * 31) + this.author.hashCode()) * 31) + this.bounds.hashCode()) * 31) + this.matrix.hashCode()) * 31) + Integer.hashCode(this.strokeColor)) * 31) + Integer.hashCode(this.fillColor)) * 31) + Float.hashCode(this.strokeWidth)) * 31;
        int[] iArr = this.strokeDashArray;
        return ((((((((((((((hashCode + (iArr == null ? 0 : Arrays.hashCode(iArr))) * 31) + Integer.hashCode(this.strokeDashPhase)) * 31) + Float.hashCode(this.strokeWavyLength)) * 31) + Float.hashCode(this.strokeWavyPeak)) * 31) + Integer.hashCode(this.lineArrowDirection)) * 31) + this.resourceId.hashCode()) * 31) + this.extraAttr.hashCode()) * 31) + this.customAttr.hashCode();
    }

    public final void setAuthor(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.author = str;
    }

    public final void setBounds(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.bounds = rectF;
    }

    public final void setCustomAttr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.customAttr = str;
    }

    public final void setExtraAttr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.extraAttr = str;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setLayerId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.layerId = str;
    }

    public final void setLineArrowDirection(int i) {
        this.lineArrowDirection = i;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.matrix = matrix;
    }

    public final void setObjectId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.objectId = str;
    }

    public final void setResourceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceId = str;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public final void setStrokeDashArray(@Nullable int[] iArr) {
        this.strokeDashArray = iArr;
    }

    public final void setStrokeDashPhase(int i) {
        this.strokeDashPhase = i;
    }

    public final void setStrokeWavyLength(float f) {
        this.strokeWavyLength = f;
    }

    public final void setStrokeWavyPeak(float f) {
        this.strokeWavyPeak = f;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    @NotNull
    public String toString() {
        return "ReaderShapeData(id=" + this.id + ", objectId=" + this.objectId + ", layerId=" + this.layerId + ", author=" + this.author + ", bounds=" + this.bounds + ", matrix=" + this.matrix + ", strokeColor=" + this.strokeColor + ", fillColor=" + this.fillColor + ", strokeWidth=" + this.strokeWidth + ", strokeDashArray=" + Arrays.toString(this.strokeDashArray) + ", strokeDashPhase=" + this.strokeDashPhase + ", strokeWavyLength=" + this.strokeWavyLength + ", strokeWavyPeak=" + this.strokeWavyPeak + ", lineArrowDirection=" + this.lineArrowDirection + ", resourceId=" + this.resourceId + ", extraAttr=" + this.extraAttr + ", customAttr=" + this.customAttr + ')';
    }

    public ReaderShapeData(@NotNull String id, @NotNull String objectId, @NotNull String layerId, @NotNull String author, @NotNull RectF bounds, @NotNull Matrix matrix, int i, int i2, float f, @Nullable int[] iArr, int i3, float f2, float f3, int i4, @NotNull String resourceId, @NotNull String extraAttr, @NotNull String customAttr) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(objectId, "objectId");
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        Intrinsics.checkNotNullParameter(customAttr, "customAttr");
        this.id = id;
        this.objectId = objectId;
        this.layerId = layerId;
        this.author = author;
        this.bounds = bounds;
        this.matrix = matrix;
        this.strokeColor = i;
        this.fillColor = i2;
        this.strokeWidth = f;
        this.strokeDashArray = iArr;
        this.strokeDashPhase = i3;
        this.strokeWavyLength = f2;
        this.strokeWavyPeak = f3;
        this.lineArrowDirection = i4;
        this.resourceId = resourceId;
        this.extraAttr = extraAttr;
        this.customAttr = customAttr;
    }

    public /* synthetic */ ReaderShapeData(String str, String str2, String str3, String str4, RectF rectF, Matrix matrix, int i, int i2, float f, int[] iArr, int i3, float f2, float f3, int i4, String str5, String str6, String str7, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? "" : str, (i5 & 2) != 0 ? "" : str2, (i5 & 4) != 0 ? "" : str3, (i5 & 8) != 0 ? "" : str4, (i5 & 16) != 0 ? new RectF() : rectF, (i5 & 32) != 0 ? new Matrix() : matrix, (i5 & 64) != 0 ? 0 : i, (i5 & 128) != 0 ? 0 : i2, (i5 & 256) != 0 ? 0.0f : f, (i5 & 512) != 0 ? null : iArr, (i5 & 1024) != 0 ? 0 : i3, (i5 & 2048) != 0 ? 24.0f : f2, (i5 & 4096) != 0 ? 6.0f : f3, (i5 & 8192) != 0 ? 0 : i4, (i5 & 16384) != 0 ? "" : str5, (i5 & 32768) != 0 ? "" : str6, (i5 & 65536) != 0 ? "" : str7);
    }
}
