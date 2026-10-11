package com.onyx.android.sdk.universal.editor.extension;

import android.graphics.RectF;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.plugins.template.TemplateReaderPlugin;
import com.onyx.android.sdk.replicator.fts.provider.FTSProvider;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.PageMarginConfig;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.data.PageViewInfo;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.events.app.DocumentStateEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.feature.work.WorkFeature;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0014\u0010\t\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u0007\u001a\n\u0010\n\u001a\u00020\u0003*\u00020\u0000\u001a#\u0010\u000e\u001a\u00020\u0005\"\b\b\u0000\u0010\f*\u00020\u000b*\u00020\u00002\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u001a\n\u0010\u0011\u001a\u00020\u0005*\u00020\u0000\u001a\n\u0010\u0013\u001a\u00020\u0012*\u00020\u0000\u001a\n\u0010\u0014\u001a\u00020\u0001*\u00020\u0000\u001a\f\u0010\u0015\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\n\u0010\u0017\u001a\u00020\u0016*\u00020\u0000\u001a\n\u0010\u0018\u001a\u00020\u0005*\u00020\u0000\u001a\f\u0010\u0019\u001a\u00020\u0005*\u00020\u0000H\u0002\u001a\f\u0010\u001a\u001a\u00020\u0005*\u00020\u0000H\u0002\u001a\n\u0010\u001c\u001a\u00020\u001b*\u00020\u0000\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u0000\u001a\u0018\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u00002\u0006\u0010 \u001a\u00020\u0012\u001a&\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u00002\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u001d2\u0006\u0010$\u001a\u00020\u001e\u001a \u0010!\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u00002\u0006\u0010%\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u001e\u001a\u0012\u0010'\u001a\u00020\u0005*\u00020\u00002\u0006\u0010&\u001a\u00020\u001e\u001a\u0012\u0010*\u001a\u00020(*\u00020\u00002\u0006\u0010)\u001a\u00020(\u001a.\u0010-\u001a&\u0012\f\u0012\n ,*\u0004\u0018\u00010(0( ,*\u0012\u0012\f\u0012\n ,*\u0004\u0018\u00010(0(\u0018\u00010+0+*\u00020\u0000\u001a\f\u0010/\u001a\u0004\u0018\u00010.*\u00020\u0000\u001a\u0012\u00102\u001a\u00020\u001b*\u00020\u00002\u0006\u00101\u001a\u000200\"\u001f\u00107\u001a\u000203*\u00020\u00008FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u00104\u001a\u0004\b5\u00106¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "obtainBoxManager", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "virtualDocViewInfo", "", "updateVirtualDocViewInfo", "", "targetId", "postVirtualDocViewInfo", "collectVirtualDocViewInfo", "", "T", NotificationCompat.CATEGORY_EVENT, "postEvent", "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V", "b", "postDocumentState", "Landroid/graphics/RectF;", "viewportRect", "initBoxManagerBySettings", "a", "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;", "getWorkFeature", "fillVirtualTocTree", "e", "c", "", "isNoteReaderPlugin", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "visibleBoxList", "documentRectF", "collectIntersectsVisibleBoxList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "virtualBoxInfo", "shapeBoundingRectWithWidth", "boxInfo", "updateToVisibleBox", "", "scale", "displayScale", "Lorg/apache/commons/lang3/Range;", "kotlin.jvm.PlatformType", "scaleRange", "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "copyPageMarginConfig", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "model", "updateVirtualDocModel", "Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "getDocFtsProvider", "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "docFtsProvider", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWorkBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkBundle.kt\ncom/onyx/android/sdk/universal/editor/extension/WorkBundleKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 6 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,269:1\n1864#2,3:270\n1864#2,3:275\n1855#2,2:278\n766#2:280\n857#2,2:281\n1855#2,2:287\n574#3:273\n1#4:274\n86#5,4:283\n97#6:289\n*S KotlinDebug\n*F\n+ 1 WorkBundle.kt\ncom/onyx/android/sdk/universal/editor/extension/WorkBundleKt\n*L\n54#1:270,3\n154#1:275,3\n193#1:278,2\n197#1:280\n197#1:281,2\n186#1:287,2\n154#1:273\n154#1:274\n214#1:283,4\n257#1:289\n*E\n"})
/* loaded from: classes8.dex */
public final class WorkBundleKt {

