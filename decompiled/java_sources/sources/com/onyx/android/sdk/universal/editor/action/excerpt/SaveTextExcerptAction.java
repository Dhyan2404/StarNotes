package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.note.common.data.excerpt.SaveTextExcerptArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.SaveTextExcerptRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.ExcerptInsertedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.excerpt.SaveTextExcerptScreenshotRequest;
import com.sun.org.apache.bcel.internal.Constants;
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

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "l", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "excerptInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "setExcerptInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveTextExcerptAction extends RxBaseAppAction<SaveTextExcerptAction> {
    public SaveTextExcerptArgs args;
    public ExcerptInfoBean excerptInfoBean;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8840a<T, R> implements Function {
        public C8840a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveTextExcerptAction> apply(@NotNull SaveTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveTextExcerptAction.this.m37902m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8841b<T, R> implements Function {
        public C8841b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveTextExcerptAction> apply(@NotNull SaveTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveTextExcerptAction.this.m37901l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8842c<T, R> implements Function {
        public C8842c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull SaveTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveTextExcerptAction saveTextExcerptAction = SaveTextExcerptAction.this;
            return EditorShapesActionsKt.addShapeAndForceRenderNote(saveTextExcerptAction, saveTextExcerptAction.getArgs().getVirtualPageBoxInfo(), SaveTextExcerptAction.this.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8843d<T, R> implements Function {
        public C8843d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveTextExcerptAction apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveTextExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8844e<T> implements Consumer {
        public C8844e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(SaveTextExcerptAction.this.getEditorBundle(), new ExcerptInsertedEvent(SaveTextExcerptAction.this.getExcerptInfoBean()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8845f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SaveTextExcerptScreenshotRequest f48587f;

        public C8845f(SaveTextExcerptScreenshotRequest saveTextExcerptScreenshotRequest) {
            this.f48587f = saveTextExcerptScreenshotRequest;
        }

        /* renamed from: a */
        public final void m37908a(@NotNull SaveTextExcerptScreenshotRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveTextExcerptAction.this.getArgs().setImgPath(this.f48587f.getImgPath());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37908a((SaveTextExcerptScreenshotRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$g */
    /* loaded from: classes8.dex */
    public static final class C8846g<T, R> implements Function {
        public C8846g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveTextExcerptAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveTextExcerptAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveTextExcerptAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.shapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveTextExcerptAction> create() {
        Observable<SaveTextExcerptAction> map = Observable.just(this).flatMap(new C8840a()).flatMap(new C8841b()).flatMap(new C8842c()).map(new C8843d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SaveTextExcerptArgs getArgs() {
        SaveTextExcerptArgs saveTextExcerptArgs = this.args;
        if (saveTextExcerptArgs != null) {
            return saveTextExcerptArgs;
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
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final Observable<SaveTextExcerptAction> m37901l() {
        String imgPath = getArgs().getImgPath();
        if (imgPath == null || imgPath.length() == 0) {
            Debug.INSTANCE.m32059w(SaveTextExcerptAction.class, "imgPath empty.", new Object[0]);
            Observable<SaveTextExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final SaveTextExcerptRequest saveTextExcerptRequest = new SaveTextExcerptRequest(getEditorBundle().getWorkBundle().getNoteBundle());
        saveTextExcerptRequest.setArgs(getArgs());
        Observable<SaveTextExcerptAction> doOnNext = RxBaseAppActionKt.submitRequestToCore(this, saveTextExcerptRequest).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$saveTextExcerpt$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends SaveTextExcerptAction> apply(@NotNull SaveTextExcerptRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                final SaveTextExcerptAction saveTextExcerptAction = SaveTextExcerptAction.this;
                final SaveTextExcerptRequest saveTextExcerptRequest2 = saveTextExcerptRequest;
                return DocCommonActionsKt.createCoreObservable(saveTextExcerptAction, new Function1<WorkBundle, SaveTextExcerptAction>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction$saveTextExcerpt$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final SaveTextExcerptAction invoke(@NotNull WorkBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        SaveTextExcerptAction.this.setShapeList(saveTextExcerptRequest2.getShapeList());
                        SaveTextExcerptAction.this.setExcerptInfoBean(saveTextExcerptRequest2.getExcerptInfoBean());
                        SaveTextExcerptAction.this.getExcerptInfoBean().setPageIndex(SaveTextExcerptAction.this.getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex(SaveTextExcerptAction.this.getExcerptInfoBean().getPageUniqueId()));
                        return SaveTextExcerptAction.this;
                    }
                });
            }
        }).doOnNext(new C8844e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<SaveTextExcerptAction> m37902m() {
        SliceInfo displayContentSlice$default = RenderManager.getDisplayContentSlice$default(EditorBundleKt.renderManager(getEditorBundle()), getArgs().getVirtualPageBoxInfo(), false, 2, null);
        if (displayContentSlice$default == null) {
            Observable<SaveTextExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SaveTextExcerptScreenshotRequest saveTextExcerptScreenshotRequest = new SaveTextExcerptScreenshotRequest(getEditorBundle().getWorkBundle(), getArgs().getVirtualPageBoxInfo(), displayContentSlice$default);
        saveTextExcerptScreenshotRequest.setDisplayRectFList(getArgs().getDisplayRectFList());
        saveTextExcerptScreenshotRequest.setWritingMode(getArgs().getCom.sunia.HTREnginev2.gon.T java.lang.String());
        Observable<SaveTextExcerptAction> map = RxBaseAppActionKt.submitRequestToCore(this, saveTextExcerptScreenshotRequest).map(new C8845f(saveTextExcerptScreenshotRequest)).map(new C8846g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setArgs(@NotNull SaveTextExcerptArgs saveTextExcerptArgs) {
        Intrinsics.checkNotNullParameter(saveTextExcerptArgs, "<set-?>");
        this.args = saveTextExcerptArgs;
    }

    public final void setExcerptInfoBean(@NotNull ExcerptInfoBean excerptInfoBean) {
        Intrinsics.checkNotNullParameter(excerptInfoBean, "<set-?>");
        this.excerptInfoBean = excerptInfoBean;
    }

    public final void setShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
