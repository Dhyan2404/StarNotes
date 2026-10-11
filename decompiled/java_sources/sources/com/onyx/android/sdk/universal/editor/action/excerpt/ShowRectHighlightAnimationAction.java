package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$renderHandler$2;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.node.IRenderNode;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001M\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010Q\u001a\u00020P\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\u0012\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t\u0012\b\b\u0002\u0010%\u001a\u00020\"¢\u0006\u0004\bR\u0010SJ\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\u0016\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0002J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u0018\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0018\u001a\u00020\u0006H\u0016R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR \u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00101\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010(\u001a\u0004\b/\u0010*\"\u0004\b0\u0010,R\"\u00107\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b8\u0010\u001d\"\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010<R'\u0010C\u001a\u0015\u0012\f\u0012\n @*\u0004\u0018\u00010?0?0>¢\u0006\u0002\bA8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010BR \u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010 R\u001a\u0010G\u001a\b\u0012\u0004\u0012\u00020\f0D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010 R#\u0010L\u001a\n @*\u0004\u0018\u00010H0H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bF\u0010KR\u001b\u0010O\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010J\u001a\u0004\bI\u0010N¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", "x", GoogleApiAvailabilityLight.f29016b, "", C4921e.f26528e, "w", "", "Landroid/graphics/RectF;", "rectangles", "Landroid/graphics/Path;", "q", "p", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Landroid/graphics/Matrix;", "t", "m", "firstRectF", "secondRect", "u", "v", BaiduYunConstant.CREATE, "dispose", "", C6999h.f39688c, Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", CouchFieldKey.KEY_TOC_PAGE_ID, "i", "Ljava/util/List;", "groupRectList", "", "j", "J", "animationDuration", "Landroid/graphics/Paint;", C4921e.f26537n, "Landroid/graphics/Paint;", "getStrokePaint", "()Landroid/graphics/Paint;", "setStrokePaint", "(Landroid/graphics/Paint;)V", "strokePaint", "l", "getFillPaint", "setFillPaint", "fillPaint", Constants.HASIDCALL_INDEX_SIG, "getVerticalWritingMode", Constants.BOOLEAN_VALUE_SIG, "setVerticalWritingMode", "(Z)V", "verticalWritingMode", "getRendererKey", "setRendererKey", "(Ljava/lang/String;)V", "rendererKey", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "publishSubject", "", "groupRectangles", "r", "groupPathList", "Landroid/animation/ValueAnimator;", "s", "Lkotlin/Lazy;", "()Landroid/animation/ValueAnimator;", "animator", "com/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1", "()Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;", "renderHandler", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;J)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n288#2,2:246\n1855#2:248\n1855#2,2:249\n1856#2:251\n1864#2,3:252\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction\n*L\n119#1:246,2\n123#1:248\n125#1:249,2\n123#1:251\n136#1:252,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShowRectHighlightAnimationAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<List<RectF>> groupRectList;

    /* renamed from: j, reason: from kotlin metadata */
    public final long animationDuration;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Paint strokePaint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Paint fillPaint;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean verticalWritingMode;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public String rendererKey;

    /* renamed from: o, reason: from kotlin metadata */
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Integer> publishSubject;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final List<List<RectF>> groupRectangles;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<Path> groupPathList;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy animator;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy renderHandler;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$a */
    /* loaded from: classes8.dex */
    public static final class C8858a<T, R> implements Function {
        public C8858a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ShowRectHighlightAnimationAction> apply(@NotNull ShowRectHighlightAnimationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowRectHighlightAnimationAction.this.m37927n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$b */
    /* loaded from: classes8.dex */
    public static final class C8859b<T, R> implements Function {
        public C8859b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ShowRectHighlightAnimationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowRectHighlightAnimationAction.this.m37937x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$c */
    /* loaded from: classes8.dex */
    public static final class C8860c<T, R> implements Function {

        /* renamed from: e */
        public static final C8860c<T, R> f48620e = new C8860c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$d */
    /* loaded from: classes8.dex */
    public static final class C8861d<T> implements Consumer {
        public C8861d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShowRectHighlightAnimationAction showRectHighlightAnimationAction = ShowRectHighlightAnimationAction.this;
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            if (virtualPageBoxInfo == null) {
                virtualPageBoxInfo = new BoxInfo();
            }
            showRectHighlightAnimationAction.virtualPageBoxInfo = virtualPageBoxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$e */
    /* loaded from: classes8.dex */
    public static final class C8862e<T, R> implements Function {
        public C8862e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShowRectHighlightAnimationAction apply(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowRectHighlightAnimationAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$f */
    /* loaded from: classes8.dex */
    public static final class C8863f<T, R> implements Function {
        public C8863f() {
        }

        /* renamed from: a */
        public final void m37944a(Integer num) {
            ShowRectHighlightAnimationAction.this.m37928o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37944a((Integer) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$g */
    /* loaded from: classes8.dex */
    public static final class C8864g<T, R> implements Function {
        public C8864g() {
        }

        /* renamed from: a */
        public final void m37945a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShowRectHighlightAnimationAction.this.m37936w();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37945a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$h */
    /* loaded from: classes8.dex */
    public static final class C8865h<T, R> implements Function {
        public C8865h() {
        }

        /* renamed from: a */
        public final void m37946a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(ShowRectHighlightAnimationAction.this.getEditorBundle()).invalidate();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37946a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ ShowRectHighlightAnimationAction(EditorBundle editorBundle, String str, List list, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, list, (i & 8) != 0 ? ResManager.INSTANCE.getLong(C8045R.integer.shape_highlight_animation_duration) : j);
    }

    /* renamed from: y */
    public static final void m37925y(ShowRectHighlightAnimationAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.m37931r().isRunning()) {
            this$0.m37931r().cancel();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        m37931r().start();
        Observable<Boolean> map = Observable.just(this).flatMap(new C8858a()).concatMap(new C8859b()).map(C8860c.f48620e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), this.rendererKey, false, 2, null);
        super.dispose();
    }

    @NotNull
    public final Paint getFillPaint() {
        return this.fillPaint;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    public final String getRendererKey() {
        return this.rendererKey;
    }

    @NotNull
    public final Paint getStrokePaint() {
        return this.strokePaint;
    }

    public final boolean getVerticalWritingMode() {
        return this.verticalWritingMode;
    }

    /* renamed from: m */
    public final void m37926m() {
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), this.rendererKey, m37932s(), false, 4, null);
    }

    /* renamed from: n */
    public final Observable<ShowRectHighlightAnimationAction> m37927n() {
        Observable<ShowRectHighlightAnimationAction> map = RxBaseAppActionKt.submitRequestToCore(this, new FindBoxInfoByNotePageIdRequest(getEditorBundle().getWorkBundle(), this.pageId)).doOnNext(new C8861d()).map(new C8862e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final void m37928o() {
        Object obj;
        Matrix m37933t;
        this.groupRectangles.clear();
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(this.pageId, ((BoxInfo) obj).getId())) {
                    break;
                }
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo == null || (m37933t = m37933t(boxInfo)) == null) {
            return;
        }
        Iterator<T> it3 = this.groupRectList.iterator();
        while (it3.hasNext()) {
            List<RectF> copyRectFList = RectFKt.copyRectFList((List) it3.next());
            Iterator<T> it4 = copyRectFList.iterator();
            while (it4.hasNext()) {
                m37933t.mapRect((RectF) it4.next());
            }
            this.groupRectangles.add(copyRectFList);
        }
    }

    /* renamed from: p */
    public final Path m37929p(List<? extends RectF> rectangles) {
        Object removeLast;
        ArrayDeque arrayDeque = new ArrayDeque();
        Path path = new Path();
        RectF rectF = null;
        int i = 0;
        while (i < rectangles.size()) {
            RectF rectF2 = rectangles.get(i);
            while (true) {
                i++;
                if (i >= rectangles.size()) {
                    break;
                }
                RectF rectF3 = rectangles.get(i);
                RectF rectF4 = rectF2;
                if (!m37935v(rectF4, rectF3)) {
                    break;
                }
                rectF2 = RectFKt.copy(rectF4);
                rectF2.union(rectF3);
            }
            if (rectF != null) {
                RectF rectF5 = rectF2;
                arrayDeque.add(new PointF(rectF.left, rectF5.top));
                path.lineTo(rectF.right, rectF5.top);
            }
            RectF rectF6 = rectF2;
            arrayDeque.add(new PointF(rectF6.left, rectF6.top));
            arrayDeque.add(new PointF(rectF6.left, rectF6.bottom));
            if (path.isEmpty()) {
                path.moveTo(rectF6.right, rectF6.top);
            } else {
                path.lineTo(rectF6.right, rectF6.top);
            }
            path.lineTo(rectF6.right, rectF6.bottom);
            rectF = rectF6;
        }
        while (!arrayDeque.isEmpty()) {
            removeLast = CollectionsKt__MutableCollectionsKt.removeLast(arrayDeque);
            PointF pointF = (PointF) removeLast;
            path.lineTo(pointF.x, pointF.y);
        }
        path.close();
        return path;
    }

    /* renamed from: q */
    public final Path m37930q(List<? extends RectF> rectangles) {
        Path path = new Path();
        int size = rectangles.size();
        RectF rectF = null;
        int i = 0;
        float f = Float.MAX_VALUE;
        float f2 = Float.MAX_VALUE;
        float f3 = Float.MIN_VALUE;
        float f4 = Float.MIN_VALUE;
        while (i < size) {
            RectF rectF2 = rectangles.get(i);
            if (rectF != null && !m37934u(rectF, rectF2)) {
                path.op(RectFKt.toPath(new RectF(f, f2, f3, f4)), Path.Op.UNION);
                f = Float.MAX_VALUE;
                f2 = Float.MAX_VALUE;
                f3 = Float.MIN_VALUE;
                f4 = Float.MIN_VALUE;
            }
            f = Math.min(rectF2.left, f);
            f2 = Math.min(rectF2.top, f2);
            f3 = Math.max(rectF2.right, f3);
            f4 = Math.max(rectF2.bottom, f4);
            i++;
            rectF = rectF2;
        }
        path.op(RectFKt.toPath(new RectF(f, f2, f3, f4)), Path.Op.UNION);
        return path;
    }

    /* renamed from: r */
    public final ValueAnimator m37931r() {
        return (ValueAnimator) this.animator.getValue();
    }

    /* renamed from: s */
    public final ShowRectHighlightAnimationAction$renderHandler$2.C88661 m37932s() {
        return (ShowRectHighlightAnimationAction$renderHandler$2.C88661) this.renderHandler.getValue();
    }

    public final void setFillPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.fillPaint = paint;
    }

    public final void setRendererKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.rendererKey = str;
    }

    public final void setStrokePaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.strokePaint = paint;
    }

    public final void setVerticalWritingMode(boolean z) {
        this.verticalWritingMode = z;
    }

    /* renamed from: t */
    public final Matrix m37933t(BoxInfo boxInfo) {
        IRenderNode pageRenderNode;
        if (boxInfo == null || (pageRenderNode = EditorBundleKt.renderManager(getEditorBundle()).getPageRenderNode(boxInfo.getId())) == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate((-pageRenderNode.getTranslationX()) + (boxInfo.getOriginRectFWithMargin().left * boxInfo.getActualScale()), (-pageRenderNode.getTranslationY()) + (boxInfo.getOriginRectFWithMargin().top * boxInfo.getActualScale()));
        float actualScale = 1 / boxInfo.getActualScale();
        matrix.postScale(actualScale, actualScale);
        Matrix matrix2 = new Matrix();
        matrix.invert(matrix2);
        return matrix2;
    }

    /* renamed from: u */
    public final boolean m37934u(RectF firstRectF, RectF secondRect) {
        float f = firstRectF.left;
        float f2 = secondRect.left;
        return (f >= f2 && f <= secondRect.right) || (f2 >= f && f2 <= firstRectF.right);
    }

    /* renamed from: v */
    public final boolean m37935v(RectF firstRectF, RectF secondRect) {
        float f = firstRectF.top;
        float f2 = secondRect.top;
        return (f >= f2 && f <= secondRect.bottom) || (f2 >= f && f2 <= firstRectF.bottom);
    }

    /* renamed from: w */
    public final void m37936w() {
        Object orNull;
        if (this.groupRectangles.isEmpty()) {
            return;
        }
        int i = 0;
        for (Object obj : this.groupRectangles) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<? extends RectF> list = (List) obj;
            orNull = CollectionsKt___CollectionsKt.getOrNull(this.groupPathList, i);
            Path path = (Path) orNull;
            if (path == null) {
                path = new Path();
                this.groupPathList.add(path);
            }
            if (this.verticalWritingMode) {
                path.set(m37930q(list));
            } else {
                path.set(m37929p(list));
            }
            i = i2;
        }
    }

    /* renamed from: x */
    public final Observable<?> m37937x() {
        Observable<?> doOnDispose = this.publishSubject.observeOn(getMainUIScheduler()).map(new C8863f()).map(new C8864g()).map(new C8865h()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.opm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ShowRectHighlightAnimationAction.m37925y(ShowRectHighlightAnimationAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ShowRectHighlightAnimationAction(@NotNull final EditorBundle editorBundle, @NotNull String pageId, @NotNull List<? extends List<? extends RectF>> groupRectList, long j) {
        super(editorBundle);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(groupRectList, "groupRectList");
        this.pageId = pageId;
        this.groupRectList = groupRectList;
        this.animationDuration = j;
        ExcerptAttr.Companion companion = ExcerptAttr.INSTANCE;
        this.strokePaint = ExcerptAttr.Companion.createStrokePaint$default(companion, 0, 0.0f, 3, null);
        this.fillPaint = ExcerptAttr.Companion.createFillPaint$default(companion, EditorBundleKt.isCurDarkTheme(editorBundle, pageId), 0, 2, null);
        this.rendererKey = RenderManager.RENDER_KEY_SHAPE_HIGHLIGHT;
        PublishSubject<Integer> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publishSubject = create;
        this.groupRectangles = new ArrayList();
        this.groupPathList = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new ShowRectHighlightAnimationAction$animator$2(this));
        this.animator = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ShowRectHighlightAnimationAction$renderHandler$2.C88661>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$renderHandler$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$renderHandler$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C88661 invoke() {
                final ShowRectHighlightAnimationAction showRectHighlightAnimationAction = ShowRectHighlightAnimationAction.this;
                final EditorBundle editorBundle2 = editorBundle;
                return new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$renderHandler$2.1
                    @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
                    public void onDraw(@NotNull Canvas canvas) {
                        List list;
                        BoxInfo boxInfo;
                        List<Path> list2;
                        Intrinsics.checkNotNullParameter(canvas, "canvas");
                        list = ShowRectHighlightAnimationAction.this.groupPathList;
                        if (list.isEmpty()) {
                            return;
                        }
                        RenderManager renderManager = EditorBundleKt.renderManager(editorBundle2);
                        boxInfo = ShowRectHighlightAnimationAction.this.virtualPageBoxInfo;
                        if (boxInfo == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
                            boxInfo = null;
                        }
                        if (renderManager.isPageRendered(boxInfo)) {
                            list2 = ShowRectHighlightAnimationAction.this.groupPathList;
                            ShowRectHighlightAnimationAction showRectHighlightAnimationAction2 = ShowRectHighlightAnimationAction.this;
                            for (Path path : list2) {
                                canvas.drawPath(path, showRectHighlightAnimationAction2.getFillPaint());
                                canvas.drawPath(path, showRectHighlightAnimationAction2.getStrokePaint());
                            }
                        }
                    }
                };
            }
        });
        this.renderHandler = lazy2;
    }
}
