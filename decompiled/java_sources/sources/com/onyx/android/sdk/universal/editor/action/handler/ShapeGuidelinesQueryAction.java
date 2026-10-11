package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.GuideLineKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractorFactory;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0003H\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeGuidelinesQueryAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "visibleBoxList", "l", "", "shapeBoxInfoId", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", GoogleApiAvailabilityLight.f29016b, "shape", "shapeBoxInfo", "m", "guideLine", "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeGuidelinesQueryAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeGuidelinesQueryAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeGuidelinesQueryAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1549#2:71\n1620#2,2:72\n1549#2:75\n1620#2,3:76\n766#2:79\n857#2,2:80\n1622#2:82\n800#2,11:83\n1#3:74\n*S KotlinDebug\n*F\n+ 1 ShapeGuidelinesQueryAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeGuidelinesQueryAction\n*L\n38#1:71\n38#1:72,2\n45#1:75\n45#1:76,3\n47#1:79\n47#1:80,2\n38#1:82\n55#1:83,11\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeGuidelinesQueryAction extends RxBaseAppAction<List<? extends Guideline>> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeGuidelinesQueryAction$a */
    /* loaded from: classes8.dex */
    public static final class C9291a<T, R> implements Function {
        public C9291a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<BoxInfo> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.visibleBoxList(ShapeGuidelinesQueryAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeGuidelinesQueryAction$b */
    /* loaded from: classes8.dex */
    public static final class C9292b<T, R> implements Function {
        public C9292b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Guideline> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShapeGuidelinesQueryAction.this.m38679l(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeGuidelinesQueryAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Guideline>> create() {
        Observable<List<Guideline>> map = Observable.just(Unit.INSTANCE).observeOn(AndroidSchedulers.mainThread()).map(new C9291a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9292b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<Guideline> m38679l(List<BoxInfo> visibleBoxList) {
        int collectionSizeOrDefault;
        List<Guideline> flatten;
        List<Guideline> emptyList;
        int collectionSizeOrDefault2;
        List flatten2;
        List<BoxInfo> list = visibleBoxList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BoxInfo boxInfo : list) {
            if (isDisposed()) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            List<UniversalShape> m38681n = m38681n(boxInfo.getId());
            if (!(!isDisposed())) {
                m38681n = null;
            }
            List ensureList = CollectionKt.ensureList(m38681n);
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(ensureList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator it2 = ensureList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(m38680m((UniversalShape) it2.next(), boxInfo));
            }
            flatten2 = CollectionsKt__IterablesKt.flatten(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : flatten2) {
                if (m38682o((Guideline) obj)) {
                    arrayList3.add(obj);
                }
            }
            arrayList.add(arrayList3);
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        return flatten;
    }

    /* renamed from: m */
    public final List<Guideline> m38680m(UniversalShape shape, BoxInfo shapeBoxInfo) {
        FeatureCollection featureCollection = shape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        return GuideLineKt.transform(GuideLineExtractorFactory.INSTANCE.create(universalShapeType).extract(shape), BoxInfoUtils.INSTANCE.renderMatrix(shapeBoxInfo));
    }

    /* renamed from: n */
    public final List<UniversalShape> m38681n(String shapeBoxInfoId) {
        List<UniversalShape> emptyList;
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), shapeBoxInfoId);
        if (pageByUniqueId == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<Shape> renderShapeList = NotePageShape.INSTANCE.getRenderShapeList(pageByUniqueId);
        ArrayList arrayList = new ArrayList();
        for (Object obj : renderShapeList) {
            if (obj instanceof UniversalShape) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: o */
    public final boolean m38682o(Guideline guideLine) {
        RectF viewportRect = EditorBundleKt.viewportRect(getEditorBundle());
        RectF boundRect = GuideLineKt.boundRect(guideLine);
        Float valueOf = Float.valueOf(1.0f);
        return viewportRect.intersect(RectKt.ensureMinimumSize(boundRect, valueOf, valueOf));
    }
}
