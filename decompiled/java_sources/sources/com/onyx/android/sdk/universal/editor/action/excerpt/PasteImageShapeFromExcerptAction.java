package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptCollectionArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadShapeRequest;
import com.onyx.android.sdk.note.request.excerpt.PasteImageShapeFromExcerptRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/PasteImageShapeFromExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "args", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;", "setArgs", "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V", "Landroid/graphics/RectF;", C6999h.f39688c, "Landroid/graphics/RectF;", "sourceRectF", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PasteImageShapeFromExcerptAction extends RxBaseAppAction<PasteImageShapeFromExcerptAction> {
    public SaveExcerptCollectionArgs args;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public RectF sourceRectF;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8816a<T> implements Consumer {
        public C8816a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PasteImageShapeFromExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PasteImageShapeFromExcerptAction pasteImageShapeFromExcerptAction = PasteImageShapeFromExcerptAction.this;
            pasteImageShapeFromExcerptAction.sourceRectF = pasteImageShapeFromExcerptAction.getArgs().getSourceRectF();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8817b<T, R> implements Function {
        public C8817b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PasteImageShapeFromExcerptAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteImageShapeFromExcerptAction.this.m37870m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8818c<T, R> implements Function {
        public C8818c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull PasteImageShapeFromExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PasteImageShapeFromExcerptAction pasteImageShapeFromExcerptAction = PasteImageShapeFromExcerptAction.this;
            return EditorShapesActionsKt.addShapeAndForceRenderNote(pasteImageShapeFromExcerptAction, pasteImageShapeFromExcerptAction.getArgs().getVirtualPageBoxInfo(), PasteImageShapeFromExcerptAction.this.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8819d<T, R> implements Function {
        public C8819d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PasteImageShapeFromExcerptAction apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteImageShapeFromExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8820e<T, R> implements Function {
        public C8820e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PasteImageShapeFromExcerptAction apply(@NotNull PasteImageShapeFromExcerptRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PasteImageShapeFromExcerptAction.this.setShapeList(it2.getShapeList());
            return PasteImageShapeFromExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8821f<T, R> implements Function {
        public C8821f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PasteImageShapeFromExcerptAction apply(@NotNull LoadShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PasteImageShapeFromExcerptAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasteImageShapeFromExcerptAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.sourceRectF = new RectF();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapeList = emptyList;
    }

    /* renamed from: o */
    public static final void m37869o(PasteImageShapeFromExcerptAction this$0, LoadShapeRequest it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Shape shape = it2.getShape();
        Intrinsics.checkNotNull(shape);
        this$0.sourceRectF = shape.getOriginRect();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PasteImageShapeFromExcerptAction> create() {
        Observable doOnNext = Observable.just(this).doOnNext(new C8816a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<PasteImageShapeFromExcerptAction> map = RxjavaKt.flatMapIf(doOnNext, new Function1<PasteImageShapeFromExcerptAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PasteImageShapeFromExcerptAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                boolean z = false;
                if (PasteImageShapeFromExcerptAction.this.getArgs().getSourceRectF().isEmpty()) {
                    if (PasteImageShapeFromExcerptAction.this.getArgs().getSourceShapeId().length() > 0) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }, new Function1<PasteImageShapeFromExcerptAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull PasteImageShapeFromExcerptAction it2) {
                Observable<? extends Object> m37871n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37871n = PasteImageShapeFromExcerptAction.this.m37871n();
                return m37871n;
            }
        }).flatMap(new C8817b()).flatMap(new C8818c()).map(new C8819d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SaveExcerptCollectionArgs getArgs() {
        SaveExcerptCollectionArgs saveExcerptCollectionArgs = this.args;
        if (saveExcerptCollectionArgs != null) {
            return saveExcerptCollectionArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("args");
        return null;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: m */
    public final Observable<PasteImageShapeFromExcerptAction> m37870m() {
        BoxInfo virtualPageBoxInfo = getArgs().getVirtualPageBoxInfo();
        if (virtualPageBoxInfo == null || virtualPageBoxInfo.getNoteInfo() == null) {
            Observable<PasteImageShapeFromExcerptAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        PasteImageShapeFromExcerptRequest pasteImageShapeFromExcerptRequest = new PasteImageShapeFromExcerptRequest(EditorBundleKt.noteBundle(getEditorBundle()), getArgs().getSourceImgPath(), getArgs().getDownPoint().copy());
        pasteImageShapeFromExcerptRequest.setSourceRectF(RectFKt.copy(this.sourceRectF));
        Observable<PasteImageShapeFromExcerptAction> map = RxBaseAppActionKt.submitRequestToNote(this, pasteImageShapeFromExcerptRequest).map(new C8820e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<PasteImageShapeFromExcerptAction> m37871n() {
        Observable<PasteImageShapeFromExcerptAction> map = RxjavaKt.doOnNextIf(RxBaseAppActionKt.submitRequestToNote(this, new LoadShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), getArgs().getSourceShapeId())), new Function1<LoadShapeRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.PasteImageShapeFromExcerptAction$querySourceShape$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LoadShapeRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getShape() != null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.dzk
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PasteImageShapeFromExcerptAction.m37869o(PasteImageShapeFromExcerptAction.this, (LoadShapeRequest) obj);
            }
        }).map(new C8821f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setArgs(@NotNull SaveExcerptCollectionArgs saveExcerptCollectionArgs) {
        Intrinsics.checkNotNullParameter(saveExcerptCollectionArgs, "<set-?>");
        this.args = saveExcerptCollectionArgs;
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
