package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadShapeRequest;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeInPageAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.ShowShapeHighlightAnimationEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b!\u0010\"J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;", OcrValues.LANG_ITALIAN, "m", "", "q", "", C6999h.f39688c, Constants.STRING_SIG, "getShapeId", "()Ljava/lang/String;", "shapeId", "", "i", Constants.HASIDCALL_INDEX_SIG, "getShowHighlightAnimation", Constants.BOOLEAN_VALUE_SIG, "showHighlightAnimation", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoShapeAction extends RxBaseAppAction<GotoShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String shapeId;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean showHighlightAnimation;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8751a<T, R> implements Function {
        public C8751a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoShapeAction> apply(@NotNull GotoShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAction.this.m37767p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C8752b<T, R> implements Function {
        public C8752b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoShapeAction> apply(@NotNull GotoShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAction.this.m37766o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C8753c<T, R> implements Function {
        public C8753c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeAction apply(@NotNull GotoShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C8754d<T, R> implements Function {
        public C8754d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeAction apply(@NotNull LocateShapeInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C8755e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f48460f;

        public C8755e(Shape shape) {
            this.f48460f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoShapeAction> apply(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAction.this.m37765m(this.f48460f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C8756f<T, R> implements Function {
        public C8756f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeAction apply(@NotNull LoadShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoShapeAction.this.setShape(it2.getShape());
            return GotoShapeAction.this;
        }
    }

    public /* synthetic */ GotoShapeAction(EditorBundle editorBundle, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, (i & 4) != 0 ? true : z);
    }

    /* renamed from: n */
    public static final void m37764n(GotoShapeAction this$0, Shape shape, LocateShapeInPageAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shape, "$shape");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m37768q(shape);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoShapeAction> create() {
        Observable<GotoShapeAction> map = Observable.just(this).flatMap(new C8751a()).flatMap(new C8752b()).map(new C8753c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final String getShapeId() {
        return this.shapeId;
    }

    public final boolean getShowHighlightAnimation() {
        return this.showHighlightAnimation;
    }

    /* renamed from: m */
    public final Observable<GotoShapeAction> m37765m(final Shape shape, FindBoxInfoByNotePageIdRequest it2) {
        String id;
        BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
        if (virtualPageBoxInfo == null || (id = virtualPageBoxInfo.getId()) == null) {
            Observable<GotoShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<GotoShapeAction> map = RxjavaKt.doOnNextIf(new LocateShapeInPageAction(getEditorBundle(), id, shape).build(), new Function1<LocateShapeInPageAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction$gotoPageById$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LocateShapeInPageAction it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(GotoShapeAction.this.getShowHighlightAnimation());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.s4h
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                GotoShapeAction.m37764n(GotoShapeAction.this, shape, (LocateShapeInPageAction) obj);
            }
        }).map(new C8754d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<GotoShapeAction> m37766o() {
        Shape shape = this.shape;
        if (shape == null) {
            Observable<GotoShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<GotoShapeAction> flatMap = RxBaseAppActionKt.submitRequestToCore(this, new FindBoxInfoByNotePageIdRequest(getEditorBundle().getWorkBundle(), shape.getPageUniqueId())).flatMap(new C8755e(shape));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: p */
    public final Observable<GotoShapeAction> m37767p() {
        Observable<GotoShapeAction> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.shapeId)).map(new C8756f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final void m37768q(Shape shape) {
        EditorBundleKt.postEvent(getEditorBundle(), new ShowShapeHighlightAnimationEvent(shape));
    }

    public final void setShape(@Nullable Shape shape) {
        this.shape = shape;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoShapeAction(@NotNull EditorBundle editorBundle, @NotNull String shapeId, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        this.shapeId = shapeId;
        this.showHighlightAnimation = z;
    }
}
