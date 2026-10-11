package com.onyx.android.sdk.note.common.data.excerpt;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b:\u0010;R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010)\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "", "", "a", Constants.STRING_SIG, "getSourceDocId", "()Ljava/lang/String;", "setSourceDocId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_SOURCE_DOC_ID, "b", "getSourceShapeId", "setSourceShapeId", CouchFieldKey.KEY_SOURCE_SHAPE_ID, "c", "getSourceExcerptQuote", "setSourceExcerptQuote", "sourceExcerptQuote", "Landroid/graphics/RectF;", "d", "Landroid/graphics/RectF;", "getSourceExcerptQuoteIndicatorAnchorRect", "()Landroid/graphics/RectF;", "setSourceExcerptQuoteIndicatorAnchorRect", "(Landroid/graphics/RectF;)V", "sourceExcerptQuoteIndicatorAnchorRect", "e", "getSourceImgPath", "setSourceImgPath", "sourceImgPath", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getDownPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setDownPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "downPoint", C6998g.f39679a, "getSourceRectF", "setSourceRectF", "sourceRectF", "", C6999h.f39688c, "I", "getSourceType", "()I", "setSourceType", "(I)V", "sourceType", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveExcerptCollectionArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String sourceDocId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String sourceShapeId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String sourceExcerptQuote = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF sourceExcerptQuoteIndicatorAnchorRect = new RectF();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String sourceImgPath = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public TouchPoint downPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RectF sourceRectF = new RectF();

    /* renamed from: h, reason: from kotlin metadata */
    public int sourceType;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualPageBoxInfo;

    @NotNull
    public final TouchPoint getDownPoint() {
        return this.downPoint;
    }

    @NotNull
    public final String getSourceDocId() {
        return this.sourceDocId;
    }

    @NotNull
    public final String getSourceExcerptQuote() {
        return this.sourceExcerptQuote;
    }

    @NotNull
    public final RectF getSourceExcerptQuoteIndicatorAnchorRect() {
        return this.sourceExcerptQuoteIndicatorAnchorRect;
    }

    @NotNull
    public final String getSourceImgPath() {
        return this.sourceImgPath;
    }

    @NotNull
    public final RectF getSourceRectF() {
        return this.sourceRectF;
    }

    @NotNull
    public final String getSourceShapeId() {
        return this.sourceShapeId;
    }

    public final int getSourceType() {
        return this.sourceType;
    }

    @Nullable
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setDownPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.downPoint = touchPoint;
    }

    public final void setSourceDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceDocId = str;
    }

    public final void setSourceExcerptQuote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceExcerptQuote = str;
    }

    public final void setSourceExcerptQuoteIndicatorAnchorRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.sourceExcerptQuoteIndicatorAnchorRect = rectF;
    }

    public final void setSourceImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceImgPath = str;
    }

    public final void setSourceRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.sourceRectF = rectF;
    }

    public final void setSourceShapeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceShapeId = str;
    }

    public final void setSourceType(int i) {
        this.sourceType = i;
    }

    public final void setVirtualPageBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualPageBoxInfo = boxInfo;
    }
}
