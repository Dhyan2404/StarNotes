package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b1\u00102J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J&\u0010\u0010\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR$\u0010#\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010.\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010&\u001a\u0004\b,\u0010(\"\u0004\b-\u0010*¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "Landroid/graphics/RectF;", C4921e.f26528e, "", "rectangles", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "readerSelection", "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", gon.f71267T, "l", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getSelection", "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "setSelection", "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V", "selection", "Lcom/onyx/android/sdk/base/data/TouchPoint;", C4921e.f26537n, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getStartPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setStartPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "startPoint", "getEndPoint", "setEndPoint", "endPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetReaderSelectionByShapeAction extends RxBaseAppAction<GetReaderSelectionByShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection selection;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public TouchPoint startPoint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public TouchPoint endPoint;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WritingMode.values().length];
            try {
                iArr[WritingMode.VERTICAL_LR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WritingMode.VERTICAL_RL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WritingMode.HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9891a<T, R> implements Function {
        public C9891a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GetReaderSelectionByShapeAction> apply(@NotNull GetReaderSelectionByShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetReaderSelectionByShapeAction.this.m39873n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9892b<T, R> implements Function {
        public C9892b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetReaderSelectionByShapeAction apply(@NotNull GetReaderSelectionByShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetReaderSelectionByShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9893c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<RectF> f50558f;

        /* renamed from: g */
        public final /* synthetic */ WritingMode f50559g;

        public C9893c(List<RectF> list, WritingMode writingMode) {
            this.f50558f = list;
            this.f50559g = writingMode;
        }

        /* renamed from: a */
        public final void m39877a(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GetReaderSelectionByShapeAction getReaderSelectionByShapeAction = GetReaderSelectionByShapeAction.this;
            ReaderSelection selection = it2.getSelection();
            getReaderSelectionByShapeAction.setSelection(selection != null ? GetReaderSelectionByShapeAction.this.m39871l(this.f50558f, selection, this.f50559g) : null);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m39877a((SelectOnScreenAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9896d<T, R> implements Function {
        public C9896d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetReaderSelectionByShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetReaderSelectionByShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetReaderSelectionByShapeAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo virtualBoxInfo, @NotNull Shape shape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.virtualBoxInfo = virtualBoxInfo;
        this.shape = shape;
        this.startPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.endPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GetReaderSelectionByShapeAction> create() {
        Observable<GetReaderSelectionByShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C9891a()).map(new C9892b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final TouchPoint getEndPoint() {
        return this.endPoint;
    }

    @Nullable
    public final ReaderSelection getSelection() {
        return this.selection;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final TouchPoint getStartPoint() {
        return this.startPoint;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: l */
    public final ReaderSelection m39871l(List<? extends RectF> rectangles, ReaderSelection readerSelection, WritingMode writingMode) {
        Sequence asSequence;
        Sequence map;
        Sequence map2;
        List mutableList;
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        asSequence = CollectionsKt___CollectionsKt.asSequence(rectangles);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<RectF, RectF>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction$constructNewReaderSelection$1$rectList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RectFKt.copy(it2);
            }
        });
        map2 = SequencesKt___SequencesKt.map(map, new Function1<RectF, RectF>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction$constructNewReaderSelection$1$rectList$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Matrix shapeMatrix = GetReaderSelectionByShapeAction.this.getShape().getShapeMatrix();
                if (shapeMatrix != null) {
                    shapeMatrix.mapRect(it2);
                }
                BoxInfoUtils.INSTANCE.renderMatrix(GetReaderSelectionByShapeAction.this.getVirtualBoxInfo()).mapRect(it2);
                return it2;
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map2);
        readerSelectionImpl.getRectList().addAll(mutableList);
        readerSelectionImpl.getCharRectList().addAll(readerSelection.charRectList());
        readerSelectionImpl.setWritingMode(m39872m(writingMode));
        ExcerptInfoBean excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(this.shape);
        String quote = excerptInfoBean != null ? excerptInfoBean.getQuote() : null;
        if (quote == null) {
            quote = "";
        }
        readerSelectionImpl.setText(quote);
        return readerSelectionImpl;
    }

    /* renamed from: m */
    public final ReaderWritingMode m39872m(WritingMode writingMode) {
        int i = WhenMappings.$EnumSwitchMapping$0[writingMode.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? ReaderWritingMode.UNKNOWN : ReaderWritingMode.HORIZONTAL : ReaderWritingMode.VERTICAL_RL : ReaderWritingMode.VERTICAL_LR;
    }

    /* renamed from: n */
    public final Observable<GetReaderSelectionByShapeAction> m39873n() {
        Object lastOrNull;
        WritingMode writingMode;
        if (this.shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() <= 1) {
            Observable<GetReaderSelectionByShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<RectF> m39874o = m39874o(this.shape);
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) m39874o);
        RectF rectF = (RectF) lastOrNull;
        if (rectF == null) {
            Observable<GetReaderSelectionByShapeAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        RectF rectF2 = m39874o.get(0);
        ExcerptInfoBean excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(this.shape);
        if (excerptInfoBean == null || (writingMode = excerptInfoBean.getWritingMode()) == null) {
            Observable<GetReaderSelectionByShapeAction> just3 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        if (writingMode.isVertical()) {
            TouchPoint touchPoint = new TouchPoint(rectF2.centerX(), rectF2.top);
            touchPoint.applyMatrix(this.shape.getShapeMatrix());
            BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
            touchPoint.applyMatrix(boxInfoUtils.renderMatrix(this.virtualBoxInfo));
            this.startPoint = touchPoint;
            TouchPoint copy = new TouchPoint(rectF.centerX(), rectF.bottom).copy();
            copy.applyMatrix(this.shape.getShapeMatrix());
            copy.applyMatrix(boxInfoUtils.renderMatrix(this.virtualBoxInfo));
            this.endPoint = copy;
        } else {
            TouchPoint touchPoint2 = new TouchPoint(rectF2.left, rectF2.centerY());
            touchPoint2.applyMatrix(this.shape.getShapeMatrix());
            BoxInfoUtils boxInfoUtils2 = BoxInfoUtils.INSTANCE;
            touchPoint2.applyMatrix(boxInfoUtils2.renderMatrix(this.virtualBoxInfo));
            this.startPoint = touchPoint2;
            TouchPoint copy2 = new TouchPoint(rectF.right, rectF.centerY()).copy();
            copy2.applyMatrix(this.shape.getShapeMatrix());
            copy2.applyMatrix(boxInfoUtils2.renderMatrix(this.virtualBoxInfo));
            this.endPoint = copy2;
        }
        Observable<GetReaderSelectionByShapeAction> map = new SelectOnScreenAction(getEditorBundle(), new SelectOnScreenArgs("", this.virtualBoxInfo, TouchPointKt.toPointF(this.startPoint), TouchPointKt.toPointF(this.endPoint), true, false, null, null, 224, null)).build().map(new C9893c(m39874o, writingMode)).map(new C9896d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final List<RectF> m39874o(Shape shape) {
        Object orNull;
        List<TouchPoint> points = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, points.size() - 1, 2);
        if (progressionLastElement >= 0) {
            while (true) {
                TouchPoint touchPoint = points.get(i);
                orNull = CollectionsKt___CollectionsKt.getOrNull(points, i + 1);
                TouchPoint touchPoint2 = (TouchPoint) orNull;
                if (touchPoint2 != null) {
                    arrayList.add(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()));
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += 2;
                } else {
                    break;
                }
            }
        }
        return arrayList;
    }

    public final void setEndPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.endPoint = touchPoint;
    }

    public final void setSelection(@Nullable ReaderSelection readerSelection) {
        this.selection = readerSelection;
    }

    public final void setStartPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.startPoint = touchPoint;
    }
}
