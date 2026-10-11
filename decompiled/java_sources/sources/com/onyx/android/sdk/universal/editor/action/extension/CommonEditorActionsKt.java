package com.onyx.android.sdk.universal.editor.action.extension;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction;
import com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxListAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.page.UpdateVirtualPageAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageByIdEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoShapeAndHighLightEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000l\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006*\u00020\u00022\u0006\u0010\t\u001a\u00020\n\u001a$\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006*\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u001a\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\f\u001a \u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012\u001a\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u001a\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u0010\u001a\u00020\f\u001a$\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012\u001a\u0010\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u00020\u0002\u001a\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\u0006\u0012\u0002\b\u00030\u0014\u001a\u0016\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006*\u00020\u0002\u001a\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006*\u0006\u0012\u0002\b\u00030\u0014\u001a\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0006*\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u0019\u001a\u00020\b\u001a\u0018\u0010\u001a\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u001b0\u00072\u0006\u0010\u001c\u001a\u00020\u001d\u001a\u001a\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u0006*\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u001f\u001a\u00020 \u001a\"\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0006*\u0006\u0012\u0002\b\u00030\u00142\f\u0010#\u001a\b\u0012\u0004\u0012\u00020 0$¨\u0006%"}, m61528d2 = {"gotoPageOrShape", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "shapeLinkBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "hitTestVisibleBoxListObservable", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "screenRectF", "Landroid/graphics/RectF;", "list", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "hitTestVisibleBoxObservable", "touchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchData", "x", "", "y", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "loadCurrentVisibleBox", "loadVisibleBoxList", "obtainVirtualPage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageBoxInfo", "updateSliceListState", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "state", "Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;", "updateVirtualPage", CouchFieldKey.KEY_TOC_PAGE_ID, "", "updateVirtualPages", "", "pageIdSet", "", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCommonEditorActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonEditorActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1549#2:118\n1620#2,3:119\n1855#2,2:122\n*S KotlinDebug\n*F\n+ 1 CommonEditorActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt\n*L\n64#1:118\n64#1:119,3\n97#1:122,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CommonEditorActionsKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9028a<T, R> implements Function {

        /* renamed from: e */
        public static final C9028a<T, R> f48921e = new C9028a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<BoxInfo> apply(@NotNull HitTestVisibleBoxListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getBoxList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9029b<T, R> implements Function {

        /* renamed from: e */
        public static final C9029b<T, R> f48922e = new C9029b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo boxInfo = it2.getBoxInfo();
            return boxInfo == null ? new BoxInfo() : boxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt$c */
    /* loaded from: classes8.dex */
    public static final class C9030c<T, R> implements Function {

        /* renamed from: e */
        public static final C9030c<T, R> f48923e = new C9030c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull UpdateVirtualPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public static final void gotoPageOrShape(@NotNull EditorBundle editorBundle, @NotNull ShapeLinkBean shapeLinkBean) {
        Object gotoShapeAndHighLightEvent;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(shapeLinkBean, "shapeLinkBean");
        if (StringKt.isEmpty(shapeLinkBean.getFirstLinkedShapeId())) {
            LinkDocBean docBean = shapeLinkBean.getDocBean();
            if (docBean == null) {
                return;
            } else {
                gotoShapeAndHighLightEvent = new GotoPageByIdEvent(String.valueOf(docBean.getPageId()));
            }
        } else {
            LinkDocBean docBean2 = shapeLinkBean.getDocBean();
            gotoShapeAndHighLightEvent = new GotoShapeAndHighLightEvent(CollectionKt.ensureList(docBean2 != null ? docBean2.getShapeIdList() : null));
        }
        EditorBundleKt.postEvent(editorBundle, gotoShapeAndHighLightEvent);
    }

    @NotNull
    public static final Observable<List<BoxInfo>> hitTestVisibleBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull List<TouchData> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchData> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TouchData) it2.next()).getTouchPoint());
        }
        return hitTestVisibleBoxListObservable(editorBundle, geometryUtils.boundRect(arrayList));
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        return hitTestVisibleBoxObservable(rxBaseAppAction, touchData.getTouchPoint());
    }

    @NotNull
    public static final Observable<BoxInfo> loadCurrentVisibleBox(@NotNull RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return loadCurrentVisibleBox(rxBaseAppAction.getEditorBundle());
    }

    @NotNull
    public static final Observable<List<BoxInfo>> loadVisibleBoxList(@NotNull RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return loadVisibleBoxList(rxBaseAppAction.getEditorBundle());
    }

    @NotNull
    public static final Observable<VirtualPage> obtainVirtualPage(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull final BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return DocCommonActionsKt.createCoreObservable(rxBaseAppAction, new Function1<WorkBundle, VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt$obtainVirtualPage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualPage invoke(@NotNull WorkBundle it2) {
                VirtualPage copy;
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualPage obtainVirtualPage = it2.getVirtualPolicy().obtainVirtualPage(BoxInfo.this);
                return (obtainVirtualPage == null || (copy = obtainVirtualPage.copy()) == null) ? new VirtualPage() : copy;
            }
        });
    }

    public static final void updateSliceListState(@NotNull List<SliceInfo> list, @NotNull SliceInfo.State state) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((SliceInfo) it2.next()).updateState(state);
        }
    }

    @NotNull
    public static final Observable<?> updateVirtualPage(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull String pageId) {
        List listOf;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        return updateVirtualPages(rxBaseAppAction, listOf);
    }

    @NotNull
    public static final Observable<Boolean> updateVirtualPages(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Collection<String> pageIdSet) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        if (CollectionKt.isNullOrEmpty(pageIdSet)) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new UpdateVirtualPageAction(rxBaseAppAction.getEditorBundle(), pageIdSet).build().map(C9030c.f48923e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return hitTestVisibleBoxObservable(rxBaseAppAction, touchPoint.getX(), touchPoint.getY());
    }

    @NotNull
    public static final Observable<BoxInfo> loadCurrentVisibleBox(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return DocCommonActionsKt.createCoreObservable(editorBundle, new Function1<WorkBundle, BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt$loadCurrentVisibleBox$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final BoxInfo invoke(@NotNull WorkBundle workBundle) {
                Object obj;
                Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                Iterator<T> it2 = WorkBundleKt.visibleBoxList(workBundle).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    if (Intrinsics.areEqual(((BoxInfo) obj).getId(), WorkBundleKt.obtainBoxManager(workBundle).getCurrentBoxId())) {
                        break;
                    }
                }
                BoxInfo boxInfo = (BoxInfo) obj;
                return boxInfo == null ? new BoxInfo() : boxInfo;
            }
        });
    }

    @NotNull
    public static final Observable<List<BoxInfo>> loadVisibleBoxList(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return DocCommonActionsKt.createCoreObservable(editorBundle, new Function1<WorkBundle, List<? extends BoxInfo>>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt$loadVisibleBoxList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<BoxInfo> invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return WorkBundleKt.visibleBoxList(it2);
            }
        });
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, float f, float f2) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return hitTestVisibleBoxObservable(rxBaseAppAction.getEditorBundle(), f, f2);
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull EditorBundle editorBundle, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        return hitTestVisibleBoxObservable(editorBundle, touchData.getTouchPoint());
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull EditorBundle editorBundle, @NotNull List<TouchData> list) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) list);
        TouchData touchData = (TouchData) lastOrNull;
        if (touchData != null) {
            return hitTestVisibleBoxObservable(editorBundle, touchData.getTouchPoint().getX(), touchData.getTouchPoint().getY());
        }
        Observable<BoxInfo> just = Observable.just(new BoxInfo());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull EditorBundle editorBundle, @NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return hitTestVisibleBoxObservable(editorBundle, touchPoint.getX(), touchPoint.getY());
    }

    @NotNull
    public static final Observable<List<BoxInfo>> hitTestVisibleBoxListObservable(@NotNull EditorBundle editorBundle, @NotNull RectF screenRectF) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(screenRectF, "screenRectF");
        Observable map = new HitTestVisibleBoxListAction(editorBundle, screenRectF).build().map(C9028a.f48921e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<BoxInfo> hitTestVisibleBoxObservable(@NotNull EditorBundle editorBundle, float f, float f2) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        HitTestVisibleBoxAction hitTestVisibleBoxAction = new HitTestVisibleBoxAction(editorBundle);
        hitTestVisibleBoxAction.setX(f);
        hitTestVisibleBoxAction.setY(f2);
        Observable map = hitTestVisibleBoxAction.build().map(C9029b.f48922e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
