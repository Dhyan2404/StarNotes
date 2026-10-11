package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\u0006\u0010$\u001a\u00020\u0007J\u0006\u0010%\u001a\u00020&R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u000fR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;", "", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "pageDisplayRectF", "Landroid/graphics/RectF;", "enableVerifyId", "", "invalidate", "isFullPageRender", "isEnabledEnsureDisplay", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZ)V", "getEnableVerifyId", Constants.BOOLEAN_VALUE_SIG, "setEnableVerifyId", "(Z)V", "getInvalidate", "setInvalidate", "setEnabledEnsureDisplay", "isEnabledPrintFailLog", "setEnabledPrintFailLog", "setFullPageRender", "noteRenderArgs", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "getNoteRenderArgs", "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "setNoteRenderArgs", "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "getPageDisplayRectF", "()Landroid/graphics/RectF;", "setPageDisplayRectF", "(Landroid/graphics/RectF;)V", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "hasRenderInfo", "toDebugString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ForceRenderNoteDirtyArgs {
    private boolean enableVerifyId;
    private boolean invalidate;
    private boolean isEnabledEnsureDisplay;
    private boolean isEnabledPrintFailLog;
    private boolean isFullPageRender;

    @Nullable
    private NoteRenderArgs noteRenderArgs;

    @Nullable
    private RectF pageDisplayRectF;

    @NotNull
    private BoxInfo virtualPageBoxInfo;

    public ForceRenderNoteDirtyArgs(@NotNull BoxInfo virtualPageBoxInfo, @Nullable RectF rectF, boolean z, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.pageDisplayRectF = rectF;
        this.enableVerifyId = z;
        this.invalidate = z2;
        this.isFullPageRender = z3;
        this.isEnabledEnsureDisplay = z4;
        this.isEnabledPrintFailLog = true;
    }

    public final boolean getEnableVerifyId() {
        return this.enableVerifyId;
    }

    public final boolean getInvalidate() {
        return this.invalidate;
    }

    @Nullable
    public final NoteRenderArgs getNoteRenderArgs() {
        return this.noteRenderArgs;
    }

    @Nullable
    public final RectF getPageDisplayRectF() {
        return this.pageDisplayRectF;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final boolean hasRenderInfo() {
        NoteRenderArgs noteRenderArgs = this.noteRenderArgs;
        return noteRenderArgs != null && (noteRenderArgs.getSliceRenderInfoList().isEmpty() ^ true);
    }

    /* renamed from: isEnabledEnsureDisplay, reason: from getter */
    public final boolean getIsEnabledEnsureDisplay() {
        return this.isEnabledEnsureDisplay;
    }

    /* renamed from: isEnabledPrintFailLog, reason: from getter */
    public final boolean getIsEnabledPrintFailLog() {
        return this.isEnabledPrintFailLog;
    }

    /* renamed from: isFullPageRender, reason: from getter */
    public final boolean getIsFullPageRender() {
        return this.isFullPageRender;
    }

    public final void setEnableVerifyId(boolean z) {
        this.enableVerifyId = z;
    }

    public final void setEnabledEnsureDisplay(boolean z) {
        this.isEnabledEnsureDisplay = z;
    }

    public final void setEnabledPrintFailLog(boolean z) {
        this.isEnabledPrintFailLog = z;
    }

    public final void setFullPageRender(boolean z) {
        this.isFullPageRender = z;
    }

    public final void setInvalidate(boolean z) {
        this.invalidate = z;
    }

    public final void setNoteRenderArgs(@Nullable NoteRenderArgs noteRenderArgs) {
        this.noteRenderArgs = noteRenderArgs;
    }

    public final void setPageDisplayRectF(@Nullable RectF rectF) {
        this.pageDisplayRectF = rectF;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    @NotNull
    public final String toDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ForceRenderNoteDirtyArgs: virtualPage.id = ");
        sb.append(this.virtualPageBoxInfo.getId());
        sb.append("\n, noteId = ");
        BoxInfo noteInfo = this.virtualPageBoxInfo.getNoteInfo();
        sb.append(noteInfo != null ? noteInfo.getId() : null);
        sb.append("\n, virtualPage.visibleRect = ");
        sb.append(this.virtualPageBoxInfo.getVisibleRect());
        sb.append("\n, pageDisplayRectF = ");
        sb.append(this.pageDisplayRectF);
        sb.append("\n, enableVerifyId = ");
        sb.append(this.enableVerifyId);
        sb.append("\n, invalidate = ");
        sb.append(this.invalidate);
        sb.append("\n, isFullPageRender = ");
        sb.append(this.isFullPageRender);
        sb.append("\n, isEnabledEnsureDisplay = ");
        sb.append(this.isEnabledEnsureDisplay);
        sb.append('\n');
        return sb.toString();
    }

    public /* synthetic */ ForceRenderNoteDirtyArgs(BoxInfo boxInfo, RectF rectF, boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(boxInfo, (i & 2) != 0 ? null : rectF, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? true : z4);
    }
}
