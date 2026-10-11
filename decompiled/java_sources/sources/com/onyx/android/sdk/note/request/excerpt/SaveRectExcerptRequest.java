package com.onyx.android.sdk.note.request.excerpt;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.SaveRectExcerptArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR(\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "", "shapeUniqueId", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "resourceModel", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;)V", "excerptInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "setExcerptInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveRectExcerptRequest extends BaseRxNoteRequest {
    public SaveRectExcerptArgs args;
    public ExcerptInfoBean excerptInfoBean;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveRectExcerptRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.shapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.shapeList.add(m34166g());
    }

    /* renamed from: f */
    public final ExcerptInfoBean m34165f(String shapeUniqueId, ResourceModel resourceModel) {
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(getArgs().getVirtualPageBoxInfo());
        ExcerptInfoBean createRectExcerptInfoBean = ExcerptInfoBean.INSTANCE.createRectExcerptInfoBean();
        createRectExcerptInfoBean.setUniqueId(shapeUniqueId);
        createRectExcerptInfoBean.setImgId(resourceModel.ensureUniqueId());
        createRectExcerptInfoBean.setColor(getArgs().getExcerptAttr().getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String());
        createRectExcerptInfoBean.setPageUniqueId(getArgs().getVirtualPageBoxInfo().getId());
        RectF copy = RectFKt.copy(getArgs().getRegionInViewport());
        noteNormalizeMatrix.mapRect(copy);
        createRectExcerptInfoBean.getRectList().add(copy);
        return createRectExcerptInfoBean;
    }

    /* renamed from: g */
    public final Shape m34166g() {
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(getArgs().getVirtualPageBoxInfo());
        RectF copy = RectFKt.copy(getArgs().getRegionInViewport());
        noteNormalizeMatrix.mapRect(copy);
        TouchPoint touchPoint = new TouchPoint(copy.left, copy.top);
        TouchPoint touchPoint2 = new TouchPoint(copy.right, copy.bottom);
        Shape create = ShapeFactory.INSTANCE.create(41);
        create.onDown(touchPoint, touchPoint);
        create.onUp(touchPoint2, touchPoint2);
        create.ensureShapeUniqueId();
        create.updateShapeRect();
        NoteDocument noteDoc = getNoteBundle().getNoteDoc();
        ResourceModel loadAndSaveResource = ResourceModelKt.loadAndSaveResource(noteDoc, getArgs().getImgPath(), noteDoc.getDocumentUniqueId());
        setExcerptInfoBean(m34165f(create.getShapeUniqueId(), loadAndSaveResource));
        getExcerptInfoBean().setDocScaleOnCreate(getArgs().getVirtualPageBoxInfo().getActualScale());
        create.setStrokeColor(getExcerptInfoBean().getColor());
        ShapePersistOptionsKt.setExcerptInfoBean(create, getExcerptInfoBean());
        ShapeOptions.INSTANCE.setResource(create, ResourceModels.INSTANCE.toShapeResource(loadAndSaveResource));
        return create;
    }

    @NotNull
    public final SaveRectExcerptArgs getArgs() {
        SaveRectExcerptArgs saveRectExcerptArgs = this.args;
        if (saveRectExcerptArgs != null) {
            return saveRectExcerptArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("args");
        return null;
    }

    @NotNull
    public final ExcerptInfoBean getExcerptInfoBean() {
        ExcerptInfoBean excerptInfoBean = this.excerptInfoBean;
        if (excerptInfoBean != null) {
            return excerptInfoBean;
        }
        Intrinsics.throwUninitializedPropertyAccessException("excerptInfoBean");
        return null;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    public final void setArgs(@NotNull SaveRectExcerptArgs saveRectExcerptArgs) {
        Intrinsics.checkNotNullParameter(saveRectExcerptArgs, "<set-?>");
        this.args = saveRectExcerptArgs;
    }

    public final void setExcerptInfoBean(@NotNull ExcerptInfoBean excerptInfoBean) {
        Intrinsics.checkNotNullParameter(excerptInfoBean, "<set-?>");
        this.excerptInfoBean = excerptInfoBean;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
