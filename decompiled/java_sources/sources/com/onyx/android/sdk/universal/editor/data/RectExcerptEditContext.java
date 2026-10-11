package com.onyx.android.sdk.universal.editor.data;

import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.SaveRectExcerptArgs;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.helper.SelectionManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;", "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;", "()V", "selectionManager", "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;", "getSelectionManager", "()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;", "setSelectionManager", "(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V", "getSaveEventArgs", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "boundingRect", "Landroid/graphics/RectF;", "getSelectionRect", "getTransformAction", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "isHitInside", "", "touchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", Constants.RESET, "", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RectExcerptEditContext extends BaseExcerptEditContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private SelectionManager selectionManager;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;", "virtualBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "args", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RectExcerptEditContext create(@NotNull BoxInfo virtualBoxInfo) {
            Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
            RectExcerptEditContext rectExcerptEditContext = new RectExcerptEditContext();
            rectExcerptEditContext.setVirtualBoxInfo(virtualBoxInfo);
            return rectExcerptEditContext;
        }

        private Companion() {
        }

        @NotNull
        public final RectExcerptEditContext create(@NotNull StartExcerptEditArgs args) {
            List<? extends Shape> listOf;
            Intrinsics.checkNotNullParameter(args, "args");
            RectExcerptEditContext rectExcerptEditContext = new RectExcerptEditContext();
            rectExcerptEditContext.setVirtualBoxInfo(args.getVirtualBoxInfo());
            rectExcerptEditContext.setOriginalExcerptShape(args.getShape());
            listOf = CollectionsKt__CollectionsJVMKt.listOf(args.getShape());
            rectExcerptEditContext.setTransformShapes(listOf);
            rectExcerptEditContext.getExcerptCollectionList().clear();
            rectExcerptEditContext.getExcerptCollectionList().addAll(args.getExcerptCollectionList());
            rectExcerptEditContext.getNoteModelList().clear();
            rectExcerptEditContext.getNoteModelList().addAll(args.getNoteModelList());
            return rectExcerptEditContext;
        }
    }

    @NotNull
    public final SaveRectExcerptArgs getSaveEventArgs(@NotNull RectF boundingRect) {
        Intrinsics.checkNotNullParameter(boundingRect, "boundingRect");
        SaveRectExcerptArgs saveRectExcerptArgs = new SaveRectExcerptArgs();
        saveRectExcerptArgs.setRegionInViewport(boundingRect);
        saveRectExcerptArgs.setExcerptAttr(MMKVNote.INSTANCE.getExcerptShapeAttrOption().forceGet());
        saveRectExcerptArgs.setVirtualPageBoxInfo(getVirtualBoxInfo().copy());
        return saveRectExcerptArgs;
    }

    @Nullable
    public final SelectionManager getSelectionManager() {
        return this.selectionManager;
    }

    @NotNull
    public final RectF getSelectionRect() {
        SelectionManager selectionManager = this.selectionManager;
        if (selectionManager == null) {
            return new RectF();
        }
        RectF boundRect = selectionManager.getSelectionRect().getBoundRect();
        BoxInfoUtils.INSTANCE.noteRenderMatrix(getVirtualBoxInfo()).mapRect(boundRect);
        return boundRect;
    }

    @NotNull
    public final ShapeTransformAction getTransformAction() {
        SelectionManager selectionManager = this.selectionManager;
        return selectionManager == null ? ShapeTransformAction.Undefined : selectionManager.getTransformAction();
    }

    public final boolean isHitInside(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        RectF copy = RectFKt.copy(getSelectionRect());
        copy.inset(10.0f, 10.0f);
        PointF pointF = TouchPointKt.toPointF(touchPoint);
        MatrixKt.mapPoint(BoxInfoUtils.INSTANCE.noteRenderMatrix(getVirtualBoxInfo()), pointF);
        return copy.contains(pointF.x, pointF.y);
    }

    @Override // com.onyx.android.sdk.universal.editor.data.BaseExcerptEditContext
    public void reset() {
        super.reset();
        SelectionManager selectionManager = this.selectionManager;
        if (selectionManager != null) {
            selectionManager.reset();
        }
    }

    public final void setSelectionManager(@Nullable SelectionManager selectionManager) {
        this.selectionManager = selectionManager;
    }
}
