package com.onyx.android.sdk.note.request.tag;

import android.graphics.Matrix;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.object.TagShape;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b)\u0010*J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J0\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J$\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u00172\u0006\u0010\u0019\u001a\u00020\bH\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001eR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010 R(\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00100!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "tagBean", "Lcom/onyx/android/sdk/base/data/Size;", "imageSize", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "model", C6998g.f39679a, "", "models", "centerPointInPage", C6997f.f39671c, "i", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "", C4921e.f26537n, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateTagShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagShapesRequest.kt\ncom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1549#2:129\n1620#2,3:130\n1864#2,3:134\n1864#2,3:137\n1#3:133\n*S KotlinDebug\n*F\n+ 1 CreateTagShapesRequest.kt\ncom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest\n*L\n95#1:129\n95#1:130,3\n101#1:134,3\n119#1:137,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateTagShapesRequest extends BaseRxNoteRequest {

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
    public ShapeTagBean tagBean;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateTagShapesRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @NotNull NotePage notePage, @NotNull TouchPoint startPoint, @NotNull ShapeTagBean tagBean) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(tagBean, "tagBean");
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.startPoint = startPoint;
        this.tagBean = tagBean;
        this.shapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        m34199i(this.notePage);
        NotePageShape.addShapeList$default(NotePageShape.INSTANCE, this.notePage, this.shapeList, 0, 2, null);
        noteBundle.postAddShapeEvent(this.shapeList);
    }

    /* renamed from: f */
    public final List<TouchPoint> m34196f(List<? extends SyncTagModel> models, TouchPoint centerPointInPage) {
        int collectionSizeOrDefault;
        int size = models.size();
        List<? extends SyncTagModel> list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(m34197g((SyncTagModel) it2.next()));
        }
        int m34200j = m34200j();
        Iterator it3 = arrayList.iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        int width = ((Size) it3.next()).getWidth();
        while (it3.hasNext()) {
            int width2 = ((Size) it3.next()).getWidth();
            if (width < width2) {
                width = width2;
            }
        }
        Iterator it4 = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it4.hasNext()) {
            i2 += ((Size) it4.next()).getHeight();
        }
        int i3 = i2 + ((size - 1) * m34200j);
        ArrayList arrayList2 = new ArrayList();
        float f = 0.0f;
        for (Object obj : list) {
            int i4 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Size size2 = (Size) arrayList.get(i);
            arrayList2.add(new TouchPoint((width - size2.getWidth()) / 2.0f, f));
            f += size2.getHeight() + m34200j;
            i = i4;
        }
        float x = centerPointInPage.getX() - (width / 2);
        float y = centerPointInPage.getY() - (i3 / 2);
        Matrix matrix = new Matrix();
        matrix.postTranslate(x, y);
        return GeometryUtils.INSTANCE.transform(arrayList2, matrix);
    }

    /* renamed from: g */
    public final Size m34197g(SyncTagModel model) {
        TagShape.Companion companion = TagShape.INSTANCE;
        return new Size(companion.calculateWidth(this.renderContext.getRenderMeasure(), companion.getTagDisplayTitle(model)), companion.getTagHeight());
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: h */
    public final Shape m34198h(NotePage notePage, TouchPoint downPoint, RenderContext renderContext, ShapeTagBean tagBean, Size imageSize) {
        Matrix matrix = new Matrix();
        renderContext.getMatrix().invert(matrix);
        float scale = renderContext.getRenderMeasure().getScale();
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        TouchPoint matrixTouchPoint = shapeMatrixUtils.matrixTouchPoint(downPoint, matrix);
        Shape create = ShapeFactory.INSTANCE.create(45);
        create.onDown(matrixTouchPoint, matrixTouchPoint);
        TouchPoint touchPoint = new TouchPoint(downPoint);
        touchPoint.setX(downPoint.getX() + ((float) Math.ceil(imageSize.getWidth() * scale)));
        touchPoint.setY(downPoint.getY() + ((float) Math.ceil(imageSize.getHeight() * scale)));
        TouchPoint matrixTouchPoint2 = shapeMatrixUtils.matrixTouchPoint(touchPoint, matrix);
        create.onUp(matrixTouchPoint2, matrixTouchPoint2);
        create.ensureShapeUniqueId();
        ShapeUtils.INSTANCE.setShapeZOrder(create, notePage);
        create.setText(JSONUtils.INSTANCE.toJson(tagBean));
        ShapeOptions.INSTANCE.setTagBean(create, tagBean);
        create.updateShapeRect();
        return create;
    }

    /* renamed from: i */
    public final void m34199i(NotePage notePage) {
        List<TouchPoint> m34196f = m34196f(this.tagBean.getTagList(), this.renderContext.getRenderMeasure().matrixPoint(new TouchPoint(this.startPoint)));
        int i = 0;
        for (Object obj : this.tagBean.getTagList()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SyncTagModel syncTagModel = (SyncTagModel) obj;
            TouchPoint touchPoint = m34196f.get(i);
            ShapeTagBean shapeTagBean = new ShapeTagBean();
            shapeTagBean.getTagList().add(syncTagModel);
            CollectionKt.safeAdd(this.shapeList, m34198h(notePage, touchPoint, this.renderContext, shapeTagBean, m34197g(syncTagModel)));
            i = i2;
        }
    }

    /* renamed from: j */
    public final int m34200j() {
        return ResManager.INSTANCE.getDimens(C7485R.dimen.tag_padding);
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
