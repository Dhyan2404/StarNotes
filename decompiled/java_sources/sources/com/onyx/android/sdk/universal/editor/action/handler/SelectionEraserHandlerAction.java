package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Canvas;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionArgs;
import com.onyx.android.sdk.note.common.data.shape.ShapeType;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.SelectionTrackRender;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.request.erase.AreaEraseFinishedRequest;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016J\"\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "downToUpEraseContext", "Lio/reactivex/rxjava3/core/Observable;", "erasing", "endErase", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "onTouchDown", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxList", "eraseContext", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", "selectionArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectionEraserHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionEraserHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1549#2:109\n1620#2,3:110\n*S KotlinDebug\n*F\n+ 1 SelectionEraserHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction\n*L\n66#1:109\n66#1:110,3\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectionEraserHandlerAction extends BaseEraseHandlerAction implements RenderManager.Renderer {

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public SelectionArgs selectionArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionEraserHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9270a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49344f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionEraserHandlerAction$a$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ SelectionEraserHandlerAction f49345e;

            /* renamed from: f */
            public final /* synthetic */ EraseContext f49346f;

            public a(SelectionEraserHandlerAction selectionEraserHandlerAction, EraseContext eraseContext) {
                this.f49345e = selectionEraserHandlerAction;
                this.f49346f = eraseContext;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends EraseContext> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49345e.endEraseImpl(this.f49346f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionEraserHandlerAction$a$b */
        /* loaded from: classes8.dex */
        public static final class b<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ SelectionEraserHandlerAction f49347e;

            /* renamed from: f */
            public final /* synthetic */ EraseContext f49348f;

            public b(SelectionEraserHandlerAction selectionEraserHandlerAction, EraseContext eraseContext) {
                this.f49347e = selectionEraserHandlerAction;
                this.f49348f = eraseContext;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull EraseContext it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49347e.display(this.f49348f);
            }
        }

        public C9270a(EraseContext eraseContext) {
            this.f49344f = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (!it2.isEmpty()) {
                Observable<R> flatMap = SelectionEraserHandlerAction.this.m38608D(it2, this.f49344f).flatMap(new a(SelectionEraserHandlerAction.this, this.f49344f)).flatMap(new b(SelectionEraserHandlerAction.this, this.f49344f));
                Intrinsics.checkNotNull(flatMap);
                return flatMap;
            }
            EditorBundleKt.renderManager(SelectionEraserHandlerAction.this.getEditorBundle()).invalidate();
            Observable just = Observable.just(SelectionEraserHandlerAction.this);
            Intrinsics.checkNotNull(just);
            return just;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionEraserHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9271b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49349e;

        public C9271b(EraseContext eraseContext) {
            this.f49349e = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EraseContext apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49349e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionEraserHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.selectionArgs = new SelectionArgs();
    }

    /* renamed from: C */
    public final Shape m38607C(TouchPointList touchPointList) {
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        Shape create = ShapeFactory.INSTANCE.create(ShapeType.INSTANCE.eraseShapeType(2));
        create.addPoints(touchPointList);
        create.setStrokeWidth(uiDrawingArgs.getEraserWidth());
        create.setStrokeColor(0);
        create.setShapeCreateArgs(new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null));
        return create;
    }

    /* renamed from: D */
    public final Observable<?> m38608D(List<BoxInfo> boxList, final EraseContext eraseContext) {
        int collectionSizeOrDefault;
        List<BoxInfo> list = boxList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        final ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BoxInfo boxInfo : list) {
            arrayList.add(TuplesKt.m61535to(boxInfo, normalizeTouchPoints(boxInfo, this.selectionArgs.getSelectionPoints().m72175clone())));
        }
        final RenderContext createRenderContext = createRenderContext();
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.SelectionEraserHandlerAction$eraseFinish$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle noteBundle) {
                Shape m38607C;
                Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
                List<Pair<BoxInfo, TouchPointList>> list2 = arrayList;
                SelectionEraserHandlerAction selectionEraserHandlerAction = this;
                RenderContext renderContext = createRenderContext;
                EraseContext eraseContext2 = eraseContext;
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    Pair pair = (Pair) it2.next();
                    TouchPointList touchPointList = (TouchPointList) pair.getSecond();
                    NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
                    NoteDocument noteDoc = noteBundle.getNoteDoc();
                    BoxInfo noteInfo = ((BoxInfo) pair.getFirst()).getNoteInfo();
                    String id = noteInfo != null ? noteInfo.getId() : null;
                    if (id == null) {
                        id = "";
                    }
                    NotePage ensureNotePage = noteDocNotePage.ensureNotePage(noteDoc, id);
                    m38607C = selectionEraserHandlerAction.m38607C(touchPointList);
                    m38607C.setLayerId(ensureNotePage.getLayerIndex());
                    AreaEraseFinishedRequest areaEraseFinishedRequest = new AreaEraseFinishedRequest(selectionEraserHandlerAction.getEditorBundle().getWorkBundle(), renderContext, eraseContext2);
                    areaEraseFinishedRequest.setEraseShape(m38607C);
                    areaEraseFinishedRequest.setNotePage(ensureNotePage);
                    areaEraseFinishedRequest.execute2();
                }
                if (arrayList.size() > 1) {
                    eraseContext.mergeChangedShapeBeans();
                }
            }
        });
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction
    @NotNull
    public Observable<EraseContext> endErase(@NotNull EraseContext downToUpEraseContext) {
        Intrinsics.checkNotNullParameter(downToUpEraseContext, "downToUpEraseContext");
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_ERASER, false, 2, null);
        Observable<EraseContext> map = CommonEditorActionsKt.hitTestVisibleBoxListObservable(getEditorBundle(), this.selectionArgs.getSelectionPoints().getBoundingRect()).flatMap(new C9270a(downToUpEraseContext)).map(new C9271b(downToUpEraseContext));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction
    @NotNull
    public Observable<EraseContext> erasing(@NotNull EraseContext downToUpEraseContext) {
        Intrinsics.checkNotNullParameter(downToUpEraseContext, "downToUpEraseContext");
        this.selectionArgs.addSelectionPoints(toTouchPointList(downToUpEraseContext.getErasingDataList()));
        EditorBundleKt.renderManager(getEditorBundle()).invalidate();
        Observable<EraseContext> just = Observable.just(downToUpEraseContext);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawPath(this.selectionArgs.getSelectionPath(), SelectionTrackRender.INSTANCE.getSelectionTrackPaint());
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction, com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchDown(touchData);
        this.selectionArgs = new SelectionArgs();
        SelectionTrackRender.INSTANCE.updateSelectionTrackPaintColor(1);
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_ERASER, this, false, 4, null);
    }
}
