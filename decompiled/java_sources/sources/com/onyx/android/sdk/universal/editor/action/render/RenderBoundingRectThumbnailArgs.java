package com.onyx.android.sdk.universal.editor.action.render;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\r\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;", "", "", "component1", "component2", "", "component3", "renderTemplate", "renderTape", "layerId", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getRenderTemplate", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "b", "getRenderTape", "c", "I", "getLayerId", "()I", "setLayerId", "(I)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZZI)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RenderBoundingRectThumbnailArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final boolean renderTemplate;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean renderTape;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public int layerId;

    public RenderBoundingRectThumbnailArgs() {
        this(false, false, 0, 7, null);
    }

    public static /* synthetic */ RenderBoundingRectThumbnailArgs copy$default(RenderBoundingRectThumbnailArgs renderBoundingRectThumbnailArgs, boolean z, boolean z2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = renderBoundingRectThumbnailArgs.renderTemplate;
        }
        if ((i2 & 2) != 0) {
            z2 = renderBoundingRectThumbnailArgs.renderTape;
        }
        if ((i2 & 4) != 0) {
            i = renderBoundingRectThumbnailArgs.layerId;
        }
        return renderBoundingRectThumbnailArgs.copy(z, z2, i);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getRenderTape() {
        return this.renderTape;
    }

    /* renamed from: component3, reason: from getter */
    public final int getLayerId() {
        return this.layerId;
    }

    @NotNull
    public final RenderBoundingRectThumbnailArgs copy(boolean renderTemplate, boolean renderTape, int layerId) {
        return new RenderBoundingRectThumbnailArgs(renderTemplate, renderTape, layerId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderBoundingRectThumbnailArgs)) {
            return false;
        }
        RenderBoundingRectThumbnailArgs renderBoundingRectThumbnailArgs = (RenderBoundingRectThumbnailArgs) other;
        return this.renderTemplate == renderBoundingRectThumbnailArgs.renderTemplate && this.renderTape == renderBoundingRectThumbnailArgs.renderTape && this.layerId == renderBoundingRectThumbnailArgs.layerId;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z = this.renderTemplate;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.renderTape;
        return ((i + (z2 ? 1 : z2 ? 1 : 0)) * 31) + Integer.hashCode(this.layerId);
    }

    public final void setLayerId(int i) {
        this.layerId = i;
    }

    @NotNull
    public String toString() {
        return "RenderBoundingRectThumbnailArgs(renderTemplate=" + this.renderTemplate + ", renderTape=" + this.renderTape + ", layerId=" + this.layerId + ')';
    }

    public RenderBoundingRectThumbnailArgs(boolean z, boolean z2, int i) {
        this.renderTemplate = z;
        this.renderTape = z2;
        this.layerId = i;
    }

    public /* synthetic */ RenderBoundingRectThumbnailArgs(boolean z, boolean z2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? -1 : i);
    }
}
