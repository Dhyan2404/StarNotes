package com.onyx.android.sdk.universal.editor.action.draft;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocShapeLocation;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.doc.ShapeLocationBean;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\"\u001a\u00020!\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0002R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/draft/MoveToShapeRegionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, "m", "Landroid/graphics/RectF;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "l", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/universal/editor/action/draft/ScrollToDisplayAction;", "p", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "getNext", Constants.BOOLEAN_VALUE_SIG, Constants.NEXT, "", "i", "Ljava/util/List;", "visibleBoxList", "j", "Landroid/graphics/RectF;", "currentViewport", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "targetDisplayShape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MoveToShapeRegionAction extends RxBaseAppAction<MoveToShapeRegionAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean next;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<BoxInfo> visibleBoxList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final RectF currentViewport;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Shape targetDisplayShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.MoveToShapeRegionAction$a */
    /* loaded from: classes8.dex */
    public static final class C8670a<T> implements Consumer {
        public C8670a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MoveToShapeRegionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveToShapeRegionAction.this.m37647m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.MoveToShapeRegionAction$b */
    /* loaded from: classes8.dex */
    public static final class C8671b<T, R> implements Function {
        public C8671b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RectF apply(@NotNull MoveToShapeRegionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToShapeRegionAction.this.m37648n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.MoveToShapeRegionAction$c */
    /* loaded from: classes8.dex */
    public static final class C8672c<T, R> implements Function {
        public C8672c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MoveToShapeRegionAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveToShapeRegionAction.this;
        }
    }

    public /* synthetic */ MoveToShapeRegionAction(EditorBundle editorBundle, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MoveToShapeRegionAction> create() {
        m37649o();
        Observable observeOn = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8670a()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8671b()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable map = RxjavaKt.flatMapIf(observeOn, new Function1<RectF, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.draft.MoveToShapeRegionAction$create$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<RectF, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.draft.MoveToShapeRegionAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull RectF it2) {
                Observable<? extends Object> m37650p;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37650p = MoveToShapeRegionAction.this.m37650p(it2);
                return m37650p;
            }
        }).map(new C8672c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getNext() {
        return this.next;
    }

    /* renamed from: l */
    public final RectF m37646l(Shape shape, BoxInfo boxInfo) {
        RectF copy = RectFKt.copy(this.currentViewport);
        RectF copy2 = RectFKt.copy(shape.getBoundingRect());
        RectF cellOriginRectFCopy = boxInfo.getCellOriginRectFCopy();
        copy2.offset(cellOriginRectFCopy.left, cellOriginRectFCopy.top);
        RectFKt.scaleRect(copy2, boxInfo.getActualScale());
        copy.offsetTo(copy2.left, copy2.top);
        float f = 2;
        copy.offset(((-copy.width()) / f) + (copy2.width() / f), ((-copy.height()) / f) + (copy2.height() / f));
        return copy;
    }

    /* renamed from: m */
    public final void m37647m() {
        NoteDocument noteDoc = getEditorBundle().getWorkBundle().getNoteBundle().getNoteDoc();
        ShapeLocationBean nextShapeLocationBean = this.next ? NoteDocShapeLocation.INSTANCE.nextShapeLocationBean(noteDoc, this.visibleBoxList, this.currentViewport) : NoteDocShapeLocation.prevShapeLocationBean$default(NoteDocShapeLocation.INSTANCE, noteDoc, this.visibleBoxList, this.currentViewport, false, 4, null);
        if (nextShapeLocationBean == null) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "move fail", new Object[0]);
            return;
        }
        noteDoc.setShapeLocationBean(nextShapeLocationBean);
        this.targetDisplayShape = NotePageShape.INSTANCE.getShapeById(NoteDocNotePage.INSTANCE.ensureNotePage(noteDoc, noteDoc.getShapeLocationBean().getPageId()), noteDoc.getShapeLocationBean().getShapeId());
    }

    /* renamed from: n */
    public final RectF m37648n() {
        Shape shape = this.targetDisplayShape;
        if (shape == null) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "move fail, no shape", new Object[0]);
            return new RectF();
        }
        BoxInfo findBoxInfoByPageId = WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle()).findBoxInfoByPageId(shape.getPageUniqueId());
        if (findBoxInfoByPageId != null) {
            return m37646l(shape, findBoxInfoByPageId);
        }
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "move fail, boxInfo empty, pageId = " + shape.getPageUniqueId(), new Object[0]);
        return new RectF();
    }

    /* renamed from: o */
    public final void m37649o() {
        EditorBundle editorBundle = getEditorBundle();
        EditorBundleKt.stopScroll(editorBundle);
        EditorBundleKt.postEvent(editorBundle, new QuitExcerptSelectionEvent(false, null, 2, null));
        EditorBundleKt.postEvent(editorBundle, new QuitTransformEvent(false, 1, null));
        this.visibleBoxList.addAll(EditorBundleKt.visibleBoxList(getEditorBundle()));
        this.currentViewport.set(EditorBundleKt.viewport(getEditorBundle()).getBox());
    }

    /* renamed from: p */
    public final Observable<ScrollToDisplayAction> m37650p(RectF it2) {
        return new ScrollToDisplayAction(getEditorBundle(), it2.left, it2.top).build();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MoveToShapeRegionAction(@NotNull EditorBundle editorBundle, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.next = z;
        this.visibleBoxList = new ArrayList();
        this.currentViewport = new RectF();
    }
}
