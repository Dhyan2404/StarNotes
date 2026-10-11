package com.onyx.android.sdk.note.request.selection;

import android.graphics.Matrix;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.TransformCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002R\u0017\u0010\u0011\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\t0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0017\u0010.\u001a\u00020)8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", C6998g.f39679a, C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "getTransformBean", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "transformBean", "", "Landroid/graphics/Matrix;", "i", "Ljava/util/Map;", "matrixMap", "", "j", "Ljava/util/List;", "forceUpdateShapes", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "compositeCommand", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "l", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "getChangedShapeBean", "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQuitTransformRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/QuitTransformRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n215#2,2:113\n1#3:115\n*S KotlinDebug\n*F\n+ 1 QuitTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/QuitTransformRequest\n*L\n51#1:113,2\n*E\n"})
/* loaded from: classes8.dex */
public final class QuitTransformRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean transformBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<Shape, Matrix> matrixMap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> forceUpdateShapes;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public CompositeCommand compositeCommand;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final ChangedShapeBean changedShapeBean;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuitTransformRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @NotNull ShapeTransformBean transformBean) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(transformBean, "transformBean");
        this.renderContext = renderContext;
        this.transformBean = transformBean;
        this.matrixMap = new HashMap();
        this.forceUpdateShapes = new ArrayList();
        this.changedShapeBean = new ChangedShapeBean();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        List<Shape> transformShapes = this.transformBean.getTransformShapes();
        if (transformShapes.isEmpty()) {
            return;
        }
        for (Map.Entry<String, List<Shape>> entry : ShapeTypes.INSTANCE.toPageShapeMap(transformShapes).entrySet()) {
            NotePage ensureNotePage = NoteDocNotePage.INSTANCE.ensureNotePage(noteBundle.getNoteDoc(), entry.getKey());
            m34179g(ensureNotePage, entry.getValue());
            ensureNotePage.sortShapeList();
        }
        ShapeTypes.INSTANCE.updateReferenceShapeRect(transformShapes);
        m34178f();
        this.renderContext.clearSelectionRect();
    }

    /* renamed from: f */
    public final void m34178f() {
        ArrayList arrayList = new ArrayList();
        if (CollectionKt.isNonBlank(this.forceUpdateShapes)) {
            arrayList.add(new UndoRedoCommand().addShapes(this.forceUpdateShapes));
        }
        if (!this.matrixMap.isEmpty()) {
            arrayList.add(new TransformCommand(this.matrixMap));
        }
        if (!arrayList.isEmpty()) {
            this.compositeCommand = new CompositeCommand(arrayList);
        }
    }

    /* renamed from: g */
    public final void m34179g(NotePage notePage, List<? extends Shape> shapes) {
        List<Shape> mutableList;
        boolean forceUpdateOnQuit = this.transformBean.getForceUpdateOnQuit();
        for (Shape shape : shapes) {
            Matrix transformingMatrix = ShapeOptions.INSTANCE.getTransformingMatrix(shape);
            Matrix transformShapeMatrix = this.transformBean.getTransformShapeMatrix(shape);
            if (!MatrixKt.isEmpty(transformingMatrix)) {
                MatrixKt.validateScaleLimit(transformingMatrix);
                Matrix matrix = new Matrix();
                matrix.postConcat(transformingMatrix);
                matrix.postConcat(MatrixKt.invertMatrix(transformShapeMatrix));
                shape.postConcat(matrix);
                Map<Shape, Matrix> map = this.matrixMap;
                Matrix matrix2 = new Matrix();
                matrix2.postConcat(MatrixKt.copy(transformShapeMatrix));
                matrix2.postConcat(matrix);
                map.put(shape, matrix2);
            } else if (transformShapeMatrix != null) {
                shape.postConcat(MatrixKt.invertMatrix(transformShapeMatrix));
            }
            if (forceUpdateOnQuit) {
                this.forceUpdateShapes.add(shape);
            }
        }
        if (this.transformBean.getUseAddTransformedMethod()) {
            NotePageShape.INSTANCE.addTransformedShapeList(notePage, shapes);
        } else {
            NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, shapes, 0, 2, null);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList(forceUpdateOnQuit ? this.forceUpdateShapes : this.matrixMap.keySet());
        this.changedShapeBean.setAddShapeList(mutableList);
    }

    @NotNull
    public final ChangedShapeBean getChangedShapeBean() {
        return this.changedShapeBean;
    }

    @Nullable
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final ShapeTransformBean getTransformBean() {
        return this.transformBean;
    }

    public final void setCompositeCommand(@Nullable CompositeCommand compositeCommand) {
        this.compositeCommand = compositeCommand;
    }
}
