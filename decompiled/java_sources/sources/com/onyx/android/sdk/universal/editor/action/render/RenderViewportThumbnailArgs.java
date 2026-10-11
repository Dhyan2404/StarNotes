package com.onyx.android.sdk.universal.editor.action.render;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.geometry.data.BoxManagerViewArgs;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b&\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b5\u00106J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J;\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\tHÆ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0013\u001a\u00020\tHÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b$\u0010!\u001a\u0004\b%\u0010#R\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u0010/\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u001b\u001a\u0004\b-\u0010\u001d\"\u0004\b.\u0010\u001fR\"\u00104\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010!\u001a\u0004\b1\u0010#\"\u0004\b2\u00103¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;", "", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "component1", "Lcom/onyx/android/sdk/base/data/Size;", "component2", "", "component3", "component4", "", "component5", "viewArgs", "thumbnailSize", "renderTemplate", "renderTape", "layerId", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "getViewArgs", "()Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "b", "Lcom/onyx/android/sdk/base/data/Size;", "getThumbnailSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setThumbnailSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getRenderTemplate", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "d", "getRenderTape", "e", "I", "getLayerId", "()I", "setLayerId", "(I)V", C6997f.f39671c, "getViewportBitmapSize", "setViewportBitmapSize", "viewportBitmapSize", C6998g.f39679a, "getScaleToThumbnailSize", "setScaleToThumbnailSize", "(Z)V", "scaleToThumbnailSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;Lcom/onyx/android/sdk/base/data/Size;ZZI)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RenderViewportThumbnailArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final BoxManagerViewArgs viewArgs;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public Size thumbnailSize;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean renderTemplate;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final boolean renderTape;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public int layerId;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Size viewportBitmapSize;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean scaleToThumbnailSize;

    public RenderViewportThumbnailArgs(@NotNull BoxManagerViewArgs viewArgs, @NotNull Size thumbnailSize, boolean z, boolean z2, int i) {
        Intrinsics.checkNotNullParameter(viewArgs, "viewArgs");
        Intrinsics.checkNotNullParameter(thumbnailSize, "thumbnailSize");
        this.viewArgs = viewArgs;
        this.thumbnailSize = thumbnailSize;
        this.renderTemplate = z;
        this.renderTape = z2;
        this.layerId = i;
        this.scaleToThumbnailSize = true;
    }

    public static /* synthetic */ RenderViewportThumbnailArgs copy$default(RenderViewportThumbnailArgs renderViewportThumbnailArgs, BoxManagerViewArgs boxManagerViewArgs, Size size, boolean z, boolean z2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            boxManagerViewArgs = renderViewportThumbnailArgs.viewArgs;
        }
        if ((i2 & 2) != 0) {
            size = renderViewportThumbnailArgs.thumbnailSize;
        }
        Size size2 = size;
        if ((i2 & 4) != 0) {
            z = renderViewportThumbnailArgs.renderTemplate;
        }
        boolean z3 = z;
        if ((i2 & 8) != 0) {
            z2 = renderViewportThumbnailArgs.renderTape;
        }
        boolean z4 = z2;
        if ((i2 & 16) != 0) {
            i = renderViewportThumbnailArgs.layerId;
        }
        return renderViewportThumbnailArgs.copy(boxManagerViewArgs, size2, z3, z4, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxManagerViewArgs getViewArgs() {
        return this.viewArgs;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final Size getThumbnailSize() {
        return this.thumbnailSize;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getRenderTape() {
        return this.renderTape;
    }

    /* renamed from: component5, reason: from getter */
    public final int getLayerId() {
        return this.layerId;
    }

    @NotNull
    public final RenderViewportThumbnailArgs copy(@NotNull BoxManagerViewArgs viewArgs, @NotNull Size thumbnailSize, boolean renderTemplate, boolean renderTape, int layerId) {
        Intrinsics.checkNotNullParameter(viewArgs, "viewArgs");
        Intrinsics.checkNotNullParameter(thumbnailSize, "thumbnailSize");
        return new RenderViewportThumbnailArgs(viewArgs, thumbnailSize, renderTemplate, renderTape, layerId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderViewportThumbnailArgs)) {
            return false;
        }
        RenderViewportThumbnailArgs renderViewportThumbnailArgs = (RenderViewportThumbnailArgs) other;
        return Intrinsics.areEqual(this.viewArgs, renderViewportThumbnailArgs.viewArgs) && Intrinsics.areEqual(this.thumbnailSize, renderViewportThumbnailArgs.thumbnailSize) && this.renderTemplate == renderViewportThumbnailArgs.renderTemplate && this.renderTape == renderViewportThumbnailArgs.renderTape && this.layerId == renderViewportThumbnailArgs.layerId;
    }

    public final int getLayerId() {
        return this.layerId;
    }

    public final boolean getRenderTape() {
        return this.renderTape;
    }

    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    public final boolean getScaleToThumbnailSize() {
        return this.scaleToThumbnailSize;
    }

    @NotNull
    public final Size getThumbnailSize() {
        return this.thumbnailSize;
    }

    @NotNull
    public final BoxManagerViewArgs getViewArgs() {
        return this.viewArgs;
    }

    @Nullable
    public final Size getViewportBitmapSize() {
        return this.viewportBitmapSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.viewArgs.hashCode() * 31) + this.thumbnailSize.hashCode()) * 31;
        boolean z = this.renderTemplate;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.renderTape;
        return ((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + Integer.hashCode(this.layerId);
    }

    public final void setLayerId(int i) {
        this.layerId = i;
    }

    public final void setScaleToThumbnailSize(boolean z) {
        this.scaleToThumbnailSize = z;
    }

    public final void setThumbnailSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.thumbnailSize = size;
    }

    public final void setViewportBitmapSize(@Nullable Size size) {
        this.viewportBitmapSize = size;
    }

    @NotNull
    public String toString() {
        return "RenderViewportThumbnailArgs(viewArgs=" + this.viewArgs + ", thumbnailSize=" + this.thumbnailSize + ", renderTemplate=" + this.renderTemplate + ", renderTape=" + this.renderTape + ", layerId=" + this.layerId + ')';
    }

    public /* synthetic */ RenderViewportThumbnailArgs(BoxManagerViewArgs boxManagerViewArgs, Size size, boolean z, boolean z2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(boxManagerViewArgs, (i2 & 2) != 0 ? AppConfig.INSTANCE.getDEFAULT_PAGE_THUMBNAIL_SIZE() : size, (i2 & 4) != 0 ? true : z, (i2 & 8) != 0 ? true : z2, (i2 & 16) != 0 ? -1 : i);
    }
}
