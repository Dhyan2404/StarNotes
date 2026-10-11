package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006J\b\u0010\n\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0014\u001a\u00020\rH\u0016R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;", "", "", "getPageUniqueId", CouchFieldKey.KEY_PAGE_ID, "setPageUniqueId", "", "getMatrix", "matrix", "setMatrix", "getRenderMode", "renderMode", "setRenderMode", "", "getLayerId", "layerId", "setLayerId", Constants.ATTRVAL_OTHER, "", "equals", "hashCode", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "b", "[F", "c", "d", "I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RendererPageInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String pageUniqueId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public float[] matrix;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String renderMode;

    /* renamed from: d, reason: from kotlin metadata */
    public int layerId;

    public boolean equals(@Nullable Object other) {
        if (!(other instanceof RendererPageInfo)) {
            return false;
        }
        RendererPageInfo rendererPageInfo = (RendererPageInfo) other;
        return StringUtils.equals(rendererPageInfo.pageUniqueId, this.pageUniqueId) && MatrixKt.safelyEquals(rendererPageInfo.matrix, this.matrix) && rendererPageInfo.layerId == this.layerId && StringUtils.equals(rendererPageInfo.renderMode, this.renderMode);
    }

    public final int getLayerId() {
        return this.layerId;
    }

    @Nullable
    public final float[] getMatrix() {
        return this.matrix;
    }

    @Nullable
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Nullable
    public final String getRenderMode() {
        return this.renderMode;
    }

    public int hashCode() {
        String str = this.pageUniqueId;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        float[] fArr = this.matrix;
        int hashCode2 = (hashCode + (fArr != null ? Arrays.hashCode(fArr) : 0)) * 31;
        String str2 = this.renderMode;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.layerId;
    }

    @NotNull
    public final RendererPageInfo setLayerId(int layerId) {
        this.layerId = layerId;
        return this;
    }

    @NotNull
    public final RendererPageInfo setMatrix(@NotNull float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.matrix = matrix;
        return this;
    }

    @NotNull
    public final RendererPageInfo setPageUniqueId(@Nullable String pageUniqueId) {
        this.pageUniqueId = pageUniqueId;
        return this;
    }

    @NotNull
    public final RendererPageInfo setRenderMode(@Nullable String renderMode) {
        this.renderMode = renderMode;
        return this;
    }
}
