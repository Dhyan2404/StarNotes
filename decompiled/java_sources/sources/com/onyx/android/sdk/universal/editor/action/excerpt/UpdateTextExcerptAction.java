package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.UpdateTextExcerptShapeArgs;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultArgs;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.excerpt.SaveTextExcerptScreenshotRequest;
import com.onyx.android.sdk.universal.editor.request.excerpt.UpdateTextExcerptShapeRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\nH\u0002J\u0014\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\u00020\u00152\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010%R\u0016\u0010'\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010%¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "m", "u", "r", "q", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sliceInfo", "s", C4921e.f26528e, "", "", "v", "t", "", GoogleApiAvailabilityLight.f29016b, "list", "", "p", "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;", "args", "i", Constants.STRING_SIG, "imgPath", "Landroid/graphics/RectF;", "j", "Landroid/graphics/RectF;", "originalShapeRect", C4921e.f26537n, "F", "bitmapScaleRatio", Constants.HASIDCALL_INDEX_SIG, "isRectUpdate", "forceUserNormalQualitySnapshot", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateTextExcerptAction extends RxBaseAppAction<UpdateTextExcerptAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final UpdateTextExcerptShapeArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: j, reason: from kotlin metadata */
    public RectF originalShapeRect;

    /* renamed from: k, reason: from kotlin metadata */
    public float bitmapScaleRatio;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isRectUpdate;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean forceUserNormalQualitySnapshot;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$a */
    /* loaded from: classes8.dex */
    public static final class C8912a<T, R> implements Function {
        public C8912a() {
        }

        /* renamed from: a */
        public final void m38026a(@NotNull UpdateTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction updateTextExcerptAction = UpdateTextExcerptAction.this;
            updateTextExcerptAction.isRectUpdate = updateTextExcerptAction.m38016m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38026a((UpdateTextExcerptAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$b */
    /* loaded from: classes8.dex */
    public static final class C8913b<T, R> implements Function {
        public C8913b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$c */
    /* loaded from: classes8.dex */
    public static final class C8914c<T, R> implements Function {
        public C8914c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateTextExcerptAction> apply(@NotNull UpdateTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this.m38015l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$d */
    /* loaded from: classes8.dex */
    public static final class C8915d<T, R> implements Function {
        public C8915d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$e */
    /* loaded from: classes8.dex */
    public static final class C8916e<T, R> implements Function {
        public C8916e() {
        }

        /* renamed from: a */
        public final void m38030a(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotePageShape.addShape$default(NotePageShape.INSTANCE, it2, UpdateTextExcerptAction.this.args.getShape(), 0, 2, null);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38030a((NotePage) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$f */
    /* loaded from: classes8.dex */
    public static final class C8917f<T, R> implements Function {
        public C8917f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction updateTextExcerptAction = UpdateTextExcerptAction.this;
            BoxInfo virtualPageBoxInfo = updateTextExcerptAction.args.getVirtualPageBoxInfo();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(UpdateTextExcerptAction.this.args.getShape());
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(updateTextExcerptAction, virtualPageBoxInfo, listOf, false, 4, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$g */
    /* loaded from: classes8.dex */
    public static final class C8918g<T, R> implements Function {
        public C8918g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$h */
    /* loaded from: classes8.dex */
    public static final class C8919h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SaveTextExcerptScreenshotRequest f48706f;

        public C8919h(SaveTextExcerptScreenshotRequest saveTextExcerptScreenshotRequest) {
            this.f48706f = saveTextExcerptScreenshotRequest;
        }

        /* renamed from: a */
        public final void m38033a(@NotNull SaveTextExcerptScreenshotRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction.this.imgPath = this.f48706f.getImgPath();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38033a((SaveTextExcerptScreenshotRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$i */
    /* loaded from: classes8.dex */
    public static final class C8920i<T, R> implements Function {
        public C8920i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextExcerptAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$j */
    /* loaded from: classes8.dex */
    public static final class C8921j<T, R> implements Function {
        public C8921j() {
        }

        /* renamed from: a */
        public final void m38035a(@NotNull UpdateTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction updateTextExcerptAction = UpdateTextExcerptAction.this;
            updateTextExcerptAction.originalShapeRect = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(updateTextExcerptAction.args.getShape());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38035a((UpdateTextExcerptAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$k */
    /* loaded from: classes8.dex */
    public static final class C8922k<T> implements Consumer {
        public C8922k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction updateTextExcerptAction = UpdateTextExcerptAction.this;
            updateTextExcerptAction.forceUserNormalQualitySnapshot = updateTextExcerptAction.m38023t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$l */
    /* loaded from: classes8.dex */
    public static final class C8923l<T, R> implements Function {
        public C8923l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SliceInfo apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this.m38018o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$m */
    /* loaded from: classes8.dex */
    public static final class C8924m<T, R> implements Function {
        public C8924m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateTextExcerptAction> apply(@NotNull SliceInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this.m38022s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$n */
    /* loaded from: classes8.dex */
    public static final class C8925n<T, R> implements Function {
        public C8925n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull UpdateTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this.m38025v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$o */
    /* loaded from: classes8.dex */
    public static final class C8926o<T, R> implements Function {
        public C8926o() {
        }

        /* renamed from: a */
        public final void m38040a(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction.this.m38019p(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38040a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$p */
    /* loaded from: classes8.dex */
    public static final class C8927p<T, R> implements Function {
        public C8927p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction updateTextExcerptAction = UpdateTextExcerptAction.this;
            return CommonEditorActionsKt.updateVirtualPage(updateTextExcerptAction, updateTextExcerptAction.args.getVirtualPageBoxInfo().getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$q */
    /* loaded from: classes8.dex */
    public static final class C8928q<T, R> implements Function {
        public C8928q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this.m38020q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$r */
    /* loaded from: classes8.dex */
    public static final class C8929r<T, R> implements Function {
        public C8929r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateTextExcerptAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateTextExcerptAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$s */
    /* loaded from: classes8.dex */
    public static final class C8930s<T, R> implements Function {
        public C8930s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull UpdateTextExcerptShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateTextExcerptAction.this.bitmapScaleRatio = it2.getBitmapScaleRatio();
            return it2.getShapeIds();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateTextExcerptAction(@NotNull EditorBundle editorBundle, @NotNull UpdateTextExcerptShapeArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.imgPath = "";
        this.bitmapScaleRatio = 1.0f;
        this.isRectUpdate = true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateTextExcerptAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C8914c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(flatMap, new Function1<UpdateTextExcerptAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UpdateTextExcerptAction it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = UpdateTextExcerptAction.this.isRectUpdate;
                return Boolean.valueOf(z);
            }
        }, m38024u()).map(new C8915d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<UpdateTextExcerptAction> m38015l() {
        Observable map = Observable.just(this).map(new C8912a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction$checkIsRectUpdate$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = UpdateTextExcerptAction.this.isRectUpdate;
                return Boolean.valueOf(!z);
            }
        }, m38021r()).map(new C8913b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: m */
    public final boolean m38016m() {
        Object orNull;
        List<TouchPoint> points = this.args.getShape().getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        if (points.size() / 2 != this.args.getDisplayRectFList().size()) {
            return true;
        }
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, points.size() - 1, 2);
        if (progressionLastElement >= 0) {
            int i = 0;
            while (true) {
                TouchPoint touchPoint = points.get(i);
                orNull = CollectionsKt___CollectionsKt.getOrNull(points, i + 1);
                TouchPoint touchPoint2 = (TouchPoint) orNull;
                if (touchPoint2 == null) {
                    break;
                }
                if (!RectFKt.approximatelyTheSame(BoxInfoUtils.INSTANCE.mapToScreenRectF(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()), this.args.getVirtualPageBoxInfo()), this.args.getDisplayRectFList().get(i / 2))) {
                    return true;
                }
                if (i == progressionLastElement) {
                    break;
                }
                i += 2;
            }
        }
        return false;
    }

    /* renamed from: n */
    public final float m38017n() {
        float contentPageMaxScale$default = ScaleConfig.contentPageMaxScale$default(ScaleConfig.INSTANCE, this.args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(getEditorBundle()), 0.0f, 4, null);
        if (this.forceUserNormalQualitySnapshot) {
            return contentPageMaxScale$default / this.args.getVirtualPageBoxInfo().getActualScale();
        }
        return 1.0f;
    }

    /* renamed from: o */
    public final SliceInfo m38018o() {
        SliceInfo displayContentSlice = EditorBundleKt.renderManager(getEditorBundle()).getDisplayContentSlice(this.args.getVirtualPageBoxInfo(), this.forceUserNormalQualitySnapshot ? false : ScaleConfig.INSTANCE.isEnabledHighQuality(this.args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(getEditorBundle())));
        return displayContentSlice == null ? new SliceInfo() : displayContentSlice;
    }

    /* renamed from: p */
    public final void m38019p(List<String> list) {
        EditorBundleKt.postEvent(getEditorBundle(), new UpdateExcerptResultEvent(new UpdateExcerptResultArgs(this.args.getShape(), this.imgPath, this.bitmapScaleRatio, list)));
    }

    /* renamed from: q */
    public final Observable<?> m38020q() {
        RectF boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(this.args.getShape());
        RectF rectF = this.originalShapeRect;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("originalShapeRect");
            rectF = null;
        }
        boundingRectWithWidth.union(rectF);
        return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(this, this.args.getVirtualPageBoxInfo(), BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(boundingRectWithWidth, this.args.getVirtualPageBoxInfo()));
    }

    /* renamed from: r */
    public final Observable<UpdateTextExcerptAction> m38021r() {
        Observable<UpdateTextExcerptAction> map = new EnsureNotePageAction(getEditorBundle(), this.args.getVirtualPageBoxInfo()).build().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8916e()).observeOn(getMainUIScheduler()).flatMap(new C8917f()).map(new C8918g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<UpdateTextExcerptAction> m38022s(SliceInfo sliceInfo) {
        SaveTextExcerptScreenshotRequest saveTextExcerptScreenshotRequest = new SaveTextExcerptScreenshotRequest(getEditorBundle().getWorkBundle(), this.args.getVirtualPageBoxInfo(), sliceInfo);
        saveTextExcerptScreenshotRequest.setDisplayRectFList(this.args.getDisplayRectFList());
        saveTextExcerptScreenshotRequest.setWritingMode(this.args.getCom.sunia.HTREnginev2.gon.T java.lang.String());
        saveTextExcerptScreenshotRequest.setSliceScale(m38017n());
        Observable<UpdateTextExcerptAction> map = RxBaseAppActionKt.submitRequestToCore(this, saveTextExcerptScreenshotRequest).map(new C8919h(saveTextExcerptScreenshotRequest)).map(new C8920i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: t */
    public final boolean m38023t() {
        return ScaleConfig.INSTANCE.isEnabledHighQuality(this.args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(getEditorBundle())) && !EditorBundleKt.viewportRect(getEditorBundle()).contains(RectFKt.boundingRectF(this.args.getDisplayRectFList()));
    }

    /* renamed from: u */
    public final Observable<UpdateTextExcerptAction> m38024u() {
        Observable<UpdateTextExcerptAction> map = Observable.just(this).map(new C8921j()).doOnNext(new C8922k()).map(new C8923l()).flatMap(new C8924m()).flatMap(new C8925n()).map(new C8926o()).flatMap(new C8927p()).flatMap(new C8928q()).map(new C8929r());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<List<String>> m38025v() {
        UpdateTextExcerptShapeRequest updateTextExcerptShapeRequest = new UpdateTextExcerptShapeRequest(getEditorBundle().getWorkBundle(), this.args);
        updateTextExcerptShapeRequest.setImgPath(this.imgPath);
        updateTextExcerptShapeRequest.setSliceScale(m38017n());
        Observable<List<String>> map = RxBaseAppActionKt.submitRequestToNote(this, updateTextExcerptShapeRequest).map(new C8930s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
