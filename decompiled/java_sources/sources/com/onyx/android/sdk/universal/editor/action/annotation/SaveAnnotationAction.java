package com.onyx.android.sdk.universal.editor.action.annotation;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionInfo;
import com.onyx.android.sdk.universal.editor.extension.ReaderWritingModeKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u001a\u001a\u00020\t¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R(\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "readerSelection", "Landroid/graphics/Matrix;", "normalizeMatrix", "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "l", "", "Landroid/graphics/RectF;", "rectFList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", "getInfo", "()Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", PrivilegedApp.f6532i, "i", "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "getAnnotationInfo", "()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "annotationInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveAnnotationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveAnnotationAction.kt\ncom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n1855#2,2:110\n*S KotlinDebug\n*F\n+ 1 SaveAnnotationAction.kt\ncom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction\n*L\n80#1:106\n80#1:107,3\n98#1:110,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveAnnotationAction extends RxBaseAppAction<SaveAnnotationAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TextSelectionInfo info;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final AnnotationInfoBean annotationInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.annotation.SaveAnnotationAction$a */
    /* loaded from: classes8.dex */
    public static final class C8418a<T, R> implements Function {
        public C8418a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull SaveAnnotationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveAnnotationAction saveAnnotationAction = SaveAnnotationAction.this;
            return EditorShapesActionsKt.addShapeAndForceRenderNote(saveAnnotationAction, saveAnnotationAction.getInfo().getVirtualPageBoxInfo(), SaveAnnotationAction.this.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.annotation.SaveAnnotationAction$b */
    /* loaded from: classes8.dex */
    public static final class C8419b<T, R> implements Function {
        public C8419b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveAnnotationAction apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveAnnotationAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.annotation.SaveAnnotationAction$c */
    /* loaded from: classes8.dex */
    public static final class C8420c<T, R> implements Function {
        public C8420c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveAnnotationAction apply(@NotNull Shape it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveAnnotationAction.this.getShapeList().add(it2);
            return SaveAnnotationAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveAnnotationAction(@NotNull EditorBundle editorBundle, @NotNull TextSelectionInfo info, @NotNull AnnotationInfoBean annotationInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(annotationInfo, "annotationInfo");
        this.info = info;
        this.annotationInfo = annotationInfo;
        this.shapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveAnnotationAction> create() {
        Observable<SaveAnnotationAction> map = m37142m().flatMap(new C8418a()).map(new C8419b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final AnnotationInfoBean getAnnotationInfo() {
        return this.annotationInfo;
    }

    @NotNull
    public final TextSelectionInfo getInfo() {
        return this.info;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final AnnotationInfoBean m37141l(ReaderSelection readerSelection, Matrix normalizeMatrix) {
        int collectionSizeOrDefault;
        List<RectF> mutableList;
        AnnotationInfoBean annotationInfoBean = new AnnotationInfoBean();
        List<RectF> rectangles = readerSelection.rectangles();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(rectangles, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = rectangles.iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            normalizeMatrix.mapRect(copy);
            arrayList.add(copy);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        annotationInfoBean.setRectFList(mutableList);
        annotationInfoBean.setQuote(readerSelection.text());
        annotationInfoBean.setStartPosition(readerSelection.selectionRange().getStartPosition().getStrPosition());
        annotationInfoBean.setEndPosition(readerSelection.selectionRange().getEndPosition().getStrPosition());
        annotationInfoBean.setStyle(this.annotationInfo.getStyle());
        annotationInfoBean.setColor(this.annotationInfo.getColor());
        annotationInfoBean.setWritingMode(ReaderWritingModeKt.toAnnotationWritingMode(readerSelection));
        return annotationInfoBean;
    }

    /* renamed from: m */
    public final Observable<SaveAnnotationAction> m37142m() {
        Observable<SaveAnnotationAction> map = DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Shape>() { // from class: com.onyx.android.sdk.universal.editor.action.annotation.SaveAnnotationAction$createAnnotationShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull NoteBundle it2) {
                AnnotationInfoBean m37141l;
                TouchPointList m37143n;
                Intrinsics.checkNotNullParameter(it2, "it");
                BoxInfo virtualPageBoxInfo = SaveAnnotationAction.this.getInfo().getVirtualPageBoxInfo();
                m37141l = SaveAnnotationAction.this.m37141l(SaveAnnotationAction.this.getInfo().getSelection(), BoxInfoUtils.INSTANCE.normalizeUnRotatedMatrix(virtualPageBoxInfo));
                m37143n = SaveAnnotationAction.this.m37143n(m37141l.getRectFList());
                Shape create = ShapeFactory.INSTANCE.create(9);
                ShapeCreateArgs shapeCreateArgs = new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);
                shapeCreateArgs.setDisplayScale(virtualPageBoxInfo.getActualScale());
                create.setShapeCreateArgs(shapeCreateArgs);
                create.setShapeMatrix(BoxInfo.INSTANCE.getRotatedMatrix(virtualPageBoxInfo));
                create.addPoints(m37143n);
                create.ensureShapeUniqueId();
                create.updateShapeRect();
                create.setStrokeColor(m37141l.getColor());
                ShapePersistOptionsKt.setAnnotationInfoBean(create, m37141l);
                ShapePersistOptionsKt.setShapeVersion(create, 1);
                return create;
            }
        }).map(new C8420c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final TouchPointList m37143n(List<? extends RectF> rectFList) {
        TouchPointList touchPointList = new TouchPointList();
        for (RectF rectF : rectFList) {
            touchPointList.add(new TouchPoint(rectF.left, rectF.top));
            touchPointList.add(new TouchPoint(rectF.right, rectF.bottom));
        }
        return touchPointList;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
