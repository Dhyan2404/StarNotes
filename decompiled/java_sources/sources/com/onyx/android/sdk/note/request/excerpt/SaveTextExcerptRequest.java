package com.onyx.android.sdk.note.request.excerpt;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.SaveTextExcerptArgs;
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
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR(\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001f¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/SaveTextExcerptRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/TouchPointList;", "i", "", "shapeUniqueId", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "resourceModel", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V", "excerptInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "setExcerptInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Landroid/graphics/RectF;", "pageRectFList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveTextExcerptRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveTextExcerptRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveTextExcerptRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1313#2,2:97\n1855#3,2:99\n*S KotlinDebug\n*F\n+ 1 SaveTextExcerptRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveTextExcerptRequest\n*L\n49#1:97,2\n73#1:99,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveTextExcerptRequest extends BaseRxNoteRequest {
    public SaveTextExcerptArgs args;
    public ExcerptInfoBean excerptInfoBean;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<RectF> pageRectFList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveTextExcerptRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.shapeList = new ArrayList();
        this.pageRectFList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        m34169h();
        this.shapeList.add(m34168g());
    }

    /* renamed from: f */
    public final ExcerptInfoBean m34167f(String shapeUniqueId, ResourceModel resourceModel) {
        ExcerptInfoBean createRectExcerptInfoBean = ExcerptInfoBean.INSTANCE.createRectExcerptInfoBean();
        createRectExcerptInfoBean.setUniqueId(shapeUniqueId);
        createRectExcerptInfoBean.setImgId(resourceModel.ensureUniqueId());
        createRectExcerptInfoBean.setColor(getArgs().getExcerptAttr().getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String());
        createRectExcerptInfoBean.setPageUniqueId(getArgs().getVirtualPageBoxInfo().getId());
        createRectExcerptInfoBean.getRectList().addAll(this.pageRectFList);
        createRectExcerptInfoBean.setQuote(getArgs().getQuote());
        createRectExcerptInfoBean.setNote(getArgs().getQuote());
        createRectExcerptInfoBean.setStartPosition(getArgs().getStartPosition());
        createRectExcerptInfoBean.setEndPosition(getArgs().getEndPosition());
        createRectExcerptInfoBean.setWritingMode(getArgs().getCom.sunia.HTREnginev2.gon.T java.lang.String());
        return createRectExcerptInfoBean;
    }

    /* renamed from: g */
    public final Shape m34168g() {
        TouchPointList m34170i = m34170i();
        Shape create = ShapeFactory.INSTANCE.create(44);
        create.setShapeMatrix(BoxInfo.INSTANCE.getRotatedMatrix(getArgs().getVirtualPageBoxInfo()));
        create.addPoints(m34170i);
        create.ensureShapeUniqueId();
        create.updateShapeRect();
        NoteDocument noteDoc = getNoteBundle().getNoteDoc();
        ResourceModel loadAndSaveResource = ResourceModelKt.loadAndSaveResource(noteDoc, getArgs().getImgPath(), noteDoc.getDocumentUniqueId());
        setExcerptInfoBean(m34167f(create.getShapeUniqueId(), loadAndSaveResource));
        getExcerptInfoBean().setDocScaleOnCreate(getArgs().getVirtualPageBoxInfo().getActualScale());
        create.setStrokeColor(getExcerptInfoBean().getColor());
        ShapePersistOptionsKt.setExcerptInfoBean(create, getExcerptInfoBean());
        ShapeOptions.INSTANCE.setResource(create, ResourceModels.INSTANCE.toShapeResource(loadAndSaveResource));
        return create;
    }

    @NotNull
    public final SaveTextExcerptArgs getArgs() {
        SaveTextExcerptArgs saveTextExcerptArgs = this.args;
        if (saveTextExcerptArgs != null) {
            return saveTextExcerptArgs;
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

    /* renamed from: h */
    public final void m34169h() {
        Sequence asSequence;
        Matrix normalizeUnRotatedMatrix = BoxInfoUtils.INSTANCE.normalizeUnRotatedMatrix(getArgs().getVirtualPageBoxInfo());
        List<RectF> copyRectFList = RectFKt.copyRectFList(getArgs().getDisplayRectFList());
        this.pageRectFList = copyRectFList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(copyRectFList);
        Iterator it2 = asSequence.iterator();
        while (it2.hasNext()) {
            normalizeUnRotatedMatrix.mapRect((RectF) it2.next());
        }
    }

    /* renamed from: i */
    public final TouchPointList m34170i() {
        TouchPointList touchPointList = new TouchPointList();
        for (RectF rectF : this.pageRectFList) {
            touchPointList.add(new TouchPoint(rectF.left, rectF.top));
            touchPointList.add(new TouchPoint(rectF.right, rectF.bottom));
        }
        return touchPointList;
    }

    public final void setArgs(@NotNull SaveTextExcerptArgs saveTextExcerptArgs) {
        Intrinsics.checkNotNullParameter(saveTextExcerptArgs, "<set-?>");
        this.args = saveTextExcerptArgs;
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
