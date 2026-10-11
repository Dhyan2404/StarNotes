package com.onyx.android.sdk.universal.editor.action.hwr;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.utils.HWRStrokeUtils;
import com.onyx.android.sdk.neohwr.segmenter.InputShape;
import com.onyx.android.sdk.neohwr.segmenter.TextBlock;
import com.onyx.android.sdk.neohwr.segmenter.TextElement;
import com.onyx.android.sdk.neohwr.segmenter.TextLine;
import com.onyx.android.sdk.neohwr.segmenter.TextSegmentResult;
import com.onyx.android.sdk.neohwr.segmenter.TextSegmenter;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B%\u0012\u0006\u0010&\u001a\u00020%\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\b\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J \u0010\f\u001a\u00020\u00022\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bH\u0002J&\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J(\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bH\u0002R(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010$\u001a\u00020 8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\r\u0010\"¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", C4921e.f26528e, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;", "Lkotlin/collections/ArrayList;", GoogleApiAvailabilityLight.f29016b, "l", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "inputShapes", "m", C6999h.f39688c, "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "setShapeList", "(Ljava/util/List;)V", "shapeList", "", "i", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "segmentation", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "j", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "", C4921e.f26537n, "I", "minCorrectAngle", "maxBlockSize", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRInputSegmentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRInputSegmentAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n37#2,2:120\n1549#3:122\n1620#3,2:123\n1549#3:125\n1620#3,2:126\n1360#3:128\n1446#3,2:129\n800#3,11:131\n1448#3,3:142\n1622#3:145\n1622#3:146\n1045#3:147\n1855#3:148\n1855#3,2:149\n1856#3:151\n*S KotlinDebug\n*F\n+ 1 HWRInputSegmentAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction\n*L\n56#1:120,2\n60#1:122\n60#1:123,2\n61#1:125\n61#1:126,2\n72#1:128\n72#1:129,2\n72#1:131,11\n72#1:142,3\n61#1:145\n60#1:146\n91#1:147\n91#1:148\n96#1:149,2\n91#1:151\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRInputSegmentAction extends RxBaseAppAction<HWRInputSegmentResult> {

    /* renamed from: m */
    @NotNull
    public static final String f49704m = "HWRInputSegmentAction";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean segmentation;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final HWRBundle hwrBundle;

    /* renamed from: k, reason: from kotlin metadata */
    public final int minCorrectAngle;

    /* renamed from: l, reason: from kotlin metadata */
    public final int maxBlockSize;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRInputSegmentAction$a */
    /* loaded from: classes8.dex */
    public static final class C9452a<T, R> implements Function {
        public C9452a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRInputSegmentResult apply(@NotNull HWRInputSegmentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRInputSegmentAction hWRInputSegmentAction = HWRInputSegmentAction.this;
            return hWRInputSegmentAction.m39024o(hWRInputSegmentAction.getShapeList());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRInputSegmentAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapeList, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
        this.segmentation = z;
        this.hwrBundle = editorBundle.getAiBundle().getHwrBundle();
        this.minCorrectAngle = ResManager.INSTANCE.getInteger(C8045R.integer.hwr_segmentation_min_correct_angle);
        this.maxBlockSize = 200;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRInputSegmentResult> create() {
        Observable<HWRInputSegmentResult> map = Observable.just(this).observeOn(this.hwrBundle.getHwrObserveOn()).map(new C9452a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: l */
    public final ArrayList<HWRInputShape> m39021l(List<? extends Shape> shapes) {
        List<Shape> sortedWith;
        float[] floatArray;
        ArrayList<HWRInputShape> arrayList = new ArrayList<>();
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(shapes, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRInputSegmentAction$buildSegmentShapes$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((Shape) t).getUpdatedAt(), ((Shape) t2).getUpdatedAt());
                return compareValues;
            }
        });
        for (Shape shape : sortedWith) {
            Matrix concat = MatrixKt.concat(shape.getShapeMatrix(), ShapeOptions.INSTANCE.getTransformingMatrix(shape));
            HWRStrokeUtils hWRStrokeUtils = HWRStrokeUtils.INSTANCE;
            List<HWRPointerEvent> applyMatrix = hWRStrokeUtils.applyMatrix(hWRStrokeUtils.inputPointerEvents(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()), concat);
            if (applyMatrix != null) {
                ArrayList arrayList2 = new ArrayList();
                for (HWRPointerEvent hWRPointerEvent : applyMatrix) {
                    arrayList2.add(Float.valueOf(hWRPointerEvent.getX()));
                    arrayList2.add(Float.valueOf(hWRPointerEvent.getY()));
                }
                HWRInputShape hWRInputShape = new HWRInputShape(shape, applyMatrix);
                floatArray = CollectionsKt___CollectionsKt.toFloatArray(arrayList2);
                hWRInputShape.setPoints(floatArray);
                arrayList.add(hWRInputShape);
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public final HWRInputSegmentResult m39022m(HWRInputSegmentResult result, ArrayList<HWRInputShape> inputShapes) {
        if (result.getBlocks().size() < this.maxBlockSize) {
            return result;
        }
        LogUtils.eTag(f49704m, BaseError.DATA_TOO_LARGE);
        return m39023n(inputShapes);
    }

    /* renamed from: n */
    public final HWRInputSegmentResult m39023n(ArrayList<HWRInputShape> shapes) {
        List listOf;
        List listOf2;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new HWRInputLine(new RectF(), new Matrix(), 0.0f, shapes));
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(new HWRInputBlock(listOf));
        return new HWRInputSegmentResult(listOf2);
    }

    /* renamed from: o */
    public final HWRInputSegmentResult m39024o(List<? extends Shape> shapes) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        ArrayList<HWRInputShape> m39021l = m39021l(shapes);
        if (!this.segmentation) {
            return m39023n(m39021l);
        }
        TextSegmentResult textSegmentResult = new TextSegmentResult();
        if (!TextSegmenter.INSTANCE.segment((InputShape[]) m39021l.toArray(new InputShape[0]), textSegmentResult)) {
            return m39023n(m39021l);
        }
        List<TextBlock> blocks = textSegmentResult.getBlocks();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(blocks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = blocks.iterator();
        while (it2.hasNext()) {
            List<TextLine> lines = ((TextBlock) it2.next()).getLines();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(lines, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (TextLine textLine : lines) {
                Matrix matrix = new Matrix();
                if (Math.abs(textLine.getAngle()) > this.minCorrectAngle) {
                    matrix.setRotate(textLine.getAngle(), textLine.getRegion().centerX(), textLine.getRegion().centerY());
                }
                RectF region = textLine.getRegion();
                float characterSize = textLine.getCharacterSize();
                List<TextElement> elements = textLine.getElements();
                ArrayList arrayList3 = new ArrayList();
                Iterator<T> it3 = elements.iterator();
                while (it3.hasNext()) {
                    List<InputShape> shapes2 = ((TextElement) it3.next()).getShapes();
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj : shapes2) {
                        if (obj instanceof HWRInputShape) {
                            arrayList4.add(obj);
                        }
                    }
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList3, arrayList4);
                }
                arrayList2.add(new HWRInputLine(region, matrix, characterSize, arrayList3));
            }
            arrayList.add(new HWRInputBlock(arrayList2));
        }
        return m39022m(new HWRInputSegmentResult(arrayList), m39021l);
    }

    public final void setShapeList(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeList = list;
    }
}
