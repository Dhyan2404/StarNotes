package com.onyx.android.sdk.universal.editor.action.selection;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptDragAndDropAction;
import com.onyx.android.sdk.universal.editor.action.image.StartImageDragAndDropAction;
import com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction;
import com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestShapeAndStartTransformAction;
import com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction;
import com.onyx.android.sdk.universal.editor.events.app.ShowLongPressPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010\u001b\u001a\u00020\u0016¢\u0006\u0004\bC\u0010DJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0011H\u0002J\b\u0010\u0015\u001a\u00020\u0011H\u0002R\u0017\u0010\u001b\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R$\u0010*\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u00102\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010@\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "q", "y", "p", "", "l", "w", "x", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "m", "v", "", "s", "t", "u", "r", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getHitTestVirtualPage", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setHitTestVirtualPage", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "hitTestVirtualPage", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setHitTestShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "hitTestShape", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", C4921e.f26537n, "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getTextSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setTextSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "textSelection", "", Constants.STRING_SIG, "getTextSelectionContentPath", "()Ljava/lang/String;", "setTextSelectionContentPath", "(Ljava/lang/String;)V", "textSelectionContentPath", "", "I", "getStartDragExcerptTimerKey", "()I", "setStartDragExcerptTimerKey", "(I)V", "startDragExcerptTimerKey", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LongPressAction extends RxBaseAppAction<LongPressAction> {

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
    public ReaderSelection textSelection;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String textSelectionContentPath;

    /* renamed from: m, reason: from kotlin metadata */
    public int startDragExcerptTimerKey;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$a */
    /* loaded from: classes8.dex */
    public static final class C9899a<T, R> implements Function {
        public C9899a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LongPressAction> apply(@NotNull LongPressAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this.m39895y();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$b */
    /* loaded from: classes8.dex */
    public static final class C9900b<T, R> implements Function {
        public C9900b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LongPressAction> apply(@NotNull LongPressAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this.m39886p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$c */
    /* loaded from: classes8.dex */
    public static final class C9901c<T, R> implements Function {
        public C9901c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull LongPressAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$d */
    /* loaded from: classes8.dex */
    public static final class C9902d<T, R> implements Function {
        public C9902d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull GotoLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$e */
    /* loaded from: classes8.dex */
    public static final class C9903e<T, R> implements Function {
        public C9903e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull StartExcerptDragAndDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$f */
    /* loaded from: classes8.dex */
    public static final class C9904f<T, R> implements Function {
        public C9904f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull HandleHitTestShapeAndStartTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$g */
    /* loaded from: classes8.dex */
    public static final class C9905g<T, R> implements Function {
        public C9905g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull StartImageDragAndDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$h */
    /* loaded from: classes8.dex */
    public static final class C9906h<T, R> implements Function {
        public C9906h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull HitTestShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LongPressAction.this.setHitTestVirtualPage(it2.getHitTestVirtualPage());
            LongPressAction.this.setHitTestShape(it2.getHitTestShape());
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$i */
    /* loaded from: classes8.dex */
    public static final class C9907i<T, R> implements Function {
        public C9907i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull StartTextSelectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LongPressAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.LongPressAction$j */
    /* loaded from: classes8.dex */
    public static final class C9908j<T, R> implements Function {
        public C9908j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LongPressAction apply(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LongPressAction.this.setTextSelection(it2.getSelection());
            LongPressAction.this.setTextSelectionContentPath(it2.getContentPath());
            return LongPressAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressAction(@NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.touchPoint = touchPoint;
        this.textSelectionContentPath = "";
        this.startDragExcerptTimerKey = -1;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LongPressAction> create() {
        Observable<LongPressAction> map = m39887q().flatMap(new C9899a()).flatMap(new C9900b()).map(new C9901c());
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

    public final int getStartDragExcerptTimerKey() {
        return this.startDragExcerptTimerKey;
    }

    @Nullable
    public final ReaderSelection getTextSelection() {
        return this.textSelection;
    }

    @NotNull
    public final String getTextSelectionContentPath() {
        return this.textSelectionContentPath;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    /* renamed from: l */
    public final void m39882l() {
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this);
        StringBuilder sb = new StringBuilder();
        sb.append("hitTestBoxInfo = ");
        BoxInfo boxInfo = this.hitTestVirtualPage;
        sb.append(boxInfo != null ? boxInfo.getId() : null);
        debug.m32038d(simpleNameString, sb.toString(), new Object[0]);
        String simpleNameString2 = AnyKt.toSimpleNameString(this);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("hitTestShape = ");
        Shape shape = this.hitTestShape;
        sb2.append(shape != null ? AnyKt.toSimpleNameString(shape) : null);
        debug.m32038d(simpleNameString2, sb2.toString(), new Object[0]);
    }

    /* renamed from: m */
    public final Observable<LongPressAction> m39883m(Shape shape) {
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null) {
            Observable<LongPressAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new GotoLinkAction(getEditorBundle(), shapeLinkBean, false, 4, null).build().map(new C9902d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<LongPressAction> m39884n(Shape shape) {
        Observable map = new StartExcerptDragAndDropAction(getEditorBundle(), shape, ResManager.INSTANCE.getLong(C8045R.integer.excerpt_shape_long_press_start_drag_duration)).build().map(new C9903e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<LongPressAction> m39885o(Shape shape) {
        if (ShapePersistOptionsKt.isLocked(shape)) {
            Observable map = new HandleHitTestShapeAndStartTransformAction(getEditorBundle(), shape, this.touchPoint).build().map(new C9904f());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable map2 = new StartImageDragAndDropAction(getEditorBundle(), shape).build().map(new C9905g());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: p */
    public final Observable<LongPressAction> m39886p() {
        m39882l();
        if (!m39889s()) {
            Observable<LongPressAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (!m39890t() && !m39891u()) {
            return m39893w();
        }
        if (m39888r()) {
            return m39894x();
        }
        if (m39891u()) {
            return m39892v();
        }
        Observable<LongPressAction> just2 = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* renamed from: q */
    public final Observable<LongPressAction> m39887q() {
        Observable map = new HitTestShapeAction(getEditorBundle(), this.touchPoint).build().map(new C9906h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final boolean m39888r() {
        Shape shape = this.hitTestShape;
        if (shape == null) {
            return false;
        }
        int targetType = ShapeTypes.INSTANCE.getTargetType(shape);
        return targetType == 19 || targetType == 33 || targetType == 35 || targetType == 44 || targetType == 41 || targetType == 42;
    }

    /* renamed from: s */
    public final boolean m39889s() {
        return this.hitTestVirtualPage != null;
    }

    public final void setHitTestShape(@Nullable Shape shape) {
        this.hitTestShape = shape;
    }

    public final void setHitTestVirtualPage(@Nullable BoxInfo boxInfo) {
        this.hitTestVirtualPage = boxInfo;
    }

    public final void setStartDragExcerptTimerKey(int i) {
        this.startDragExcerptTimerKey = i;
    }

    public final void setTextSelection(@Nullable ReaderSelection readerSelection) {
        this.textSelection = readerSelection;
    }

    public final void setTextSelectionContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.textSelectionContentPath = str;
    }

    /* renamed from: t */
    public final boolean m39890t() {
        return this.hitTestShape != null;
    }

    /* renamed from: u */
    public final boolean m39891u() {
        return this.textSelection != null;
    }

    /* renamed from: v */
    public final Observable<LongPressAction> m39892v() {
        BoxInfo boxInfo = this.hitTestVirtualPage;
        if (boxInfo == null) {
            Observable<LongPressAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ReaderSelection readerSelection = this.textSelection;
        if (readerSelection == null) {
            Observable<LongPressAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable map = new StartTextSelectionAction(getEditorBundle(), new StartTextSelectionArgs(boxInfo, this.touchPoint, this.textSelectionContentPath, readerSelection, true)).build().map(new C9907i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final Observable<LongPressAction> m39893w() {
        EditorBundleKt.postEvent(getEditorBundle(), new ShowLongPressPopupEvent(this.touchPoint));
        Observable<LongPressAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: x */
    public final Observable<LongPressAction> m39894x() {
        Shape targetShape;
        if (this.hitTestVirtualPage == null) {
            Observable<LongPressAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Shape shape = this.hitTestShape;
        if (shape == null || (targetShape = ShapeTypes.INSTANCE.getTargetShape(shape)) == null) {
            Observable<LongPressAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        int type = targetShape.getType();
        if (type != 19) {
            if (type == 33) {
                return m39883m(targetShape);
            }
            if (type != 35) {
                if (type == 44 || type == 41) {
                    return m39884n(targetShape);
                }
                if (type != 42) {
                    Observable<LongPressAction> just3 = Observable.just(this);
                    Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
                    return just3;
                }
            }
        }
        return m39885o(targetShape);
    }

    /* renamed from: y */
    public final Observable<LongPressAction> m39895y() {
        BoxInfo boxInfo = this.hitTestVirtualPage;
        if (boxInfo == null) {
            Observable<LongPressAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new SelectOnScreenAction(getEditorBundle(), new SelectOnScreenArgs("", boxInfo, TouchPointKt.toPointF(this.touchPoint), TouchPointKt.toPointF(this.touchPoint), true, true, null, null, 192, null)).build().map(new C9908j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
