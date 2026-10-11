package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "virtualBoxInfo", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "targetBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NormalizeShapesMatrixAction extends RxBaseAppAction<BoxInfo> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo targetBoxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$a */
    /* loaded from: classes8.dex */
    public static final class C10121a<T, R> implements Function {
        public C10121a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull NormalizeShapesMatrixAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NormalizeShapesMatrixAction normalizeShapesMatrixAction = NormalizeShapesMatrixAction.this;
            return normalizeShapesMatrixAction.m40285l(normalizeShapesMatrixAction.targetBoxInfo);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$b */
    /* loaded from: classes8.dex */
    public static final class C10122b<T, R> implements Function {
        public C10122b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NormalizeShapesMatrixAction.this.targetBoxInfo;
        }
    }

    @SourceDebugExtension({"SMAP\nNormalizeShapesMatrixAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$2\n*L\n51#1:55,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$c */
    /* loaded from: classes8.dex */
    public static final class C10123c<T> implements Consumer {
        public C10123c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Iterator<T> it3 = NormalizeShapesMatrixAction.this.shapes.iterator();
            while (it3.hasNext()) {
                ((Shape) it3.next()).updateShapeRect();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$d */
    /* loaded from: classes8.dex */
    public static final class C10124d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BoxInfo f50964e;

        public C10124d(BoxInfo boxInfo) {
            this.f50964e = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50964e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NormalizeShapesMatrixAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo targetBoxInfo, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(targetBoxInfo, "targetBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.targetBoxInfo = targetBoxInfo;
        this.shapes = shapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<BoxInfo> create() {
        Observable<BoxInfo> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C10121a()).map(new C10122b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<BoxInfo> m40285l(final BoxInfo virtualBoxInfo) {
        final Map<String, List<Shape>> pageShapeMap = ShapeTypes.INSTANCE.toPageShapeMap(this.shapes);
        Observable<BoxInfo> map = ComputeBoxListActionsKt.findBoxInfoListWithPageIdList$default(this, pageShapeMap.keySet(), false, 2, null).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$normalizeShapesMatrix$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<BoxInfo> boxList) {
                Intrinsics.checkNotNullParameter(boxList, "boxList");
                Map map2 = CollectionKt.toMap(boxList, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$normalizeShapesMatrix$1$boxMap$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull BoxInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return it2.getId();
                    }
                });
                Map<String, List<Shape>> map3 = pageShapeMap;
                final BoxInfo boxInfo = virtualBoxInfo;
                for (Map.Entry<String, List<Shape>> entry : map3.entrySet()) {
                    BoxInfo boxInfo2 = (BoxInfo) AnyKt.getOrElse(map2.get(entry.getKey()), (Function0<? extends Object>) new Function0<BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.NormalizeShapesMatrixAction$normalizeShapesMatrix$1$1$box$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final BoxInfo invoke() {
                            return BoxInfo.this;
                        }
                    });
                    if (!Intrinsics.areEqual(boxInfo2.getId(), boxInfo.getId())) {
                        Matrix crossPageMatrix = BoxInfo.INSTANCE.getCrossPageMatrix(boxInfo2, boxInfo);
                        Iterator<T> it2 = entry.getValue().iterator();
                        while (it2.hasNext()) {
                            ((Shape) it2.next()).postConcat(crossPageMatrix);
                        }
                    }
                }
            }
        }).doOnNext(new C10123c()).map(new C10124d(virtualBoxInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
