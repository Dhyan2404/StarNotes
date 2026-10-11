package com.onyx.android.sdk.note.request;

import android.graphics.Matrix;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\n\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J(\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0017\u0010&\u001a\u00020!8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/base/data/Size;", "imageSize", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "j", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "linkShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getLinkShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setLinkShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "compositeCommand", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateLinkShapeRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public TouchPoint startPoint;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public ShapeLinkBean linkBean;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final CompositeCommand compositeCommand;
    public Shape linkShape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateLinkShapeRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @NotNull NotePage notePage, @NotNull TouchPoint startPoint, @NotNull ShapeLinkBean linkBean) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.startPoint = startPoint;
        this.linkBean = linkBean;
        this.compositeCommand = new CompositeCommand(null, 1, null);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<? extends Shape> listOfNotNull;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        setLinkShape(m34108f(this.notePage));
        NotePageShape.INSTANCE.saveShape(this.notePage, getLinkShape());
        noteBundle.postAddShapeEvent(getLinkShape());
        CompositeCommand compositeCommand = this.compositeCommand;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getLinkShape());
        compositeCommand.addShapesUndoRedoCommand(listOfNotNull);
        noteBundle.getCommandManager().addCommand(this.compositeCommand);
    }

    /* renamed from: f */
    public final Shape m34108f(NotePage notePage) {
        ShapeLinkUtils shapeLinkUtils = ShapeLinkUtils.INSTANCE;
        return m34109g(notePage, this.renderContext.getRenderMeasure().matrixPoint(new TouchPoint(this.startPoint)), this.renderContext, new Size(shapeLinkUtils.calculateLinkWidth(this.linkBean, this.renderContext.getRenderMeasure()), shapeLinkUtils.calculateLinkHeight(this.linkBean.isOnlyIconStyle())));
    }

    /* renamed from: g */
    public final Shape m34109g(NotePage notePage, TouchPoint downPoint, RenderContext renderContext, Size imageSize) {
        Matrix matrix = new Matrix();
        renderContext.getMatrix().invert(matrix);
        float scale = renderContext.getRenderMeasure().getScale();
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        TouchPoint matrixTouchPoint = shapeMatrixUtils.matrixTouchPoint(downPoint, matrix);
        Shape create = ShapeFactory.INSTANCE.create(33);
        create.onDown(matrixTouchPoint, matrixTouchPoint);
        TouchPoint touchPoint = new TouchPoint(downPoint);
        touchPoint.setX(downPoint.getX() + ((float) Math.ceil(imageSize.getWidth() * scale)));
        touchPoint.setY(downPoint.getY() + ((float) Math.ceil(imageSize.getHeight() * scale)));
        TouchPoint matrixTouchPoint2 = shapeMatrixUtils.matrixTouchPoint(touchPoint, matrix);
        create.onUp(matrixTouchPoint2, matrixTouchPoint2);
        create.ensureShapeUniqueId();
        ShapeUtils.INSTANCE.setShapeZOrder(create, notePage);
        create.setText(JSONUtils.INSTANCE.toJson(this.linkBean));
        create.updateShapeRect();
        create.updateShapeTime();
        return create;
    }

    @NotNull
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    @NotNull
    public final Shape getLinkShape() {
        Shape shape = this.linkShape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linkShape");
        return null;
    }

    public final void setLinkShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.linkShape = shape;
    }
}
