package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.content.ClipData;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.IntentUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptCollectionArgs;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.SaveImageUriToFileAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction;
import com.onyx.android.sdk.universal.editor.data.DragEventData;
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import com.onyx.android.sdk.universal.editor.events.note.StartDropImageTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0004¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0014\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u0002H\u0002J\u0014\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u0002H\u0002J\u0014\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u0002H\u0002R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "s", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "r", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "p", C4921e.f26528e, "q", "Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", "getEvent", "()Lcom/onyx/android/sdk/universal/editor/data/DragEventData;", NotificationCompat.CATEGORY_EVENT, "i", Constants.HASIDCALL_INDEX_SIG, "isFromSameEditor", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "j", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "args", "", C4921e.f26537n, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/DragEventData;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleImageDropAction extends RxBaseAppAction<HandleImageDropAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final DragEventData event;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean isFromSameEditor;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final SaveExcerptCollectionArgs args;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$a */
    /* loaded from: classes8.dex */
    public static final class C8772a<T> implements Predicate {
        public C8772a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull HandleImageDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleImageDropAction.this.m37804m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$b */
    /* loaded from: classes8.dex */
    public static final class C8773b<T, R> implements Function {
        public C8773b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleImageDropAction> apply(@NotNull HandleImageDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleImageDropAction.this.m37809s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$c */
    /* loaded from: classes8.dex */
    public static final class C8774c<T, R> implements Function {
        public C8774c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull HandleImageDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HandleImageDropAction handleImageDropAction = HandleImageDropAction.this;
            return CommonEditorActionsKt.hitTestVisibleBoxObservable(handleImageDropAction, handleImageDropAction.getEvent().getTouchPoint());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$d */
    /* loaded from: classes8.dex */
    public static final class C8775d<T, R> implements Function {
        public C8775d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleImageDropAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleImageDropAction.this.m37808r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$e */
    /* loaded from: classes8.dex */
    public static final class C8776e<T, R> implements Function {
        public C8776e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleImageDropAction apply(@NotNull HandleImageDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleImageDropAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$f */
    /* loaded from: classes8.dex */
    public static final class C8777f<T, R> implements Function {

        /* renamed from: e */
        public static final C8777f<T, R> f48496e = new C8777f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull PasteImageShapeFromExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$g */
    /* loaded from: classes8.dex */
    public static final class C8778g<T, R> implements Function {

        /* renamed from: e */
        public static final C8778g<T, R> f48497e = new C8778g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull CreateImageShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$h */
    /* loaded from: classes8.dex */
    public static final class C8779h<T, R> implements Function {

        /* renamed from: e */
        public static final C8779h<T, R> f48498e = new C8779h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull SaveExcerptCollectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$i */
    /* loaded from: classes8.dex */
    public static final class C8780i<T, R> implements Function {
        public C8780i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(HandleImageDropAction.this.getShapeList().addAll(it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$j */
    /* loaded from: classes8.dex */
    public static final class C8781j<T> implements Consumer {
        public C8781j() {
        }

        /* renamed from: a */
        public final void m37819a(boolean z) {
            Debug.INSTANCE.m32035d(HandleImageDropAction.this.getClass(), "docId = " + EditorBundleKt.docId(HandleImageDropAction.this.getEditorBundle()) + ", save success", new Object[0]);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m37819a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$k */
    /* loaded from: classes8.dex */
    public static final class C8782k<T, R> implements Function {
        public C8782k() {
        }

        @NotNull
        /* renamed from: a */
        public final HandleImageDropAction m37820a(boolean z) {
            return HandleImageDropAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37820a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$l */
    /* loaded from: classes8.dex */
    public static final class C8783l<T, R> implements Function {
        public C8783l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleImageDropAction apply(@NotNull SaveImageUriToFileAction it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveExcerptCollectionArgs args = HandleImageDropAction.this.getArgs();
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2.getFilePathList());
            args.setSourceImgPath(StringKt.safelyGetStr((String) firstOrNull));
            return HandleImageDropAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleImageDropAction(@NotNull EditorBundle editorBundle, @NotNull DragEventData event, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        this.isFromSameEditor = z;
        this.args = new SaveExcerptCollectionArgs();
        this.shapeList = new ArrayList();
    }

    /* renamed from: n */
    public static final void m37803n(HandleImageDropAction this$0, HandleImageDropAction it2) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        ShapeTransformBean transformShapes = new ShapeTransformBean().setTransformShapes(this$0.shapeList);
        EditorBundle editorBundle = this$0.getEditorBundle();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this$0.shapeList);
        Shape shape = (Shape) firstOrNull;
        String documentUniqueId = shape != null ? shape.getDocumentUniqueId() : null;
        if (documentUniqueId == null) {
            documentUniqueId = "";
        }
        EditorBundleKt.postEvent(editorBundle, new StartDropImageTransformEvent(documentUniqueId, transformShapes));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleImageDropAction> create() {
        Observable flatMap = Observable.just(this).observeOn(getMainUIScheduler()).filter(new C8772a()).flatMap(new C8773b()).flatMap(new C8774c()).flatMap(new C8775d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<HandleImageDropAction> map = RxjavaKt.doOnNextIf(flatMap, new Function1<HandleImageDropAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction$create$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HandleImageDropAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!HandleImageDropAction.this.getShapeList().isEmpty());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ifh
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                HandleImageDropAction.m37803n(HandleImageDropAction.this, (HandleImageDropAction) obj);
            }
        }).map(new C8776e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SaveExcerptCollectionArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final DragEventData getEvent() {
        return this.event;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: m */
    public final boolean m37804m() {
        return HandlerManager.checkNoteLayer$default(getEditorBundle().getUiBundle().getHandlerManager(), false, 1, null);
    }

    /* renamed from: o */
    public final Observable<List<Shape>> m37805o() {
        Debug.INSTANCE.m32035d(HandleImageDropAction.class, "docId not changed, " + EditorBundleKt.docId(getEditorBundle()) + ", paste excerpt shape image", new Object[0]);
        PasteImageShapeFromExcerptAction pasteImageShapeFromExcerptAction = new PasteImageShapeFromExcerptAction(getEditorBundle());
        pasteImageShapeFromExcerptAction.setArgs(this.args);
        Observable map = pasteImageShapeFromExcerptAction.build().map(C8777f.f48496e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<List<Shape>> m37806p() {
        List listOf;
        Debug.INSTANCE.m32035d(HandleImageDropAction.class, "docId " + EditorBundleKt.docId(getEditorBundle()) + ", paste normal image", new Object[0]);
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Uri.fromFile(new File(this.args.getSourceImgPath())));
        CreateImageShapeAction createImageShapeAction = new CreateImageShapeAction(editorBundle, listOf);
        createImageShapeAction.setInsertPoint(this.event.getTouchPoint());
        createImageShapeAction.setVirtualBoxInfo(this.args.getVirtualPageBoxInfo());
        createImageShapeAction.setStartTransform(false);
        Observable map = createImageShapeAction.build().map(C8778g.f48497e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<List<Shape>> m37807q() {
        Debug.INSTANCE.m32035d(HandleImageDropAction.class, "docId " + EditorBundleKt.docId(getEditorBundle()) + ", paste quote shape image", new Object[0]);
        SaveExcerptCollectionAction saveExcerptCollectionAction = new SaveExcerptCollectionAction(getEditorBundle());
        saveExcerptCollectionAction.setArgs(this.args);
        Observable map = saveExcerptCollectionAction.build().map(C8779h.f48498e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<HandleImageDropAction> m37808r(BoxInfo boxInfo) {
        RectF rectF;
        RectF rectF2;
        Observable<List<Shape>> m37806p;
        List emptyList;
        List emptyList2;
        if (this.args.getSourceImgPath().length() == 0) {
            Debug.INSTANCE.m32035d(HandleImageDropAction.class, "docId = " + EditorBundleKt.docId(getEditorBundle()) + ", imgPath empty, do not save", new Object[0]);
            Observable<HandleImageDropAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (boxInfo.getNoteInfo() == null) {
            Observable<HandleImageDropAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(boxInfo);
        Intent localIntent = this.event.getLocalIntent();
        SaveExcerptCollectionArgs saveExcerptCollectionArgs = this.args;
        String stringExtra = localIntent != null ? localIntent.getStringExtra(ExcerptConstants.ARGS_DOC_ID) : null;
        if (stringExtra == null) {
            stringExtra = EditorBundleKt.docId(getEditorBundle());
        }
        saveExcerptCollectionArgs.setSourceDocId(stringExtra);
        SaveExcerptCollectionArgs saveExcerptCollectionArgs2 = this.args;
        String stringExtra2 = localIntent != null ? localIntent.getStringExtra(ExcerptConstants.ARGS_SOURCE_SHAPE_ID) : null;
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        saveExcerptCollectionArgs2.setSourceShapeId(stringExtra2);
        SaveExcerptCollectionArgs saveExcerptCollectionArgs3 = this.args;
        String stringExtra3 = localIntent != null ? localIntent.getStringExtra(ExcerptConstants.ARGS_SOURCE_EXCERPT_QUOTE) : null;
        saveExcerptCollectionArgs3.setSourceExcerptQuote(stringExtra3 != null ? stringExtra3 : "");
        this.args.setSourceType(localIntent != null ? localIntent.getIntExtra(ExcerptConstants.ARGS_SOURCE_TYPE, 0) : 0);
        SaveExcerptCollectionArgs saveExcerptCollectionArgs4 = this.args;
        if (localIntent == null || (rectF = (RectF) IntentUtils.INSTANCE.getParcelableExtraCompat(localIntent, ExcerptConstants.ARGS_SOURCE_EXCERPT_INDICATOR_ANCHOR_RECT, RectF.class)) == null) {
            rectF = new RectF();
        }
        saveExcerptCollectionArgs4.setSourceExcerptQuoteIndicatorAnchorRect(rectF);
        SaveExcerptCollectionArgs saveExcerptCollectionArgs5 = this.args;
        if (localIntent == null || (rectF2 = (RectF) IntentUtils.INSTANCE.getParcelableExtraCompat(localIntent, ExcerptConstants.ARGS_SOURCE_SHAPE_RECT, RectF.class)) == null) {
            rectF2 = new RectF();
        }
        saveExcerptCollectionArgs5.setSourceRectF(rectF2);
        SaveExcerptCollectionArgs saveExcerptCollectionArgs6 = this.args;
        TouchPoint copy = this.event.getTouchPoint().copy();
        copy.applyMatrix(noteNormalizeMatrix);
        saveExcerptCollectionArgs6.setDownPoint(copy);
        this.args.setVirtualPageBoxInfo(boxInfo.copy());
        int sourceType = this.args.getSourceType();
        if (sourceType == 0) {
            m37806p = m37806p();
        } else if (sourceType == 1) {
            m37806p = Intrinsics.areEqual(this.args.getSourceDocId(), EditorBundleKt.docId(getEditorBundle())) ? m37805o() : m37807q();
        } else if (sourceType != 2) {
            if (sourceType != 3) {
                m37806p = m37806p();
            } else if (this.isFromSameEditor) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                m37806p = Observable.just(emptyList2);
                Intrinsics.checkNotNull(m37806p);
            } else {
                m37806p = m37805o();
            }
        } else if (this.isFromSameEditor) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            m37806p = Observable.just(emptyList);
            Intrinsics.checkNotNull(m37806p);
        } else {
            m37806p = m37806p();
        }
        Observable<HandleImageDropAction> map = m37806p.map(new C8780i()).doOnNext(new C8781j()).map(new C8782k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<HandleImageDropAction> m37809s() {
        Debug.INSTANCE.m32035d(HandleImageDropAction.class, "start handle, docId = " + EditorBundleKt.docId(getEditorBundle()), new Object[0]);
        ClipData.Item itemAt = this.event.getClipData().getItemAt(0);
        if (itemAt == null) {
            Observable<HandleImageDropAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SaveImageUriToFileAction saveImageUriToFileAction = new SaveImageUriToFileAction(getEditorBundle());
        List<Uri> uriList = saveImageUriToFileAction.getUriList();
        List singletonList = Collections.singletonList(itemAt.getUri());
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        uriList.addAll(singletonList);
        Observable map = saveImageUriToFileAction.build().map(new C8783l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
