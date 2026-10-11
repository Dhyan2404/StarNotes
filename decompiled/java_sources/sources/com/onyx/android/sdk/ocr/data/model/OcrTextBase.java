package com.onyx.android.sdk.ocr.data.model;

import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R(\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;", "", "", "toString", "a", Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "text", "", "b", "F", "getAngle", "()F", "setAngle", "(F)V", "angle", "c", "getConfidence", "setConfidence", "confidence", "", "Landroid/graphics/PointF;", "d", "Ljava/util/List;", "getCornerPoints", "()Ljava/util/List;", "setCornerPoints", "(Ljava/util/List;)V", "cornerPoints", "Landroid/graphics/RectF;", "e", "Landroid/graphics/RectF;", "getBoundingBox", "()Landroid/graphics/RectF;", "setBoundingBox", "(Landroid/graphics/RectF;)V", "boundingBox", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class OcrTextBase {

    /* renamed from: b, reason: from kotlin metadata */
    public float angle;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String text = "";

    /* renamed from: c, reason: from kotlin metadata */
    public float confidence = 1.0f;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public transient List<PointF> cornerPoints = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public transient RectF boundingBox = new RectF();

    public final float getAngle() {
        return this.angle;
    }

    @NotNull
    public final RectF getBoundingBox() {
        return this.boundingBox;
    }

    public final float getConfidence() {
        return this.confidence;
    }

    @NotNull
    public final List<PointF> getCornerPoints() {
        return this.cornerPoints;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final void setAngle(float f) {
        this.angle = f;
    }

    public final void setBoundingBox(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.boundingBox = rectF;
    }

    public final void setConfidence(float f) {
        this.confidence = f;
    }

    public final void setCornerPoints(@NotNull List<PointF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.cornerPoints = list;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    @NotNull
    public String toString() {
        return JSONUtils.INSTANCE.asPrettyJson(this);
    }
}
