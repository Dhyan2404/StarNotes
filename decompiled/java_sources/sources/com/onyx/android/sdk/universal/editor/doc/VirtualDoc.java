package com.onyx.android.sdk.universal.editor.doc;

import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.collections.StringIndexedArrayList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.base.utils.OrderListUtils;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualDoc;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b$\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bT\u0010UJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0014\u0010\b\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006J\u0014\u0010\u0011\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fJ\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0002J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u0002R(\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R#\u0010-\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00060'8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R#\u00100\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00060'8\u0006¢\u0006\f\n\u0004\b.\u0010*\u001a\u0004\b/\u0010,R#\u00103\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00060'8\u0006¢\u0006\f\n\u0004\b1\u0010*\u001a\u0004\b2\u0010,R#\u00106\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00060'8\u0006¢\u0006\f\n\u0004\b4\u0010*\u001a\u0004\b5\u0010,R$\u0010=\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010D\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010H\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010?\u001a\u0004\bF\u0010A\"\u0004\bG\u0010CR\"\u0010L\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010?\u001a\u0004\bJ\u0010A\"\u0004\bK\u0010CR\"\u0010P\u001a\u00020M8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010S¨\u0006V"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualDoc;", "", "", "init", "destroy", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "list", "initPageList", "virtualPage", "addPage", "updatePage", "", "pageIndex", "insertPage", "", "virtualPages", "removePage", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "movePageArgs", "movePage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "obtainVirtualPage", "updateCellPageMap", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "boxCellInfo", "reorderIndex", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageModelChangedData;", "convertToChangedModelData", "clearAfterSave", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "a", "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "getPageList", "()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;", "setPageList", "(Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;)V", "pageList", "", "", "b", "Ljava/util/Map;", "getSaveMap", "()Ljava/util/Map;", "saveMap", "c", "getRemoveMap", "removeMap", "d", "getDirtyMapHistory", "dirtyMapHistory", "e", "getCellInfoPageMap", "cellInfoPageMap", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getGlobalPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "setGlobalPage", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "globalPage", C6998g.f39679a, Constants.STRING_SIG, "getCoverPageId", "()Ljava/lang/String;", "setCoverPageId", "(Ljava/lang/String;)V", "coverPageId", C6999h.f39688c, "getFirstPageIdOnInit", "setFirstPageIdOnInit", "firstPageIdOnInit", "i", "getPageIdOnInit", "setPageIdOnInit", "pageIdOnInit", "", "j", Constants.HASIDCALL_INDEX_SIG, "isEnabledReorderIndex", Constants.BOOLEAN_VALUE_SIG, "setEnabledReorderIndex", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVirtualDoc.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualDoc.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualDoc\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,246:1\n1855#2,2:247\n1855#2,2:249\n1549#2:251\n1620#2,3:252\n1549#2:255\n1620#2,3:256\n1855#2,2:259\n1855#2,2:262\n1#3:261\n215#4,2:264\n215#4,2:266\n*S KotlinDebug\n*F\n+ 1 VirtualDoc.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualDoc\n*L\n65#1:247,2\n104#1:249,2\n159#1:251\n159#1:252,3\n166#1:255\n166#1:256,3\n168#1:259,2\n184#1:262,2\n199#1:264,2\n210#1:266,2\n*E\n"})
/* loaded from: classes8.dex */
public final class VirtualDoc {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public VirtualPage globalPage;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public StringIndexedArrayList<VirtualPage> pageList = new StringIndexedArrayList<>(new Function1<VirtualPage, String>() { // from class: com.onyx.android.sdk.universal.editor.doc.VirtualDoc$pageList$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final String invoke(@NotNull VirtualPage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getBox().getId();
        }
    }, 0, 2, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, VirtualPage> saveMap = new LinkedHashMap();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<String, VirtualPage> removeMap = new LinkedHashMap();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Map<String, VirtualPage> dirtyMapHistory = new LinkedHashMap();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Map<String, VirtualPage> cellInfoPageMap = new LinkedHashMap();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String coverPageId = "";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String firstPageIdOnInit = "";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String pageIdOnInit = "";

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isEnabledReorderIndex = true;

    /* renamed from: b */
    public static final String m40866b(VirtualPage it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
    }

    public final void addPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.pageList.add(virtualPage);
        updateCellPageMap(virtualPage);
        this.saveMap.put(virtualPage.getBox().getId(), virtualPage);
        this.removeMap.remove(virtualPage.getBox().getId());
        this.dirtyMapHistory.put(virtualPage.getBox().getId(), virtualPage);
        virtualPage.updateTime();
    }

    public final void clearAfterSave() {
        this.saveMap.clear();
        this.removeMap.clear();
    }

    @NotNull
    public final VirtualPageModelChangedData convertToChangedModelData() {
        List<VirtualPage> mutableList;
        List<VirtualPagePathInfo> list;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        reorderIndex();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.saveMap.values());
        mutableList.addAll(this.removeMap.values());
        list = CollectionsKt___CollectionsKt.toList(VirtualPage.INSTANCE.toPagePathInfoList(mutableList));
        Iterator<Map.Entry<String, VirtualPage>> it2 = this.saveMap.entrySet().iterator();
        while (it2.hasNext()) {
            VirtualPage value = it2.next().getValue();
            VirtualPageModel createVirtualPageModel = VirtualPage.INSTANCE.createVirtualPageModel(value, list);
            if (value.getSaved()) {
                arrayList2.add(createVirtualPageModel);
            } else {
                arrayList.add(createVirtualPageModel);
                value.setSaved(true);
            }
        }
        Iterator<Map.Entry<String, VirtualPage>> it3 = this.removeMap.entrySet().iterator();
        while (it3.hasNext()) {
            VirtualPage value2 = it3.next().getValue();
            if (value2.getSaved()) {
                VirtualPageModel createVirtualPageModel2 = VirtualPage.INSTANCE.createVirtualPageModel(value2, list);
                createVirtualPageModel2.setStatus(1);
                arrayList3.add(createVirtualPageModel2);
            }
        }
        return new VirtualPageModelChangedData(arrayList, arrayList2, arrayList3);
    }

    public final void destroy() {
        this.pageList.clear();
        this.saveMap.clear();
        this.removeMap.clear();
        this.dirtyMapHistory.clear();
        this.cellInfoPageMap.clear();
        this.globalPage = null;
        this.coverPageId = "";
        this.firstPageIdOnInit = "";
        this.pageIdOnInit = "";
    }

    @NotNull
    public final Map<String, VirtualPage> getCellInfoPageMap() {
        return this.cellInfoPageMap;
    }

    @NotNull
    public final String getCoverPageId() {
        return this.coverPageId;
    }

    @NotNull
    public final Map<String, VirtualPage> getDirtyMapHistory() {
        return this.dirtyMapHistory;
    }

    @NotNull
    public final String getFirstPageIdOnInit() {
        return this.firstPageIdOnInit;
    }

    @Nullable
    public final VirtualPage getGlobalPage() {
        return this.globalPage;
    }

    @NotNull
    public final String getPageIdOnInit() {
        return this.pageIdOnInit;
    }

    @NotNull
    public final StringIndexedArrayList<VirtualPage> getPageList() {
        return this.pageList;
    }

    @NotNull
    public final Map<String, VirtualPage> getRemoveMap() {
        return this.removeMap;
    }

    @NotNull
    public final Map<String, VirtualPage> getSaveMap() {
        return this.saveMap;
    }

    public final void init() {
    }

    public final void initPageList(@NotNull Collection<VirtualPage> list) {
        Object firstOrNull;
        VirtualPageConfig virtualPageConfig;
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNonBlank(this.pageList)) {
            Map mutableMap = CollectionKt.toMutableMap(this.pageList, new Function() { // from class: com.sunia.HTREnginev2.g5o
                @Override // io.reactivex.rxjava3.functions.Function
                public final Object apply(Object obj) {
                    String m40866b;
                    m40866b = VirtualDoc.m40866b((VirtualPage) obj);
                    return m40866b;
                }
            });
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                mutableMap.remove(((VirtualPage) it2.next()).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
            }
            LogFileUtils.INSTANCE.m32103e(VirtualDoc.class, "initVirtualPageList", new Exception("currentVirtualPageList is not empty:" + this.pageList.size() + ",newVirtualPageList:" + list.size() + ",distinctCurrentVirtualPageList:" + mutableMap.size()));
            this.pageList.clear();
        }
        this.pageList.addAll(list);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.pageList);
        VirtualPage virtualPage = (VirtualPage) firstOrNull;
        String pageId = (virtualPage == null || (virtualPageConfig = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getPageId();
        if (pageId == null) {
            pageId = "";
        }
        this.firstPageIdOnInit = pageId;
        reorderIndex();
    }

    public final void insertPage(int pageIndex, @NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.pageList.add(pageIndex, virtualPage);
        this.saveMap.put(virtualPage.getBox().getId(), virtualPage);
        this.removeMap.remove(virtualPage.getBox().getId());
        this.dirtyMapHistory.put(virtualPage.getBox().getId(), virtualPage);
        virtualPage.resetOrderIndex();
        virtualPage.updateTime();
    }

    /* renamed from: isEnabledReorderIndex, reason: from getter */
    public final boolean getIsEnabledReorderIndex() {
        return this.isEnabledReorderIndex;
    }

    public final void movePage(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "movePageArgs");
        if (movePageArgs.getFromIndex() == movePageArgs.getToIndex()) {
            Debug.INSTANCE.m32059w(VirtualDoc.class, "no need to move self in the original position", new Object[0]);
            return;
        }
        VirtualPage virtualPage = this.pageList.get(movePageArgs.getFromIndex());
        Intrinsics.checkNotNullExpressionValue(virtualPage, "get(...)");
        VirtualPage virtualPage2 = virtualPage;
        VirtualPage virtualPage3 = this.pageList.get(movePageArgs.getToIndex());
        Intrinsics.checkNotNullExpressionValue(virtualPage3, "get(...)");
        VirtualPage virtualPage4 = virtualPage3;
        this.pageList.remove(movePageArgs.getFromIndex());
        int indexOfId = this.pageList.indexOfId(virtualPage4.getBox().getId());
        if (!movePageArgs.getInsertBefore()) {
            indexOfId++;
        }
        virtualPage2.resetOrderIndex();
        this.pageList.add(indexOfId, virtualPage2);
        this.saveMap.put(virtualPage2.getBox().getId(), virtualPage2);
        this.dirtyMapHistory.put(virtualPage2.getBox().getId(), virtualPage2);
        virtualPage2.updateTime();
        virtualPage4.updateTime();
    }

    @Nullable
    public final VirtualPage obtainVirtualPage(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        return this.pageList.getWithId(boxInfo.getId());
    }

    public final void removePage(@NotNull List<VirtualPage> virtualPages) {
        Intrinsics.checkNotNullParameter(virtualPages, "virtualPages");
        Iterator<T> it2 = virtualPages.iterator();
        while (it2.hasNext()) {
            removePage((VirtualPage) it2.next());
        }
    }

    public final void reorderIndex() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        String stackTraceToString;
        if (CollectionKt.isNullOrEmpty(this.pageList)) {
            return;
        }
        if (!this.isEnabledReorderIndex) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "disable reorderIndex", new Object[0]);
            return;
        }
        Benchmark benchmark = new Benchmark();
        StringIndexedArrayList<VirtualPage> stringIndexedArrayList = this.pageList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(stringIndexedArrayList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<VirtualPage> it2 = stringIndexedArrayList.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(it2.next().getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()));
        }
        List<VirtualPage> reorderIndexChecked = OrderListUtils.INSTANCE.reorderIndexChecked(this.pageList, new Function1<VirtualPage, Float>() { // from class: com.onyx.android.sdk.universal.editor.doc.VirtualDoc$reorderIndex$reorderList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull VirtualPage node) {
                Intrinsics.checkNotNullParameter(node, "node");
                return Float.valueOf(node.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String());
            }
        }, new Function2<VirtualPage, Float, Unit>() { // from class: com.onyx.android.sdk.universal.editor.doc.VirtualDoc$reorderIndex$reorderList$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(VirtualPage virtualPage, Float f) {
                invoke(virtualPage, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull VirtualPage node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                node.setOrderIndex(f);
            }
        });
        if (!VirtualPage.INSTANCE.checkOrderIndex(this.pageList)) {
            StringIndexedArrayList<VirtualPage> stringIndexedArrayList2 = this.pageList;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(stringIndexedArrayList2, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator<VirtualPage> it3 = stringIndexedArrayList2.iterator();
            while (it3.hasNext()) {
                arrayList2.add(Float.valueOf(it3.next().getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()));
            }
            VirtualPage.INSTANCE.reorderOrderIndexByListIndex(this.pageList);
            for (VirtualPage virtualPage : this.pageList) {
                this.saveMap.put(virtualPage.getBox().getId(), virtualPage);
                this.dirtyMapHistory.put(virtualPage.getBox().getId(), virtualPage);
            }
            LogUtils.wTag("reorderIndex", "virtual page origin orderIndex:" + arrayList);
            LogUtils.wTag("reorderIndex", "virtual page current orderIndex:" + arrayList2);
            Exception exc = new Exception("virtual page reorderIndex check fail,thread:" + Thread.currentThread());
            Debug debug = Debug.INSTANCE;
            debug.m32060w(VirtualDoc.class, exc);
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(exc);
            LogUtils.wTag("reorderIndex", stackTraceToString);
            if (debug.getDebug()) {
                throw exc;
            }
        }
        if (!(!reorderIndexChecked.isEmpty())) {
            reorderIndexChecked = null;
        }
        if (reorderIndexChecked != null) {
            benchmark.report("virtual doc reorder index count:" + CollectionKt.getSize(reorderIndexChecked));
            for (VirtualPage virtualPage2 : reorderIndexChecked) {
                this.saveMap.put(virtualPage2.getBox().getId(), virtualPage2);
                this.dirtyMapHistory.put(virtualPage2.getBox().getId(), virtualPage2);
            }
        }
    }

    public final void setCoverPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.coverPageId = str;
    }

    public final void setEnabledReorderIndex(boolean z) {
        this.isEnabledReorderIndex = z;
    }

    public final void setFirstPageIdOnInit(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.firstPageIdOnInit = str;
    }

    public final void setGlobalPage(@Nullable VirtualPage virtualPage) {
        this.globalPage = virtualPage;
    }

    public final void setPageIdOnInit(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageIdOnInit = str;
    }

    public final void setPageList(@NotNull StringIndexedArrayList<VirtualPage> stringIndexedArrayList) {
        Intrinsics.checkNotNullParameter(stringIndexedArrayList, "<set-?>");
        this.pageList = stringIndexedArrayList;
    }

    public final void updateCellPageMap(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.cellInfoPageMap.put(BoxCellInfo.INSTANCE.key(virtualPage.getBoxCellInfo()), virtualPage);
    }

    public final void updatePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.saveMap.put(virtualPage.getBox().getId(), virtualPage);
        this.dirtyMapHistory.put(virtualPage.getBox().getId(), virtualPage);
        virtualPage.updateTime();
    }

    @Nullable
    public final VirtualPage obtainVirtualPage(@NotNull BoxCellInfo boxCellInfo) {
        Intrinsics.checkNotNullParameter(boxCellInfo, "boxCellInfo");
        return this.cellInfoPageMap.get(BoxCellInfo.INSTANCE.key(boxCellInfo));
    }

    public final void removePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.pageList.remove(virtualPage);
        this.cellInfoPageMap.remove(BoxCellInfo.INSTANCE.key(virtualPage.getBoxCellInfo()));
        this.removeMap.put(virtualPage.getBox().getId(), virtualPage);
        this.saveMap.remove(virtualPage.getBox().getId());
        this.dirtyMapHistory.put(virtualPage.getBox().getId(), virtualPage);
        virtualPage.updateTime();
    }
}
