package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.HitTestShapeRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "l", "m", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getHitTestVirtualPage", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setHitTestVirtualPage", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setHitTestShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "hitTestShape", "Lio/reactivex/rxjava3/functions/Predicate;", C4921e.f26537n, "Lio/reactivex/rxjava3/functions/Predicate;", "getPredicate", "()Lio/reactivex/rxjava3/functions/Predicate;", "setPredicate", "(Lio/reactivex/rxjava3/functions/Predicate;)V", "predicate", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HitTestShapeAction extends RxBaseAppAction<HitTestShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public BoxInfo hitTestVirtualPage;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Shape hitTestShape;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Predicate<Shape> predicate;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10101a<T, R> implements Function {
        public C10101a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull HitTestShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestShapeAction.this.m40248l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10102b<T, R> implements Function {
        public C10102b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestShapeAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestShapeAction.this.m40249m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10103c<T, R> implements Function {
        public C10103c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestShapeAction apply(@NotNull HitTestShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10104d<T> implements Consumer {
        public C10104d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestShapeAction.this.setHitTestVirtualPage(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10105e<T, R> implements Function {
        public C10105e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestShapeAction apply(@NotNull HitTestShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestShapeAction.this.setHitTestShape(it2.getHitTestShape());
            return HitTestShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestShapeAction(@NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HitTestShapeAction> create() {
        Observable<HitTestShapeAction> map = Observable.just(this).flatMap(new C10101a()).flatMap(new C10102b()).map(new C10103c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final Shape getHitTestShape() {
        return this.hitTestShape;
    }

    @Nullable
    public final BoxInfo getHitTestVirtualPage() {
        return this.hitTestVirtualPage;
    }

    @Nullable
    public final Predicate<Shape> getPredicate() {
        return this.predicate;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    /* renamed from: l */
    public final Observable<BoxInfo> m40248l() {
        Observable<BoxInfo> doOnNext = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, this.touchPoint).doOnNext(new C10104d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<HitTestShapeAction> m40249m() {
        BoxInfo boxInfo = this.hitTestVirtualPage;
        if (boxInfo == null) {
            Observable<HitTestShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BoxInfo noteInfo = boxInfo.getNoteInfo();
        if (noteInfo == null) {
            Observable<HitTestShapeAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        String id = noteInfo.getId();
        HitTestShapeRequest hitTestShapeRequest = new HitTestShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()));
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(boxInfo);
        TouchPoint copy = this.touchPoint.copy();
        copy.applyMatrix(noteNormalizeMatrix);
        hitTestShapeRequest.setTouchPoint(copy);
        hitTestShapeRequest.setPageUniqueId(id);
        hitTestShapeRequest.setHitTestRadius(AppConfig.INSTANCE.getHitTestShapeRadius() / noteInfo.getActualScale());
        hitTestShapeRequest.setPredicate(this.predicate);
        Observable<HitTestShapeAction> map = RxBaseAppActionKt.submitRequestToNote(this, hitTestShapeRequest).map(new C10105e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setHitTestShape(@Nullable Shape shape) {
        this.hitTestShape = shape;
    }

    public final void setHitTestVirtualPage(@Nullable BoxInfo boxInfo) {
        this.hitTestVirtualPage = boxInfo;
    }

    public final void setPredicate(@Nullable Predicate<Shape> predicate) {
        this.predicate = predicate;
    }
}
