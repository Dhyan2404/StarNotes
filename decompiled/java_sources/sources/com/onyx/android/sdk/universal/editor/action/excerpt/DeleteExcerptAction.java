package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.DeleteExcerptResult;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.DeleteExcerptListRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptResultEvent;
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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/request/excerpt/DeleteExcerptListRequest;", "l", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;", "i", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;", "resultEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteExcerptAction extends RxBaseAppAction<DeleteExcerptAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public DeleteExcerptResultEvent resultEvent;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8711a<T, R> implements Function {
        public C8711a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteExcerptListRequest> apply(@NotNull DeleteExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptAction.this.m37710l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8712b<T, R> implements Function {
        public C8712b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull DeleteExcerptListRequest it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteExcerptAction deleteExcerptAction = DeleteExcerptAction.this;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(deleteExcerptAction.hitTestShape);
            return ComputeBoxListActionsKt.findVisibleBoxInfoList((RxBaseAppAction<?>) deleteExcerptAction, (List<? extends Shape>) listOf);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8713c<T, R> implements Function {

        /* renamed from: e */
        public static final C8713c<T, R> f48394e = new C8713c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8714d<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$d$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ BoxInfo f48396e;

            public a(BoxInfo boxInfo) {
                this.f48396e = boxInfo;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final BoxInfo apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f48396e;
            }
        }

        public C8714d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull BoxInfo boxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            DeleteExcerptAction deleteExcerptAction = DeleteExcerptAction.this;
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(deleteExcerptAction, boxInfo, deleteExcerptAction.hitTestShape).map(new a(boxInfo));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8715e<T, R> implements Function {
        public C8715e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CommonEditorActionsKt.updateVirtualPage(DeleteExcerptAction.this, it2.getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8716f<T, R> implements Function {
        public C8716f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteExcerptAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptAction.this.m37711m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$g */
    /* loaded from: classes8.dex */
    public static final class C8717g<T, R> implements Function {
        public C8717g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteExcerptAction apply(@NotNull DeleteExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptAction.this.m37712n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$h */
    /* loaded from: classes8.dex */
    public static final class C8718h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ DeleteExcerptListRequest f48400e;

        /* renamed from: f */
        public final /* synthetic */ DeleteExcerptAction f48401f;

        public C8718h(DeleteExcerptListRequest deleteExcerptListRequest, DeleteExcerptAction deleteExcerptAction) {
            this.f48400e = deleteExcerptListRequest;
            this.f48401f = deleteExcerptAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteExcerptListRequest it2) {
            Object firstOrNull;
            DeleteExcerptResult deleteExcerptResult;
            Intrinsics.checkNotNullParameter(it2, "it");
            Set<Map.Entry<Shape, DeleteExcerptResult>> entrySet = this.f48400e.getResultMap().entrySet();
            Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(entrySet);
            Map.Entry entry = (Map.Entry) firstOrNull;
            if (entry == null || (deleteExcerptResult = (DeleteExcerptResult) entry.getValue()) == null) {
                return;
            }
            this.f48401f.resultEvent = new DeleteExcerptResultEvent(deleteExcerptResult);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$i */
    /* loaded from: classes8.dex */
    public static final class C8719i<T, R> implements Function {

        /* renamed from: e */
        public static final C8719i<T, R> f48402e = new C8719i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$j */
    /* loaded from: classes8.dex */
    public static final class C8720j<T, R> implements Function {
        public C8720j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteExcerptAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteExcerptAction(@NotNull EditorBundle editorBundle, @NotNull Shape hitTestShape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        this.hitTestShape = hitTestShape;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteExcerptAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C8711a()).flatMap(new C8712b()).flatMap(C8713c.f48394e).flatMap(new C8714d()).flatMap(new C8715e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<DeleteExcerptAction> map = RxjavaKt.takeLastOne(flatMap).flatMap(new C8716f()).map(new C8717g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<DeleteExcerptListRequest> m37710l() {
        List listOfNotNull;
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.hitTestShape);
        DeleteExcerptListRequest deleteExcerptListRequest = new DeleteExcerptListRequest(noteBundle, listOfNotNull);
        Observable<DeleteExcerptListRequest> doOnNext = RxBaseAppActionKt.submitRequestToNote(this, deleteExcerptListRequest).doOnNext(new C8718h(deleteExcerptListRequest, this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<DeleteExcerptAction> m37711m() {
        List listOf;
        DeleteExcerptResult deleteExcerptResult;
        ExcerptInfoBean excerptInfoBean;
        DeleteExcerptResultEvent deleteExcerptResultEvent = this.resultEvent;
        if (!Intrinsics.areEqual(this.hitTestShape.getShapeUniqueId(), (deleteExcerptResultEvent == null || (deleteExcerptResult = deleteExcerptResultEvent.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String()) == null || (excerptInfoBean = deleteExcerptResult.getExcerptInfoBean()) == null) ? null : excerptInfoBean.getUniqueId()) || !this.hitTestShape.hasReferenceShapeBeanList()) {
            Observable<DeleteExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.hitTestShape);
        Observable<R> map = new GetReferenceShapeAction(editorBundle, listOf).build().map(C8719i.f48402e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$deleteReferenceShapes$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction$deleteReferenceShapes$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DeleteShapesAction deleteShapesAction = new DeleteShapesAction(DeleteExcerptAction.this.getEditorBundle(), it2, false, false, 12, null);
                deleteShapesAction.setRender(true);
                return deleteShapesAction.build();
            }
        }).map(new C8720j());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: n */
    public final DeleteExcerptAction m37712n() {
        DeleteExcerptResultEvent deleteExcerptResultEvent = this.resultEvent;
        if (deleteExcerptResultEvent != null) {
            EditorBundleKt.postEvent(getEditorBundle(), deleteExcerptResultEvent);
        }
        return this;
    }
}
