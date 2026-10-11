package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.text.layout.TextShapeSegmenter;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001cB-\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/NormalizeTextShapesFontSizeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.STRING_SIG, "getNotePageId", "()Ljava/lang/String;", "notePageId", "i", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNormalizeTextShapesFontSizeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalizeTextShapesFontSizeAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/NormalizeTextShapesFontSizeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n800#2,11:67\n1549#2:78\n1620#2,3:79\n766#2:82\n857#2,2:83\n1855#2:85\n1747#2,3:86\n1856#2:89\n1549#2:90\n1620#2,3:91\n*S KotlinDebug\n*F\n+ 1 NormalizeTextShapesFontSizeAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/NormalizeTextShapesFontSizeAction\n*L\n39#1:67,11\n41#1:78\n41#1:79,3\n42#1:82\n42#1:83,2\n47#1:85\n48#1:86,3\n47#1:89\n58#1:90\n58#1:91,3\n*E\n"})
/* loaded from: classes8.dex */
public final class NormalizeTextShapesFontSizeAction extends RxBaseAppAction<List<? extends Shape>> {
    public static final double LIMIT_RATIO = 1.5d;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String notePageId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final FontModel model;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.NormalizeTextShapesFontSizeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9914a<T, R> implements Function {
        public C9914a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull NormalizeTextShapesFontSizeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NormalizeTextShapesFontSizeAction.this.m39913l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.NormalizeTextShapesFontSizeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9915b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<HWRTextShape> f50595e;

        public C9915b(List<HWRTextShape> list) {
            this.f50595e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull List<HWRTextShape> it2) {
            List<Shape> plus;
            Intrinsics.checkNotNullParameter(it2, "it");
            plus = CollectionsKt___CollectionsKt.plus((Collection) this.f50595e, (Iterable) it2);
            return plus;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NormalizeTextShapesFontSizeAction(@NotNull EditorBundle editorBundle, @NotNull String notePageId, @NotNull List<? extends Shape> shapes, @NotNull FontModel model) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(model, "model");
        this.notePageId = notePageId;
        this.shapes = shapes;
        this.model = model;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        Observable<List<Shape>> flatMap = Observable.just(this).flatMap(new C9914a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final FontModel getModel() {
        return this.model;
    }

    @NotNull
    public final String getNotePageId() {
        return this.notePageId;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    /* renamed from: l */
    public final Observable<List<Shape>> m39913l() {
        int collectionSizeOrDefault;
        Float m73066minOrNull;
        int collectionSizeOrDefault2;
        double averageOfFloat;
        int roundToInt;
        boolean z;
        boolean z2;
        List flatten;
        List flatten2;
        List<Shape> list = this.shapes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof HWRTextShape) {
                arrayList.add(obj);
            }
        }
        List<List<List<HWRTextShape>>> segmentLines = new TextShapeSegmenter().segmentLines(arrayList);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Float.valueOf(ShapeKt.getRealTextSize((HWRTextShape) it2.next())));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = arrayList2.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            if (((Number) next).floatValue() > 0.0f) {
                arrayList3.add(next);
            }
        }
        m73066minOrNull = CollectionsKt___CollectionsKt.m73066minOrNull((Iterable<Float>) arrayList3);
        if (m73066minOrNull == null) {
            Observable<List<Shape>> just = Observable.just(this.shapes);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        double floatValue = m73066minOrNull.floatValue() * 1.5d;
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        Iterator<T> it4 = segmentLines.iterator();
        while (it4.hasNext()) {
            List<List> list2 = (List) it4.next();
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (List list3 : list2) {
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it5 = list3.iterator();
                        while (it5.hasNext()) {
                            if (((double) ShapeKt.getRealTextSize((HWRTextShape) it5.next())) > floatValue) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (z) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                flatten = CollectionsKt__IterablesKt.flatten(list2);
                arrayList4.addAll(flatten);
            } else {
                flatten2 = CollectionsKt__IterablesKt.flatten(list2);
                arrayList5.addAll(flatten2);
            }
        }
        if (arrayList5.isEmpty()) {
            Observable<List<Shape>> just2 = Observable.just(this.shapes);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList5, 10);
        ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault2);
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            arrayList6.add(Float.valueOf(ShapeKt.getRealTextSize((HWRTextShape) it6.next())));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList6);
        roundToInt = MathKt__MathJVMKt.roundToInt(averageOfFloat);
        ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
        shapeTypesetArgs.setTypeface(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, this.model, null, 1, null));
        shapeTypesetArgs.setFontSize(Float.valueOf(roundToInt));
        Observable map = new CloneTransformHWRShapesAction(getEditorBundle(), this.notePageId, arrayList5, shapeTypesetArgs).build().map(new C9915b(arrayList4));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
