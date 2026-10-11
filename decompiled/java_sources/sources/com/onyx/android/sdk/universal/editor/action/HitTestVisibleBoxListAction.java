package com.onyx.android.sdk.universal.editor.action;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ObservableUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxListAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "m", C4921e.f26528e, "Landroid/graphics/RectF;", C6999h.f39688c, "Landroid/graphics/RectF;", "getScreenRectF", "()Landroid/graphics/RectF;", "screenRectF", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Ljava/util/List;", "getBoxList", "()Ljava/util/List;", "setBoxList", "(Ljava/util/List;)V", "boxList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HitTestVisibleBoxListAction extends RxBaseAppAction<HitTestVisibleBoxListAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RectF screenRectF;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<BoxInfo> boxList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxListAction$a */
    /* loaded from: classes8.dex */
    public static final class C8195a<T, R> implements Function {
        public C8195a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestVisibleBoxListAction> apply(@NotNull HitTestVisibleBoxListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxListAction.this.m36790p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxListAction$b */
    /* loaded from: classes8.dex */
    public static final class C8196b<T, R> implements Function {
        public C8196b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull HitTestVisibleBoxListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxListAction.this.m36788m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxListAction$c */
    /* loaded from: classes8.dex */
    public static final class C8197c<T, R> implements Function {
        public C8197c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestVisibleBoxListAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxListAction.this.m36789o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxListAction$d */
    /* loaded from: classes8.dex */
    public static final class C8198d<T, R> implements Function {
        public C8198d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestVisibleBoxListAction apply(@NotNull HitTestVisibleBoxListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxListAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestVisibleBoxListAction(@NotNull EditorBundle editorBundle, @NotNull RectF screenRectF) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(screenRectF, "screenRectF");
        this.screenRectF = screenRectF;
        this.boxList = new ArrayList();
    }

    /* renamed from: n */
    public static final boolean m36787n(HitTestVisibleBoxListAction this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return !this$0.getEditorBundle().getUiBundle().getUiStateInfo().getIsScaleEnding();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HitTestVisibleBoxListAction> create() {
        Observable<HitTestVisibleBoxListAction> map = Observable.just(this).flatMap(new C8195a()).flatMap(new C8196b()).flatMap(new C8197c()).map(new C8198d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<BoxInfo> getBoxList() {
        return this.boxList;
    }

    @NotNull
    public final RectF getScreenRectF() {
        return this.screenRectF;
    }

    /* renamed from: m */
    public final Observable<?> m36788m() {
        if (getEditorBundle().getUiBundle().getUiStateInfo().getIsScaleEnding()) {
            return ObservableUtils.INSTANCE.shortPollingOnMainThread(new Predicate() { // from class: com.sunia.HTREnginev2.hzh
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(Object obj) {
                    boolean m36787n;
                    m36787n = HitTestVisibleBoxListAction.m36787n(HitTestVisibleBoxListAction.this, ((Long) obj).longValue());
                    return m36787n;
                }
            });
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: o */
    public final Observable<HitTestVisibleBoxListAction> m36789o() {
        this.boxList.addAll(EditorBundleKt.findIntersectsVisibleBoxList(getEditorBundle(), this.screenRectF));
        Observable<HitTestVisibleBoxListAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: p */
    public final Observable<HitTestVisibleBoxListAction> m36790p() {
        if (!EditorBundleKt.stopScroll(getEditorBundle())) {
            Observable<HitTestVisibleBoxListAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Debug.INSTANCE.m32035d(HitTestVisibleBoxListAction.class, "stop scroll success", new Object[0]);
        Observable<HitTestVisibleBoxListAction> just2 = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    public final void setBoxList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.boxList = list;
    }
}
