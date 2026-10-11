package com.onyx.android.sdk.universal.editor.action.export;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import com.onyx.android.sdk.neopdf.export.PdfExport;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.toc.LoadDocTableOfContentAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.pdf.utils.NoteEmbedUtils;
import com.onyx.android.sdk.universal.pdf.utils.PdfTocUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J*\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\f\u001a\u00020\b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0002R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "m", "tocList", "l", "tocEntry", "", "", "", "exportIndexMap", GoogleApiAvailabilityLight.f29016b, "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", C6997f.f39671c, "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "pdfExport", C6998g.f39679a, "Ljava/util/List;", "exportPageIdList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportTableOfContentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1179#2,2:78\n1253#2,4:80\n1360#2:84\n1446#2,5:85\n1360#2:90\n1446#2,5:91\n*S KotlinDebug\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction\n*L\n51#1:78,2\n51#1:80,4\n52#1:84\n52#1:85,5\n59#1:90\n59#1:91,5\n*E\n"})
/* loaded from: classes8.dex */
public final class ExportTableOfContentAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final PdfExport pdfExport;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> exportPageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportTableOfContentAction$a */
    /* loaded from: classes8.dex */
    public static final class C8982a<T, R> implements Function {
        public C8982a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PdfTocEntry>> apply(@NotNull ExportTableOfContentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportTableOfContentAction exportTableOfContentAction = ExportTableOfContentAction.this;
            return exportTableOfContentAction.m38145m(exportTableOfContentAction.editorBundle);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportTableOfContentAction$b */
    /* loaded from: classes8.dex */
    public static final class C8983b<T, R> implements Function {
        public C8983b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PdfTocEntry> apply(@NotNull List<PdfTocEntry> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportTableOfContentAction.this.m38144l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportTableOfContentAction$c */
    /* loaded from: classes8.dex */
    public static final class C8984c<T, R> implements Function {
        public C8984c() {
        }

        /* renamed from: a */
        public final void m38149a(@NotNull List<PdfTocEntry> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportTableOfContentAction.this.pdfExport.setTocEntry(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38149a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportTableOfContentAction$d */
    /* loaded from: classes8.dex */
    public static final class C8985d<T, R> implements Function {
        public C8985d() {
        }

        /* renamed from: a */
        public final void m38150a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteEmbedUtils.INSTANCE.saveFile(ExportTableOfContentAction.this.pdfExport);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38150a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportTableOfContentAction$e */
    /* loaded from: classes8.dex */
    public static final class C8986e<T, R> implements Function {

        /* renamed from: e */
        public static final C8986e<T, R> f48823e = new C8986e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    @SourceDebugExtension({"SMAP\nExportTableOfContentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$getTocList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1855#2,2:78\n*S KotlinDebug\n*F\n+ 1 ExportTableOfContentAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportTableOfContentAction$getTocList$1\n*L\n40#1:78,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportTableOfContentAction$f */
    /* loaded from: classes8.dex */
    public static final class C8987f<T, R> implements Function {

        /* renamed from: e */
        public static final C8987f<T, R> f48824e = new C8987f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PdfTocEntry> apply(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it3 = it2.getChildren().iterator();
            while (it3.hasNext()) {
                arrayList.add(PdfTocUtils.INSTANCE.convertFromModel((Tree) it3.next()));
            }
            return arrayList;
        }
    }

    public ExportTableOfContentAction(@NotNull EditorBundle editorBundle, @NotNull PdfExport pdfExport, @NotNull List<String> exportPageIdList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        Intrinsics.checkNotNullParameter(exportPageIdList, "exportPageIdList");
        this.editorBundle = editorBundle;
        this.pdfExport = pdfExport;
        this.exportPageIdList = exportPageIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).flatMap(new C8982a()).observeOn(EditorBundleKt.readerScheduler(this.editorBundle)).map(new C8983b()).map(new C8984c()).map(new C8985d()).map(C8986e.f48823e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<PdfTocEntry> m38144l(List<PdfTocEntry> tocList) {
        Iterable<IndexedValue> withIndex;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        if (EditorBundleKt.pageCount(this.editorBundle) == this.exportPageIdList.size()) {
            return tocList;
        }
        withIndex = CollectionsKt___CollectionsKt.withIndex(this.exportPageIdList);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(withIndex, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (IndexedValue indexedValue : withIndex) {
            Pair m61535to = TuplesKt.m61535to(indexedValue.getValue(), Integer.valueOf(indexedValue.getIndex()));
            linkedHashMap.put(m61535to.getFirst(), m61535to.getSecond());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = tocList.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, m38146n((PdfTocEntry) it2.next(), linkedHashMap));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final Observable<List<PdfTocEntry>> m38145m(EditorBundle editorBundle) {
        Observable map = new LoadDocTableOfContentAction(editorBundle).build().map(C8987f.f48824e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final List<PdfTocEntry> m38146n(PdfTocEntry tocEntry, Map<String, Integer> exportIndexMap) {
        List<PdfTocEntry> emptyList;
        List<PdfTocEntry> mutableList;
        List<PdfTocEntry> listOf;
        List<PdfTocEntry> children = tocEntry.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = children.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, m38146n((PdfTocEntry) it2.next(), exportIndexMap));
        }
        VirtualPage virtualPage = this.editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(tocEntry.getPage());
        Intrinsics.checkNotNull(virtualPage);
        if (!exportIndexMap.containsKey(virtualPage.getBox().getId())) {
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Integer num = exportIndexMap.get(virtualPage.getBox().getId());
        Intrinsics.checkNotNull(num);
        tocEntry.setPage(num.intValue());
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        tocEntry.setChildren(mutableList);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(tocEntry);
        return listOf;
    }
}
