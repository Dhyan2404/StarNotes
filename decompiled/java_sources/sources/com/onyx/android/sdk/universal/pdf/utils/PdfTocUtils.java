package com.onyx.android.sdk.universal.pdf.utils;

import androidx.core.provider.DocumentsContractCompat;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;", "", "()V", "addPageTocEntry", "", "topTocEntry", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "notePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "pageIndex", "", "convertFromModel", DocumentsContractCompat.f5557a, "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPdfTocUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTocUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,26:1\n1549#2:27\n1620#2,3:28\n*S KotlinDebug\n*F\n+ 1 PdfTocUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils\n*L\n23#1:27\n23#1:28,3\n*E\n"})
/* loaded from: classes8.dex */
public final class PdfTocUtils {

    @NotNull
    public static final PdfTocUtils INSTANCE = new PdfTocUtils();

    public final void addPageTocEntry(@NotNull PdfTocEntry topTocEntry, @NotNull NotePage notePage, int pageIndex) {
        Intrinsics.checkNotNullParameter(topTocEntry, "topTocEntry");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        String title = notePage.getPageInfo().getTitle();
        if (StringKt.isNotBlank(title)) {
            PdfTocEntry.INSTANCE.addChild(topTocEntry, 0L, title, pageIndex);
        }
    }

    @NotNull
    public final PdfTocEntry convertFromModel(@NotNull Tree<VirtualTocModel> tree) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tree, "tree");
        VirtualTocModel item = tree.getItem();
        Intrinsics.checkNotNull(item);
        VirtualTocModel virtualTocModel = item;
        PdfTocEntry pdfTocEntry = new PdfTocEntry(0L, null, 0, null, 15, null);
        pdfTocEntry.setPage(virtualTocModel.getPageIndex());
        pdfTocEntry.setTitle(virtualTocModel.getTitle());
        List<PdfTocEntry> children = pdfTocEntry.getChildren();
        List<Tree<VirtualTocModel>> children2 = tree.getChildren();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(children2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = children2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.convertFromModel((Tree) it2.next()));
        }
        children.addAll(arrayList);
        return pdfTocEntry;
    }
}
