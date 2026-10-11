package com.onyx.android.sdk.universal.editor.action.command;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyResult;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "handle", "undoRedoArgs", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "m", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "getUndoRedoArgs", "()Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUndoRedoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UndoRedoAction.kt\ncom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n215#2,2:99\n215#2,2:101\n1#3:103\n*S KotlinDebug\n*F\n+ 1 UndoRedoAction.kt\ncom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction\n*L\n50#1:99,2\n54#1:101,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class UndoRedoAction extends RxBaseAppAction<UndoRedoAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final UndoRedoArgs undoRedoArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$a */
    /* loaded from: classes8.dex */
    public static final class C8586a<T, R> implements Function {
        public C8586a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UndoRedoArgs apply(@NotNull UndoRedoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this.handle();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$b */
    /* loaded from: classes8.dex */
    public static final class C8587b<T, R> implements Function {
        public C8587b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UndoRedoArgs apply(@NotNull UndoRedoArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this.m37478n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$c */
    /* loaded from: classes8.dex */
    public static final class C8588c<T, R> implements Function {
        public C8588c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UndoRedoArgs> apply(@NotNull UndoRedoArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this.m37479o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$d */
    /* loaded from: classes8.dex */
    public static final class C8589d<T, R> implements Function {
        public C8589d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UndoRedoAction> apply(@NotNull UndoRedoArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this.m37476l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$e */
    /* loaded from: classes8.dex */
    public static final class C8590e<T, R> implements Function {
        public C8590e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UndoRedoAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this.m37477m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$f */
    /* loaded from: classes8.dex */
    public static final class C8591f<T> implements Consumer {
        public C8591f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UndoRedoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(UndoRedoAction.this.getEditorBundle()).invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$g */
    /* loaded from: classes8.dex */
    public static final class C8592g<T, R> implements Function {
        public C8592g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UndoRedoAction apply(@NotNull UndoRedoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$h */
    /* loaded from: classes8.dex */
    public static final class C8593h<T, R> implements Function {
        public C8593h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UndoRedoAction apply(@NotNull ForceRenderNoteDirtyResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UndoRedoAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction$i */
    /* loaded from: classes8.dex */
    public static final class C8594i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UndoRedoArgs f48186e;

        public C8594i(UndoRedoArgs undoRedoArgs) {
            this.f48186e = undoRedoArgs;
        }

        @NotNull
        /* renamed from: a */
        public final UndoRedoArgs m37488a(boolean z) {
            return this.f48186e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37488a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UndoRedoAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.undoRedoArgs = new UndoRedoArgs();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UndoRedoAction> create() {
        Observable<UndoRedoAction> flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8586a()).map(new C8587b()).flatMap(new C8588c()).flatMap(new C8589d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final UndoRedoArgs getUndoRedoArgs() {
        return this.undoRedoArgs;
    }

    @NotNull
    public abstract UndoRedoArgs handle();

    /* renamed from: l */
    public final Observable<UndoRedoAction> m37476l(UndoRedoArgs undoRedoArgs) {
        Set<String> keySet = undoRedoArgs.getChangedShapeMap().keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        if (CollectionKt.isNullOrEmpty(keySet)) {
            Observable<UndoRedoAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundleKt.renderManager(getEditorBundle()).invalidateNotVisiblePagesIf(keySet);
        List<BoxInfo> findIntersectsVisibleBoxList = EditorBundleKt.findIntersectsVisibleBoxList(getEditorBundle(), keySet);
        if (findIntersectsVisibleBoxList.isEmpty()) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "visibleBoxList empty, not display", new Object[0]);
            Observable<UndoRedoAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable concatMap = Observable.fromIterable(findIntersectsVisibleBoxList).concatMap(new C8590e());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<UndoRedoAction> map = RxjavaKt.takeLastOne(concatMap).doOnNext(new C8591f()).map(new C8592g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<UndoRedoAction> m37477m(BoxInfo virtualBoxInfo) {
        String id;
        RectF boundingRectWithWidth;
        BoxInfo noteInfo = virtualBoxInfo.getNoteInfo();
        if (noteInfo == null || (id = noteInfo.getId()) == null) {
            Observable<UndoRedoAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<Shape> list = this.undoRedoArgs.getChangedShapeMap().get(id);
        if (list == null || (boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(list)) == null) {
            Observable<UndoRedoAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        RectF rectF = this.undoRedoArgs.getPageChangeRectMap().get(id);
        if (rectF != null) {
            boundingRectWithWidth.union(rectF);
        }
        Observable map = ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this, new ForceRenderNoteDirtyArgs(virtualBoxInfo.copy(), BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(boundingRectWithWidth, virtualBoxInfo), false, false, false, false, 60, null)).map(new C8593h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final UndoRedoArgs m37478n(UndoRedoArgs undoRedoArgs) {
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        for (Map.Entry<String, List<Shape>> entry : ShapeTypes.INSTANCE.toPageShapeMap(undoRedoArgs.getAddShapeList()).entrySet()) {
            ShapeUtils.INSTANCE.transparentShapes(entry.getValue(), false);
            NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteDoc, entry.getKey());
            if (pageByUniqueId != null) {
                NotePageShape.addShapeList$default(NotePageShape.INSTANCE, pageByUniqueId, entry.getValue(), 0, 2, null);
            }
        }
        for (Map.Entry<String, List<Shape>> entry2 : ShapeTypes.INSTANCE.toPageShapeMap(undoRedoArgs.getRemoveShapeList()).entrySet()) {
            NotePage pageByUniqueId2 = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteDoc, entry2.getKey());
            if (pageByUniqueId2 != null) {
                NotePage.removeShapeList$default(pageByUniqueId2, entry2.getValue(), false, 2, null);
            }
        }
        ChangedShapeBean changedShapeBean = undoRedoArgs.toChangedShapeBean();
        EditorBundleKt.noteBundle(getEditorBundle()).postShapeChangedEvent(changedShapeBean);
        EditorBundleKt.noteBundle(getEditorBundle()).postStashChangeShapeEvent(changedShapeBean);
        return undoRedoArgs;
    }

    /* renamed from: o */
    public final Observable<UndoRedoArgs> m37479o(UndoRedoArgs undoRedoArgs) {
        Set<String> keySet = undoRedoArgs.getChangedShapeMap().keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        Observable map = CommonEditorActionsKt.updateVirtualPages(this, keySet).map(new C8594i(undoRedoArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
