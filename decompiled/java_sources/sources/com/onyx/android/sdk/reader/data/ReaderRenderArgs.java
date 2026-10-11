package com.onyx.android.sdk.reader.data;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b*\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\t\u0012\b\b\u0002\u0010\u0015\u001a\u00020\r¢\u0006\u0004\bS\u0010TJ\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\u000b\u001a\u00020\u0004HÆ\u0003J\t\u0010\f\u001a\u00020\tHÆ\u0003J\t\u0010\u000e\u001a\u00020\rHÆ\u0003JO\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00072\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\t2\b\b\u0002\u0010\u0015\u001a\u00020\rHÆ\u0001J\t\u0010\u0017\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0018HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\u001f\"\u0004\b\"\u0010#R\"\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u001d\u001a\u0004\b1\u0010\u001f\"\u0004\b2\u0010#R\"\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010+\u001a\u0004\b4\u0010-\"\u0004\b5\u0010/R\"\u0010\u0015\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010B\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR(\u0010K\u001a\b\u0012\u0004\u0012\u00020D0C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010R\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010Q¨\u0006U"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "", "", "isNeedRender", "", "component1", "component2", "", "component3", "Landroid/graphics/RectF;", "component4", "component5", "component6", "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "component7", "virtualPageId", "path", "scale", "displayRectF", "position", "pageRect", "renderBackgroundArgs", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getVirtualPageId", "()Ljava/lang/String;", "b", "getPath", "setPath", "(Ljava/lang/String;)V", "c", "F", "getScale", "()F", "setScale", "(F)V", "d", "Landroid/graphics/RectF;", "getDisplayRectF", "()Landroid/graphics/RectF;", "setDisplayRectF", "(Landroid/graphics/RectF;)V", "e", "getPosition", "setPosition", C6997f.f39671c, "getPageRect", "setPageRect", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "getRenderBackgroundArgs", "()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "setRenderBackgroundArgs", "(Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V", C6999h.f39688c, "Ljava/lang/Float;", "getMaxScale", "()Ljava/lang/Float;", "setMaxScale", "(Ljava/lang/Float;)V", "maxScale", "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "i", "Ljava/util/List;", "getSliceInfoList", "()Ljava/util/List;", "setSliceInfoList", "(Ljava/util/List;)V", "sliceInfoList", "j", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getEnableDiskCache", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setEnableDiskCache", "(Z)V", "enableDiskCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderRenderArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String virtualPageId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String path;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public float scale;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF displayRectF;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public String position;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public RectF pageRect;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public RenderBackgroundArgs renderBackgroundArgs;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Float maxScale;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<SliceInfo> sliceInfoList;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean enableDiskCache;

    public ReaderRenderArgs() {
        this(null, null, 0.0f, null, null, null, null, 127, null);
    }

    public static /* synthetic */ ReaderRenderArgs copy$default(ReaderRenderArgs readerRenderArgs, String str, String str2, float f, RectF rectF, String str3, RectF rectF2, RenderBackgroundArgs renderBackgroundArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerRenderArgs.virtualPageId;
        }
        if ((i & 2) != 0) {
            str2 = readerRenderArgs.path;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            f = readerRenderArgs.scale;
        }
        float f2 = f;
        if ((i & 8) != 0) {
            rectF = readerRenderArgs.displayRectF;
        }
        RectF rectF3 = rectF;
        if ((i & 16) != 0) {
            str3 = readerRenderArgs.position;
        }
        String str5 = str3;
        if ((i & 32) != 0) {
            rectF2 = readerRenderArgs.pageRect;
        }
        RectF rectF4 = rectF2;
        if ((i & 64) != 0) {
            renderBackgroundArgs = readerRenderArgs.renderBackgroundArgs;
        }
        return readerRenderArgs.copy(str, str4, f2, rectF3, str5, rectF4, renderBackgroundArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getVirtualPageId() {
        return this.virtualPageId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* renamed from: component3, reason: from getter */
    public final float getScale() {
        return this.scale;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final RectF getDisplayRectF() {
        return this.displayRectF;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getPosition() {
        return this.position;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final RenderBackgroundArgs getRenderBackgroundArgs() {
        return this.renderBackgroundArgs;
    }

    @NotNull
    public final ReaderRenderArgs copy(@NotNull String virtualPageId, @NotNull String path, float scale, @NotNull RectF displayRectF, @NotNull String position, @NotNull RectF pageRect, @NotNull RenderBackgroundArgs renderBackgroundArgs) {
        Intrinsics.checkNotNullParameter(virtualPageId, "virtualPageId");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(renderBackgroundArgs, "renderBackgroundArgs");
        return new ReaderRenderArgs(virtualPageId, path, scale, displayRectF, position, pageRect, renderBackgroundArgs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderRenderArgs)) {
            return false;
        }
        ReaderRenderArgs readerRenderArgs = (ReaderRenderArgs) other;
        return Intrinsics.areEqual(this.virtualPageId, readerRenderArgs.virtualPageId) && Intrinsics.areEqual(this.path, readerRenderArgs.path) && Float.compare(this.scale, readerRenderArgs.scale) == 0 && Intrinsics.areEqual(this.displayRectF, readerRenderArgs.displayRectF) && Intrinsics.areEqual(this.position, readerRenderArgs.position) && Intrinsics.areEqual(this.pageRect, readerRenderArgs.pageRect) && Intrinsics.areEqual(this.renderBackgroundArgs, readerRenderArgs.renderBackgroundArgs);
    }

    @NotNull
    public final RectF getDisplayRectF() {
        return this.displayRectF;
    }

    public final boolean getEnableDiskCache() {
        return this.enableDiskCache;
    }

    @Nullable
    public final Float getMaxScale() {
        return this.maxScale;
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

    @NotNull
    public final RenderBackgroundArgs getRenderBackgroundArgs() {
        return this.renderBackgroundArgs;
    }

    public final float getScale() {
        return this.scale;
    }

    @NotNull
    public final List<SliceInfo> getSliceInfoList() {
        return this.sliceInfoList;
    }

    @NotNull
    public final String getVirtualPageId() {
        return this.virtualPageId;
    }

    public int hashCode() {
        return (((((((((((this.virtualPageId.hashCode() * 31) + this.path.hashCode()) * 31) + Float.hashCode(this.scale)) * 31) + this.displayRectF.hashCode()) * 31) + this.position.hashCode()) * 31) + this.pageRect.hashCode()) * 31) + this.renderBackgroundArgs.hashCode();
    }

    public final boolean isNeedRender() {
        return !this.sliceInfoList.isEmpty();
    }

    public final void setDisplayRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.displayRectF = rectF;
    }

    public final void setEnableDiskCache(boolean z) {
        this.enableDiskCache = z;
    }

    public final void setMaxScale(@Nullable Float f) {
        this.maxScale = f;
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

    public final void setRenderBackgroundArgs(@NotNull RenderBackgroundArgs renderBackgroundArgs) {
        Intrinsics.checkNotNullParameter(renderBackgroundArgs, "<set-?>");
        this.renderBackgroundArgs = renderBackgroundArgs;
    }

    public final void setScale(float f) {
        this.scale = f;
    }

    public final void setSliceInfoList(@NotNull List<SliceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.sliceInfoList = list;
    }

    @NotNull
    public String toString() {
        return "ReaderRenderArgs(virtualPageId=" + this.virtualPageId + ", path=" + this.path + ", scale=" + this.scale + ", displayRectF=" + this.displayRectF + ", position=" + this.position + ", pageRect=" + this.pageRect + ", renderBackgroundArgs=" + this.renderBackgroundArgs + ')';
    }

    public ReaderRenderArgs(@NotNull String virtualPageId, @NotNull String path, float f, @NotNull RectF displayRectF, @NotNull String position, @NotNull RectF pageRect, @NotNull RenderBackgroundArgs renderBackgroundArgs) {
        Intrinsics.checkNotNullParameter(virtualPageId, "virtualPageId");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(displayRectF, "displayRectF");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(renderBackgroundArgs, "renderBackgroundArgs");
        this.virtualPageId = virtualPageId;
        this.path = path;
        this.scale = f;
        this.displayRectF = displayRectF;
        this.position = position;
        this.pageRect = pageRect;
        this.renderBackgroundArgs = renderBackgroundArgs;
        this.sliceInfoList = new ArrayList();
    }

    public /* synthetic */ ReaderRenderArgs(String str, String str2, float f, RectF rectF, String str3, RectF rectF2, RenderBackgroundArgs renderBackgroundArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 1.0f : f, (i & 8) != 0 ? new RectF() : rectF, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? new RectF() : rectF2, (i & 64) != 0 ? new RenderBackgroundArgs(0, null, 3, null) : renderBackgroundArgs);
    }
}
