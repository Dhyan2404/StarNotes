package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J.\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00060\u0004H\u0002J\"\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\n\u001a\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/RenderSelectionDirtyRectToDisplayAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "boxShapeListMap", "m", "virtualPageBoxInfo", "shapeList", "l", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "transformBean", "", "i", Constants.HASIDCALL_INDEX_SIG, "invalidate", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderSelectionDirtyRectToDisplayAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderSelectionDirtyRectToDisplayAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/RenderSelectionDirtyRectToDisplayAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n766#2:90\n857#2,2:91\n1855#2,2:93\n*S KotlinDebug\n*F\n+ 1 RenderSelectionDirtyRectToDisplayAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/RenderSelectionDirtyRectToDisplayAction\n*L\n55#1:90\n55#1:91,2\n59#1:93,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderSelectionDirtyRectToDisplayAction extends RxBaseAppAction<RenderSelectionDirtyRectToDisplayAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean transformBean;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean invalidate;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.RenderSelectionDirtyRectToDisplayAction$a */
    /* loaded from: classes8.dex */
    public static final class C9936a<T, R> implements Function {
        public C9936a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RenderSelectionDirtyRectToDisplayAction> apply(@NotNull Map<BoxInfo, ? extends List<? extends List<? extends Shape>>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderSelectionDirtyRectToDisplayAction.this.m39963m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.RenderSelectionDirtyRectToDisplayAction$b */
    /* loaded from: classes8.dex */
    public static final class C9937b<T, R> implements Function {
        public C9937b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map.Entry<BoxInfo, List<List<Shape>>> it2) {
            List flatten;
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderSelectionDirtyRectToDisplayAction renderSelectionDirtyRectToDisplayAction = RenderSelectionDirtyRectToDisplayAction.this;
            BoxInfo key = it2.getKey();
            flatten = CollectionsKt__IterablesKt.flatten(it2.getValue());
            return renderSelectionDirtyRectToDisplayAction.m39962l(key, flatten);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.RenderSelectionDirtyRectToDisplayAction$c */
    /* loaded from: classes8.dex */
    public static final class C9938c<T, R> implements Function {
        public C9938c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderSelectionDirtyRectToDisplayAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderSelectionDirtyRectToDisplayAction.this;
        }
    }

    public /* synthetic */ RenderSelectionDirtyRectToDisplayAction(EditorBundle editorBundle, ShapeTransformBean shapeTransformBean, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, shapeTransformBean, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderSelectionDirtyRectToDisplayAction> create() {
        List<Shape> transformShapes = this.transformBean.getTransformShapes();
        final Map<String, List<Shape>> pageShapeMap = ShapeTypes.INSTANCE.toPageShapeMap(transformShapes);
        Observable<RenderSelectionDirtyRectToDisplayAction> flatMap = ComputeBoxListActionsKt.findVisibleBoxInfoList((RxBaseAppAction<?>) this, (List<? extends Shape>) transformShapes).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.selection.RenderSelectionDirtyRectToDisplayAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Map<BoxInfo, List<List<Shape>>> apply(@NotNull List<BoxInfo> boxList) {
                Intrinsics.checkNotNullParameter(boxList, "boxList");
                final Map<String, List<Shape>> map = pageShapeMap;
                Map mapList = CollectionKt.toMapList(boxList, new Function1<BoxInfo, List<? extends Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.RenderSelectionDirtyRectToDisplayAction$create$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final List<Shape> invoke(@NotNull BoxInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return CollectionKt.ensureList(map.get(it2.getId()));
                    }
                });
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : mapList.entrySet()) {
                    if (!((Collection) entry.getValue()).isEmpty()) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                return linkedHashMap;
            }
        }).observeOn(getMainUIScheduler()).flatMap(new C9936a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<?> m39962l(BoxInfo virtualPageBoxInfo, List<? extends Shape> shapeList) {
        RectF rectF = new RectF();
        for (Shape shape : shapeList) {
            RectF boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(shape);
            MatrixKt.invertMatrix(this.transformBean.getTransformShapeMatrix(shape)).mapRect(boundingRectWithWidth);
            rectF = RectFKt.unionOrCopy(rectF, boundingRectWithWidth);
        }
        ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs = new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(rectF, virtualPageBoxInfo), false, this.invalidate, false, false, 48, null);
        forceRenderNoteDirtyArgs.setEnabledPrintFailLog(false);
        return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this, forceRenderNoteDirtyArgs);
    }

    /* renamed from: m */
    public final Observable<RenderSelectionDirtyRectToDisplayAction> m39963m(Map<BoxInfo, ? extends List<? extends List<? extends Shape>>> boxShapeListMap) {
        Map mutableMap;
        if (boxShapeListMap.isEmpty()) {
            Observable<RenderSelectionDirtyRectToDisplayAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Set<String> boxIdSet = BoxInfoUtils.INSTANCE.toBoxIdSet(EditorBundleKt.visibleBoxList(getEditorBundle()));
        Set<BoxInfo> keySet = boxShapeListMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (!boxIdSet.contains(((BoxInfo) obj).getId())) {
                arrayList.add(obj);
            }
        }
        EditorBundleKt.renderManager(getEditorBundle()).invalidateNotVisiblePagesIf(BoxInfoUtils.INSTANCE.toBoxIdSet(arrayList));
        mutableMap = MapsKt__MapsKt.toMutableMap(boxShapeListMap);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            mutableMap.remove((BoxInfo) it2.next());
        }
        Observable concatMap = Observable.fromIterable(mutableMap.entrySet()).concatMap(new C9937b());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<RenderSelectionDirtyRectToDisplayAction> map = RxjavaKt.takeLastOne(concatMap).map(new C9938c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderSelectionDirtyRectToDisplayAction(@NotNull EditorBundle editorBundle, @NotNull ShapeTransformBean transformBean, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(transformBean, "transformBean");
        this.transformBean = transformBean;
        this.invalidate = z;
    }
}
