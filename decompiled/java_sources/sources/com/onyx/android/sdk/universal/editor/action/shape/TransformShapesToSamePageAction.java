package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppShapeAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B)\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001a\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0004H\u0002J\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/TransformShapesToSamePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "m", "pageBoxMap", GoogleApiAvailabilityLight.f29016b, "l", "i", "Ljava/util/List;", "originShapes", "j", Constants.STRING_SIG, "targetPageId", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTransformShapesToSamePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformShapesToSamePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/TransformShapesToSamePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1855#2,2:61\n*S KotlinDebug\n*F\n+ 1 TransformShapesToSamePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/TransformShapesToSamePageAction\n*L\n43#1:61,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TransformShapesToSamePageAction extends RxBaseAppShapeAction<List<? extends Shape>> {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> originShapes;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public final String targetPageId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.TransformShapesToSamePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C10145a<T, R> implements Function {
        public C10145a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<String, BoxInfo>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformShapesToSamePageAction.this.m40322m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.TransformShapesToSamePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C10146b<T, R> implements Function {
        public C10146b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Map<String, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformShapesToSamePageAction.this.m40323n(it2);
        }
    }

    public /* synthetic */ TransformShapesToSamePageAction(EditorBundle editorBundle, List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, (i & 4) != 0 ? null : str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        Observable<List<Shape>> map = Observable.just(Unit.INSTANCE).flatMap(new C10145a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10146b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final String m40321l() {
        Object firstOrNull;
        String str = this.targetPageId;
        if (str != null) {
            return str;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.originShapes);
        Shape shape = (Shape) firstOrNull;
        String pageUniqueId = shape != null ? shape.getPageUniqueId() : null;
        return pageUniqueId == null ? "" : pageUniqueId;
    }

    /* renamed from: m */
    public final Observable<Map<String, BoxInfo>> m40322m() {
        Set mutableSet;
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(ShapeTypes.INSTANCE.toPageIdSet(this.originShapes));
        CollectionKt.safeAdd(mutableSet, this.targetPageId);
        return ComputeBoxListActionsKt.findPageBoxInfoMap(this, mutableSet);
    }

    /* renamed from: n */
    public final List<Shape> m40323n(Map<String, BoxInfo> pageBoxMap) {
        List<Shape> emptyList;
        String m40321l = m40321l();
        ArrayList arrayList = new ArrayList();
        BoxInfo boxInfo = pageBoxMap.get(m40321l);
        if (boxInfo == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        for (Shape shape : this.originShapes) {
            BoxInfo boxInfo2 = pageBoxMap.get(shape.getPageUniqueId());
            if (boxInfo2 != null) {
                Matrix crossPageMatrix = BoxInfo.INSTANCE.getCrossPageMatrix(boxInfo2, boxInfo);
                Shape clone = ShapeCopyUtils.INSTANCE.clone(shape);
                clone.setShapeUniqueId(UUIDUtils.INSTANCE.rawUUID());
                clone.setPageUniqueId(m40321l);
                clone.setShapeMatrix(MatrixKt.concat(clone.getShapeMatrix(), crossPageMatrix));
                clone.updateShapeRect();
                arrayList.add(clone);
            }
        }
        return arrayList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransformShapesToSamePageAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> originShapes, @Nullable String str) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(originShapes, "originShapes");
        this.originShapes = originShapes;
        this.targetPageId = str;
    }
}
