package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010'\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", "", "()V", "forceRenderNoteDirtyRectToDisplay", "", "getForceRenderNoteDirtyRectToDisplay", Constants.BOOLEAN_VALUE_SIG, "setForceRenderNoteDirtyRectToDisplay", "(Z)V", "hasBottomUnderContentShape", "getHasBottomUnderContentShape", "setHasBottomUnderContentShape", "hitTestSupportSingleTapShapeList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestSupportSingleTapShapeList", "()Ljava/util/List;", "setHitTestSupportSingleTapShapeList", "(Ljava/util/List;)V", "isSingleTap", "setSingleTap", "postShapeChangedEvent", "getPostShapeChangedEvent", "setPostShapeChangedEvent", "setZOrder", "getSetZOrder", "setSetZOrder", "undoRedoCommand", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "getUndoRedoCommand", "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "setUndoRedoCommand", "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "canAddShape", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AddShapesBackgroundResultBean {
    private boolean forceRenderNoteDirtyRectToDisplay;
    private boolean hasBottomUnderContentShape;
    private boolean isSingleTap;

    @Nullable
    private UndoRedoCommand undoRedoCommand;

    @Nullable
    private BoxInfo virtualPageBoxInfo;

    @NotNull
    private List<Shape> hitTestSupportSingleTapShapeList = new ArrayList();
    private boolean postShapeChangedEvent = true;
    private boolean setZOrder = true;

    public final boolean canAddShape() {
        return this.hitTestSupportSingleTapShapeList.isEmpty();
    }

    public final boolean getForceRenderNoteDirtyRectToDisplay() {
        return this.forceRenderNoteDirtyRectToDisplay;
    }

    public final boolean getHasBottomUnderContentShape() {
        return this.hasBottomUnderContentShape;
    }

    @NotNull
    public final List<Shape> getHitTestSupportSingleTapShapeList() {
        return this.hitTestSupportSingleTapShapeList;
    }

    public final boolean getPostShapeChangedEvent() {
        return this.postShapeChangedEvent;
    }

    public final boolean getSetZOrder() {
        return this.setZOrder;
    }

    @Nullable
    public final UndoRedoCommand getUndoRedoCommand() {
        return this.undoRedoCommand;
    }

    @Nullable
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    /* renamed from: isSingleTap, reason: from getter */
    public final boolean getIsSingleTap() {
        return this.isSingleTap;
    }

    public final void setForceRenderNoteDirtyRectToDisplay(boolean z) {
        this.forceRenderNoteDirtyRectToDisplay = z;
    }

    public final void setHasBottomUnderContentShape(boolean z) {
        this.hasBottomUnderContentShape = z;
    }

    public final void setHitTestSupportSingleTapShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.hitTestSupportSingleTapShapeList = list;
    }

    public final void setPostShapeChangedEvent(boolean z) {
        this.postShapeChangedEvent = z;
    }

    public final void setSetZOrder(boolean z) {
        this.setZOrder = z;
    }

    public final void setSingleTap(boolean z) {
        this.isSingleTap = z;
    }

    public final void setUndoRedoCommand(@Nullable UndoRedoCommand undoRedoCommand) {
        this.undoRedoCommand = undoRedoCommand;
    }

    public final void setVirtualPageBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualPageBoxInfo = boxInfo;
    }
}
