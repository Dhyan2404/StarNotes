package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.excerpt.SaveRectExcerptArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.SaveRectExcerptRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.events.note.ExcerptInsertedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.excerpt.SaveRegionScreenshotRequest;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "safeBitmap", "m", "l", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;)V", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "excerptInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "setExcerptInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", "i", "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", "getResult", "()Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", "setResult", "(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveRectExcerptAction extends RxBaseAppAction<SaveRectExcerptAction> {
    public SaveRectExcerptArgs args;
    public ExcerptInfoBean excerptInfoBean;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public AddShapesBackgroundResultBean result;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8831a<T, R> implements Function {
        public C8831a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveRectExcerptAction> apply(@NotNull SafeBitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveRectExcerptAction.this.m37891m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8832b<T, R> implements Function {
        public C8832b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveRectExcerptAction> apply(@NotNull SaveRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveRectExcerptAction.this.m37890l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8833c<T, R> implements Function {
        public C8833c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull SaveRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveRectExcerptAction saveRectExcerptAction = SaveRectExcerptAction.this;
            return EditorShapesActionsKt.addShapeAndForceRenderNote(saveRectExcerptAction, saveRectExcerptAction.getArgs().getVirtualPageBoxInfo(), SaveRectExcerptAction.this.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8834d<T> implements Consumer {
        public C8834d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveRectExcerptAction.this.setResult(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8835e<T, R> implements Function {
        public C8835e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveRectExcerptAction apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveRectExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8836f<T> implements Consumer {
        public C8836f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveRectExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(SaveRectExcerptAction.this.getEditorBundle(), new ExcerptInsertedEvent(SaveRectExcerptAction.this.getExcerptInfoBean()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$g */
    /* loaded from: classes8.dex */
    public static final class C8837g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SaveRegionScreenshotRequest f48576f;

        public C8837g(SaveRegionScreenshotRequest saveRegionScreenshotRequest) {
            this.f48576f = saveRegionScreenshotRequest;
        }

        /* renamed from: a */
        public final void m37898a(@NotNull SaveRegionScreenshotRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveRectExcerptAction.this.getArgs().setImgPath(this.f48576f.getImgPath());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37898a((SaveRegionScreenshotRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$h */
    /* loaded from: classes8.dex */
    public static final class C8838h<T, R> implements Function {
        public C8838h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveRectExcerptAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveRectExcerptAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveRectExcerptAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.shapeList = new ArrayList();
        this.result = new AddShapesBackgroundResultBean();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveRectExcerptAction> create() {
        if (!getArgs().getRegionInViewport().isEmpty()) {
            Observable<SaveRectExcerptAction> map = DisplayActionsKt.createSnapshot(getEditorBundle()).flatMap(new C8831a()).observeOn(getMainUIScheduler()).flatMap(new C8832b()).flatMap(new C8833c()).doOnNext(new C8834d()).map(new C8835e());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Debug.INSTANCE.m32044e(SaveRectExcerptAction.class, "Unexpected empty excerpt rect in saving.", new Object[0]);
        Observable<SaveRectExcerptAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final SaveRectExcerptArgs getArgs() {
        SaveRectExcerptArgs saveRectExcerptArgs = this.args;
        if (saveRectExcerptArgs != null) {
            return saveRectExcerptArgs;
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
    public final AddShapesBackgroundResultBean getResult() {
        return this.result;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final Observable<SaveRectExcerptAction> m37890l() {
        String imgPath = getArgs().getImgPath();
        if (imgPath == null || imgPath.length() == 0) {
            Debug.INSTANCE.m32059w(SaveRectExcerptAction.class, "imgPath empty.", new Object[0]);
            Observable<SaveRectExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final SaveRectExcerptRequest saveRectExcerptRequest = new SaveRectExcerptRequest(getEditorBundle().getWorkBundle().getNoteBundle());
        saveRectExcerptRequest.setArgs(getArgs());
        Observable<SaveRectExcerptAction> doOnNext = RxBaseAppActionKt.submitRequestToNote(this, saveRectExcerptRequest).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$saveRectExcerpt$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends SaveRectExcerptAction> apply(@NotNull SaveRectExcerptRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                final SaveRectExcerptAction saveRectExcerptAction = SaveRectExcerptAction.this;
                final SaveRectExcerptRequest saveRectExcerptRequest2 = saveRectExcerptRequest;
                return DocCommonActionsKt.createCoreObservable(saveRectExcerptAction, new Function1<WorkBundle, SaveRectExcerptAction>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction$saveRectExcerpt$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final SaveRectExcerptAction invoke(@NotNull WorkBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        SaveRectExcerptAction.this.setShapeList(saveRectExcerptRequest2.getShapeList());
                        SaveRectExcerptAction.this.setExcerptInfoBean(saveRectExcerptRequest2.getExcerptInfoBean());
                        SaveRectExcerptAction.this.getExcerptInfoBean().setPageIndex(SaveRectExcerptAction.this.getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex(SaveRectExcerptAction.this.getExcerptInfoBean().getPageUniqueId()));
                        return SaveRectExcerptAction.this;
                    }
                });
            }
        }).doOnNext(new C8836f());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<SaveRectExcerptAction> m37891m(SafeBitmap safeBitmap) {
        Bitmap bitmap = safeBitmap.getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            Observable<SaveRectExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SaveRegionScreenshotRequest saveRegionScreenshotRequest = new SaveRegionScreenshotRequest(getEditorBundle().getWorkBundle());
        saveRegionScreenshotRequest.setRegionInViewport(getArgs().getRegionInViewport());
        saveRegionScreenshotRequest.setViewBitmap(bitmap);
        Observable<SaveRectExcerptAction> map = RxBaseAppActionKt.submitRequestToCore(this, saveRegionScreenshotRequest).map(new C8837g(saveRegionScreenshotRequest)).map(new C8838h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setArgs(@NotNull SaveRectExcerptArgs saveRectExcerptArgs) {
        Intrinsics.checkNotNullParameter(saveRectExcerptArgs, "<set-?>");
        this.args = saveRectExcerptArgs;
    }

    public final void setExcerptInfoBean(@NotNull ExcerptInfoBean excerptInfoBean) {
        Intrinsics.checkNotNullParameter(excerptInfoBean, "<set-?>");
        this.excerptInfoBean = excerptInfoBean;
    }

    public final void setResult(@NotNull AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
        Intrinsics.checkNotNullParameter(addShapesBackgroundResultBean, "<set-?>");
        this.result = addShapesBackgroundResultBean;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
