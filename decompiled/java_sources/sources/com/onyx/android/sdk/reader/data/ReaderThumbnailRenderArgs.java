package com.onyx.android.sdk.reader.data;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b+\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\bE\u0010FJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0002HÆ\u0003J\t\u0010\t\u001a\u00020\u0006HÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010\u000e\u001a\u00020\u0004HÆ\u0003J[\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u0016\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0018\u001a\u00020\u0002HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0019HÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010\u0011\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u001f\u001a\u0004\b1\u0010!\"\u0004\b2\u0010#R\"\u0010\u0013\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010+\u001a\u0004\b4\u0010-\"\u0004\b5\u0010/R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010\u0016\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010%\u001a\u0004\bC\u0010'\"\u0004\bD\u0010)¨\u0006G"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;", "", "", "component1", "", "component2", "Landroid/graphics/RectF;", "component3", "component4", "component5", "Landroid/graphics/Bitmap;", "component6", "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "component7", "component8", "path", "scale", "displayRectF", "position", "pageRect", "bitmap", "renderBackgroundArgs", "rotation", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "b", "F", "getScale", "()F", "setScale", "(F)V", "c", "Landroid/graphics/RectF;", "getDisplayRectF", "()Landroid/graphics/RectF;", "setDisplayRectF", "(Landroid/graphics/RectF;)V", "d", "getPosition", "setPosition", "e", "getPageRect", "setPageRect", C6997f.f39671c, "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "getRenderBackgroundArgs", "()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "setRenderBackgroundArgs", "(Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V", C6999h.f39688c, "getRotation", "setRotation", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderThumbnailRenderArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String path;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float scale;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF displayRectF;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String position;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF pageRect;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public Bitmap bitmap;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @Nullable
    public RenderBackgroundArgs renderBackgroundArgs;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public float rotation;

    public ReaderThumbnailRenderArgs(@NotNull String path, float f, @NotNull RectF displayRectF, @NotNull String position, @NotNull RectF pageRect, @NotNull Bitmap bitmap, @Nullable RenderBackgroundArgs renderBackgroundArgs, float f2) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.path = path;
        this.scale = f;
        this.displayRectF = displayRectF;
        this.position = position;
        this.pageRect = pageRect;
        this.bitmap = bitmap;
        this.renderBackgroundArgs = renderBackgroundArgs;
        this.rotation = f2;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* renamed from: component2, reason: from getter */
    public final float getScale() {
        return this.scale;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final RectF getDisplayRectF() {
        return this.displayRectF;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getPosition() {
        return this.position;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final RenderBackgroundArgs getRenderBackgroundArgs() {
        return this.renderBackgroundArgs;
    }

    /* renamed from: component8, reason: from getter */
    public final float getRotation() {
        return this.rotation;
    }

    @NotNull
    public final ReaderThumbnailRenderArgs copy(@NotNull String path, float scale, @NotNull RectF displayRectF, @NotNull String position, @NotNull RectF pageRect, @NotNull Bitmap bitmap, @Nullable RenderBackgroundArgs renderBackgroundArgs, float rotation) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return new ReaderThumbnailRenderArgs(path, scale, displayRectF, position, pageRect, bitmap, renderBackgroundArgs, rotation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderThumbnailRenderArgs)) {
            return false;
        }
        ReaderThumbnailRenderArgs readerThumbnailRenderArgs = (ReaderThumbnailRenderArgs) other;
        return Intrinsics.areEqual(this.path, readerThumbnailRenderArgs.path) && Float.compare(this.scale, readerThumbnailRenderArgs.scale) == 0 && Intrinsics.areEqual(this.displayRectF, readerThumbnailRenderArgs.displayRectF) && Intrinsics.areEqual(this.position, readerThumbnailRenderArgs.position) && Intrinsics.areEqual(this.pageRect, readerThumbnailRenderArgs.pageRect) && Intrinsics.areEqual(this.bitmap, readerThumbnailRenderArgs.bitmap) && Intrinsics.areEqual(this.renderBackgroundArgs, readerThumbnailRenderArgs.renderBackgroundArgs) && Float.compare(this.rotation, readerThumbnailRenderArgs.rotation) == 0;
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final RectF getDisplayRectF() {
        return this.displayRectF;
    }

    @NotNull
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final String getPosition() {
        return this.position;
    }

    @Nullable
    public final RenderBackgroundArgs getRenderBackgroundArgs() {
        return this.renderBackgroundArgs;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final float getScale() {
        return this.scale;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.path.hashCode() * 31) + Float.hashCode(this.scale)) * 31) + this.displayRectF.hashCode()) * 31) + this.position.hashCode()) * 31) + this.pageRect.hashCode()) * 31) + this.bitmap.hashCode()) * 31;
        RenderBackgroundArgs renderBackgroundArgs = this.renderBackgroundArgs;
        return ((hashCode + (renderBackgroundArgs == null ? 0 : renderBackgroundArgs.hashCode())) * 31) + Float.hashCode(this.rotation);
    }

    public final void setBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<set-?>");
        this.bitmap = bitmap;
    }

    public final void setDisplayRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.displayRectF = rectF;
    }

    public final void setPageRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageRect = rectF;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setPosition(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.position = str;
    }

    public final void setRenderBackgroundArgs(@Nullable RenderBackgroundArgs renderBackgroundArgs) {
        this.renderBackgroundArgs = renderBackgroundArgs;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    public final void setScale(float f) {
        this.scale = f;
    }

    @NotNull
    public String toString() {
        return "ReaderThumbnailRenderArgs(path=" + this.path + ", scale=" + this.scale + ", displayRectF=" + this.displayRectF + ", position=" + this.position + ", pageRect=" + this.pageRect + ", bitmap=" + this.bitmap + ", renderBackgroundArgs=" + this.renderBackgroundArgs + ", rotation=" + this.rotation + ')';
    }

    public /* synthetic */ ReaderThumbnailRenderArgs(String str, float f, RectF rectF, String str2, RectF rectF2, Bitmap bitmap, RenderBackgroundArgs renderBackgroundArgs, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 1.0f : f, (i & 4) != 0 ? new RectF() : rectF, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? new RectF() : rectF2, bitmap, (i & 64) != 0 ? null : renderBackgroundArgs, (i & 128) != 0 ? 0.0f : f2);
    }
}