    /* renamed from: a */
    public static final /* synthetic */ KProperty<Object>[] f52095a = {Reflection.property1(new PropertyReference1Impl(WorkBundleKt.class, "docFtsProvider", "getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", 1))};

    /* renamed from: b */
    @NotNull
    public static final DelegatedValueProvider f52096b = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.universal.editor.extension.WorkBundleKt$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final FTSProvider provideValue(CONTEXT context) {
            return ((WorkBundle) context).getNoteBundle().getNoteDoc().getProviderHolder().getNoteFtsProvider();
        }
    };

    /* renamed from: com.onyx.android.sdk.universal.editor.extension.WorkBundleKt$a */
    /* loaded from: classes8.dex */
    public static final class C10372a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ WorkBundle f52097e;

        /* renamed from: f */
        public final /* synthetic */ T f52098f;

        public C10372a(WorkBundle workBundle, T t) {
            this.f52097e = workBundle;
            this.f52098f = t;
        }

        /* renamed from: a */
        public final void m40882a(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52097e.getEventBus().post(this.f52098f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40882a(obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: a */
    public static final BoxManager m40877a(WorkBundle workBundle) {
        return getWorkFeature(workBundle).createBoxManager(workBundle);
    }

    /* renamed from: b */
    public static final void m40878b(WorkBundle workBundle, VirtualDocViewInfo virtualDocViewInfo) {
    }

    /* renamed from: c */
    public static final void m40879c(WorkBundle workBundle) {
        List list;
        ReaderDocumentTableOfContent toc = workBundle.getOpenDocArgs().getToc();
        if (toc == null) {
            return;
        }
        ArrayList<VirtualTocModel> arrayList = new ArrayList();
        Iterator<ReaderDocumentTableOfContentEntry> it2 = toc.getRootEntry().getChildren().iterator();
        while (it2.hasNext()) {
            m40880d(arrayList, null, it2.next());
        }
        for (VirtualTocModel virtualTocModel : arrayList) {
            VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(virtualTocModel.getPageIndex());
            if (virtualPage != null) {
                virtualTocModel.setPageId(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank(((VirtualTocModel) obj).getPageId())) {
                arrayList2.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        workBundle.getVirtualModelProvider().fillVirtualTocList(list);
    }

    @NotNull
    public static final List<BoxInfo> collectIntersectsVisibleBoxList(@NotNull WorkBundle workBundle, @NotNull RectF documentRectF) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(documentRectF, "documentRectF");
        BoxManager boxManager = workBundle.getBoxManager();
        if (boxManager == null) {
            return new ArrayList();
        }
        List<BoxInfo> collectIntersectsVisibleBoxList = boxManager.collectIntersectsVisibleBoxList(documentRectF);
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            Log.d(debug.getTAG(), "findIntersectsVisibleBoxInfoList, documentRectF = " + documentRectF + ", list = " + collectIntersectsVisibleBoxList.size());
        }
        return collectIntersectsVisibleBoxList;
    }

    @NotNull
    public static final VirtualDocViewInfo collectVirtualDocViewInfo(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        VirtualDocViewInfo virtualDocViewInfo = new VirtualDocViewInfo();
        updateVirtualDocViewInfo(workBundle, virtualDocViewInfo);
        m40878b(workBundle, virtualDocViewInfo);
        return virtualDocViewInfo;
    }

    @Nullable
    public static final PageMarginArgs copyPageMarginConfig(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        if (!workBundle.getDocOptions().getAutoApplyPageMargin()) {
            return null;
        }
        PageMarginConfig pageMarginConfig = workBundle.getDocOptions().getPageMarginConfig();
        PageMarginArgs pageMarginArgs = new PageMarginArgs();
        pageMarginArgs.setMarginPercent(pageMarginConfig.getMargin());
        pageMarginArgs.setMarginColor(pageMarginConfig.getStyle().getColor());
        pageMarginArgs.setTemplateResource(pageMarginConfig.getStyle().getTemplateResource());
        pageMarginArgs.setTemplateSpace(pageMarginConfig.getStyle().getTemplateSpace());
        pageMarginArgs.setTemplateResourceId(pageMarginConfig.getStyle().getTemplateResourceId());
        return pageMarginArgs;
    }

    /* renamed from: d */
    public static final void m40880d(List<VirtualTocModel> list, VirtualTocModel virtualTocModel, ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry) {
        Object firstOrNull;
        VirtualTocModel virtualTocModel2 = new VirtualTocModel(readerDocumentTableOfContentEntry.getTitle(), readerDocumentTableOfContentEntry.getPageIndex());
        virtualTocModel2.setUniqueId(readerDocumentTableOfContentEntry.getId());
        virtualTocModel2.setParentId(virtualTocModel != null ? virtualTocModel.getUniqueId() : null);
        virtualTocModel2.ensureUniqueIdExist();
        list.add(virtualTocModel2);
        if (virtualTocModel2.getPageIndex() < 0) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) readerDocumentTableOfContentEntry.getChildren());
            ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry2 = (ReaderDocumentTableOfContentEntry) firstOrNull;
            if (readerDocumentTableOfContentEntry2 != null) {
                virtualTocModel2.setPageIndex(readerDocumentTableOfContentEntry2.getPageIndex());
            }
        }
        Iterator<T> it2 = readerDocumentTableOfContentEntry.getChildren().iterator();
        while (it2.hasNext()) {
            m40880d(list, virtualTocModel2, (ReaderDocumentTableOfContentEntry) it2.next());
        }
    }

    public static final float displayScale(@NotNull WorkBundle workBundle, float f) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Range<Float> scaleRange = scaleRange(workBundle);
        MathUtils mathUtils = MathUtils.INSTANCE;
        Float valueOf = Float.valueOf(f);
        Float minimum = scaleRange.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        Float maximum = scaleRange.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        return ScaleConfig.INSTANCE.displayRoundScale(((Number) mathUtils.clamp(valueOf, minimum, maximum)).floatValue());
    }

    /* renamed from: e */
    public static final void m40881e(WorkBundle workBundle) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : workBundle.getNoteBundle().getNoteDoc().getPageDataMap().entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            NotePage notePage = (NotePage) ((Map.Entry) obj).getValue();
            String safelyGetStr = StringKt.safelyGetStr(notePage.getPageInfo().getTitle());
            if (!(safelyGetStr.length() == 0)) {
                VirtualTocModel virtualTocModel = new VirtualTocModel(safelyGetStr, i);
                virtualTocModel.setPageId(notePage.getPageUniqueId());
                arrayList.add(virtualTocModel);
            }
            i = i2;
        }
        workBundle.getVirtualModelProvider().fillVirtualTocList(arrayList);
    }

    public static final void fillVirtualTocTree(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        if (workBundle.getVirtualModelProvider().countVirtualToc(new CBQueryArgs()) > 0) {
            return;
        }
        if (isNoteReaderPlugin(workBundle)) {
            m40881e(workBundle);
        } else {
            m40879c(workBundle);
        }
    }

    @NotNull
    public static final FTSProvider getDocFtsProvider(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return (FTSProvider) f52096b.getValue(workBundle, f52095a[0]);
    }

    @NotNull
    public static final WorkFeature getWorkFeature(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return workBundle.getWorkFeatureManager().getWorkFeature(workBundle.getOpenDocArgs().getActiveScene());
    }

    @NotNull
    public static final BoxManager initBoxManagerBySettings(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        BoxManager m40877a = m40877a(workBundle);
        m40877a.setEnableFreeMovePaper(GlobalDocSettings.INSTANCE.isEnabledFreeMovePaper());
        m40877a.setGap(ResManager.INSTANCE.getDimensionPixelSize(C8045R.dimen.box_gap));
        workBundle.setBoxManager(m40877a);
        return m40877a;
    }

    public static final boolean isNoteReaderPlugin(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return TemplateReaderPlugin.INSTANCE.accept(workBundle.getOpenDocArgs().getPath());
    }

    @NotNull
    public static final BoxManager obtainBoxManager(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        BoxManager boxManager = workBundle.getBoxManager();
        Intrinsics.checkNotNull(boxManager);
        return boxManager;
    }

    public static final void postDocumentState(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        postEvent(workBundle, new DocumentStateEvent(workBundle.getDocumentState()));
    }

    public static final <T> void postEvent(@NotNull WorkBundle workBundle, @NotNull T event) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<R> map = Observable.just(event).observeOn(AndroidSchedulers.mainThread()).map(new C10372a(workBundle, event));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        RxjavaKt.subscribeWithDefault$default(map, null, null, null, 7, null);
    }

    public static final void postVirtualDocViewInfo(@NotNull WorkBundle workBundle, @NotNull String targetId) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        if (workBundle.isOpen()) {
            VirtualDocViewInfo collectVirtualDocViewInfo = collectVirtualDocViewInfo(workBundle);
            collectVirtualDocViewInfo.setTargetBoxId(targetId);
            postEvent(workBundle, new VirtualDocViewInfoEvent(collectVirtualDocViewInfo, false, 2, null));
        }
    }

    public static /* synthetic */ void postVirtualDocViewInfo$default(WorkBundle workBundle, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        postVirtualDocViewInfo(workBundle, str);
    }

    public static final Range<Float> scaleRange(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return getWorkFeature(workBundle).scaleRange(workBundle);
    }

    public static final void updateToVisibleBox(@NotNull WorkBundle workBundle, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        BoxManager boxManager = workBundle.getBoxManager();
        if (boxManager != null) {
            boxManager.updateToVisibleBox(boxInfo);
        }
    }

    public static final boolean updateVirtualDocModel(@NotNull WorkBundle workBundle, @NotNull VirtualDocModel model) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(model, "model");
        BoxManager boxManager = workBundle.getBoxManager();
        if (boxManager == null) {
            return false;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) boxManager.visibleBoxes());
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo == null) {
            return false;
        }
        model.setViewportId(boxInfo.getId());
        model.setActualScale(boxInfo.getActualScale());
        RectF visibleRect = boxInfo.getVisibleRect();
        model.setOffsetX(-visibleRect.left);
        model.setOffsetY(-visibleRect.top);
        model.setDocOptions(workBundle.getDocOptions());
        return true;
    }

    public static final void updateVirtualDocViewInfo(@NotNull WorkBundle workBundle, @NotNull VirtualDocViewInfo virtualDocViewInfo) {
        String str;
        VirtualPageConfig virtualPageConfig;
        VirtualPageConfig virtualPageConfig2;
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "virtualDocViewInfo");
        ArrayList arrayList = new ArrayList();
        RectF rectF = new RectF();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        BoxManager obtainBoxManager = obtainBoxManager(workBundle);
        NoteDocument noteDoc = workBundle.getNoteBundle().getNoteDoc();
        int i = 0;
        for (Object obj : visibleBoxList(workBundle)) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            BoxInfo boxInfo = (BoxInfo) obj;
            arrayList.add(boxInfo);
            rectF = RectFKt.unionOrCopy(rectF, boxInfo.getVisibleRect());
            VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(boxInfo.getId());
            PageViewInfo pageViewInfo = new PageViewInfo();
            pageViewInfo.setPageIndex(obtainBoxManager.indexOf(boxInfo.getId()));
            pageViewInfo.setColorTheme((virtualPage == null || (virtualPageConfig2 = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? 0 : virtualPageConfig2.getColorTheme());
            if (virtualPage == null || (virtualPageConfig = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null || (str = virtualPageConfig.getContentType()) == null) {
                str = "";
            }
            pageViewInfo.setContentType(str);
            linkedHashMap.put(boxInfo.getId(), pageViewInfo);
            PageInfo pageInfo = noteDoc.getNotePageInfo().getPageInfo(boxInfo.getId());
            if (pageInfo != null) {
                pageInfo.setColorTheme(pageViewInfo.getColorTheme());
            }
            i = i2;
        }
        rectF.intersect(viewportRect(workBundle));
        workBundle.setVisibleBoundingRect(rectF);
        virtualDocViewInfo.setDocId(workBundle.getOpenDocArgs().getDocumentId());
        virtualDocViewInfo.setViewport(obtainBoxManager.getViewport().copy());
        virtualDocViewInfo.setBoundingRect(RectFKt.copy(obtainBoxManager.getBoundingRect()));
        virtualDocViewInfo.setViewportLimitRect(RectFKt.copy(obtainBoxManager.getViewportLimitRect()));
        virtualDocViewInfo.setVisibleBoxInfoList(arrayList);
        virtualDocViewInfo.setVisibleBoundingRect(RectFKt.copy(rectF));
        virtualDocViewInfo.setCurrentBoxId(obtainBoxManager.getCurrentBoxId());
        virtualDocViewInfo.setCurrentMinScale(obtainBoxManager.getCurrentMinScale());
        virtualDocViewInfo.setPageViewInfoMap(linkedHashMap);
        virtualDocViewInfo.setPageCount(obtainBoxManager.pageCount());
        PageInfo pageInfo2 = workBundle.getVirtualPolicy().ensureGlobalNotePage().getPageInfo();
        virtualDocViewInfo.setActiveScene(noteDoc.getNoteModel().getActiveScene());
        virtualDocViewInfo.setHasLockedLayer(pageInfo2.hasLockedLayer());
        virtualDocViewInfo.setCurNoteLayerLocked(pageInfo2.isCurLayerLocked());
        virtualDocViewInfo.setCurNoteLayerVisible(pageInfo2.isCurLayerVisible());
    }

    @NotNull
    public static final RectF viewportRect(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        return workBundle.getOpenDocArgs().getViewSize().toRectF();
    }

    @NotNull
    public static final List<BoxInfo> visibleBoxList(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        BoxManager boxManager = workBundle.getBoxManager();
        return boxManager == null ? new ArrayList() : boxManager.visibleBoxes();
    }

    @NotNull
    public static final List<BoxInfo> collectIntersectsVisibleBoxList(@NotNull WorkBundle workBundle, @NotNull List<? extends Shape> shapeList, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        return collectIntersectsVisibleBoxList(workBundle, ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(shapeList), virtualBoxInfo);
    }

    @NotNull
    public static final List<BoxInfo> collectIntersectsVisibleBoxList(@NotNull WorkBundle workBundle, @NotNull RectF shapeBoundingRectWithWidth, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(workBundle, "<this>");
        Intrinsics.checkNotNullParameter(shapeBoundingRectWithWidth, "shapeBoundingRectWithWidth");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        RectF mapToPageDisplayRectF = BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(shapeBoundingRectWithWidth, virtualBoxInfo);
        BoxInfo noteInfo = virtualBoxInfo.getNoteInfo();
        Intrinsics.checkNotNull(noteInfo);
        float f = noteInfo.getBox().left;
        BoxInfo noteInfo2 = virtualBoxInfo.getNoteInfo();
        Intrinsics.checkNotNull(noteInfo2);
        mapToPageDisplayRectF.offset(f, noteInfo2.getBox().top);
        return collectIntersectsVisibleBoxList(workBundle, mapToPageDisplayRectF);
    }
}
