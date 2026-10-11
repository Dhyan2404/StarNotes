package com.onyx.android.sdk.universal.editor.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.ObservableUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R$\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "p", "setTouchPoint", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "ensureBoxInfo", "", "isInsideHitBox", "m", C4921e.f26528e, "", C6999h.f39688c, "F", "getX", "()F", "setX", "(F)V", "x", "i", "getY", "setY", "y", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "boxInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHitTestVisibleBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestVisibleBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n288#2,2:69\n*S KotlinDebug\n*F\n+ 1 HitTestVisibleBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction\n*L\n52#1:69,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HitTestVisibleBoxAction extends RxBaseAppAction<HitTestVisibleBoxAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public float x;

    /* renamed from: i, reason: from kotlin metadata */
    public float y;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public BoxInfo boxInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction$a */
    /* loaded from: classes8.dex */
    public static final class C8191a<T, R> implements Function {
        public C8191a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestVisibleBoxAction> apply(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxAction.this.m36781p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction$b */
    /* loaded from: classes8.dex */
    public static final class C8192b<T, R> implements Function {
        public C8192b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxAction.this.m36779m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction$c */
    /* loaded from: classes8.dex */
    public static final class C8193c<T, R> implements Function {
        public C8193c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestVisibleBoxAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxAction.this.m36780o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction$d */
    /* loaded from: classes8.dex */
    public static final class C8194d<T, R> implements Function {
        public C8194d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestVisibleBoxAction apply(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestVisibleBoxAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestVisibleBoxAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    /* renamed from: n */
    public static final boolean m36778n(HitTestVisibleBoxAction this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return !this$0.getEditorBundle().getUiBundle().getUiStateInfo().getIsScaleEnding();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HitTestVisibleBoxAction> create() {
        Observable<HitTestVisibleBoxAction> map = Observable.just(this).flatMap(new C8191a()).flatMap(new C8192b()).flatMap(new C8193c()).map(new C8194d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final BoxInfo ensureBoxInfo() {
        BoxInfo boxInfo = this.boxInfo;
        return boxInfo == null ? new BoxInfo() : boxInfo;
    }

    @Nullable
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public final boolean isInsideHitBox() {
        BoxInfo boxInfo = this.boxInfo;
        if (boxInfo == null) {
            return false;
        }
        Intrinsics.checkNotNull(boxInfo);
        return boxInfo.getVisibleRect().contains(this.x, this.y);
    }

    /* renamed from: m */
    public final Observable<?> m36779m() {
        if (getEditorBundle().getUiBundle().getUiStateInfo().getIsScaleEnding()) {
            return ObservableUtils.INSTANCE.shortPollingOnMainThread(new Predicate() { // from class: com.sunia.HTREnginev2.gzh
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(Object obj) {
                    boolean m36778n;
                    m36778n = HitTestVisibleBoxAction.m36778n(HitTestVisibleBoxAction.this, ((Long) obj).longValue());
                    return m36778n;
                }
            });
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: o */
    public final Observable<HitTestVisibleBoxAction> m36780o() {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((BoxInfo) obj).getVisibleRect().contains(this.x, this.y)) {
                break;
            }
        }
        this.boxInfo = (BoxInfo) obj;
        Observable<HitTestVisibleBoxAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: p */
    public final Observable<HitTestVisibleBoxAction> m36781p() {
        if (!EditorBundleKt.stopScroll(getEditorBundle())) {
            Observable<HitTestVisibleBoxAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Debug.INSTANCE.m32035d(HitTestVisibleBoxAction.class, "stop scroll success", new Object[0]);
        Observable<HitTestVisibleBoxAction> just2 = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    public final void setBoxInfo(@Nullable BoxInfo boxInfo) {
        this.boxInfo = boxInfo;
    }

    @NotNull
    public final HitTestVisibleBoxAction setTouchPoint(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        this.x = p.getX();
        this.y = p.getY();
        return this;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }
}
