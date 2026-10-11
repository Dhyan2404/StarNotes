package com.onyx.android.sdk.universal.util;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.SelectionRegion;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J:\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bJ.\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bJ\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0002H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/util/FTSContentSearcher;", "", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", Constants.ELEMNAME_CONTENTS_STRING, "", "keyword", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "searchKeywordRect", "content", "Lcom/onyx/android/sdk/base/data/SelectionRegion;", "Landroid/graphics/RectF;", "allRectList", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFTSContentSearcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentSearcher.kt\ncom/onyx/android/sdk/universal/util/FTSContentSearcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1549#2:94\n1620#2,3:95\n766#2:98\n857#2,2:99\n1655#2,8:101\n1549#2:109\n1620#2,3:110\n1855#2:113\n1855#2,2:114\n1856#2:116\n766#2:117\n857#2,2:118\n1549#2:120\n1620#2,3:121\n*S KotlinDebug\n*F\n+ 1 FTSContentSearcher.kt\ncom/onyx/android/sdk/universal/util/FTSContentSearcher\n*L\n38#1:94\n38#1:95,3\n39#1:98\n39#1:99,2\n40#1:101,8\n53#1:109\n53#1:110,3\n65#1:113\n69#1:114,2\n65#1:116\n84#1:117\n84#1:118,2\n91#1:120\n91#1:121,3\n*E\n"})
/* loaded from: classes8.dex */
public final class FTSContentSearcher {

    @NotNull
    public static final FTSContentSearcher INSTANCE = new FTSContentSearcher();

    /* renamed from: a */
    public final List<RectF> m41602a(List<? extends RectF> allRectList) {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        for (Object obj : allRectList) {
            if (!((RectF) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        List group = CollectionKt.group(arrayList, new Function2<RectF, RectF, Boolean>() { // from class: com.onyx.android.sdk.universal.util.FTSContentSearcher$mergeNearRect$rectGroups$2
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Boolean invoke(@NotNull RectF prev, @NotNull RectF next) {
                Intrinsics.checkNotNullParameter(prev, "prev");
                Intrinsics.checkNotNullParameter(next, "next");
                Math.max(prev.height(), next.height());
                GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
                geometryUtils.distanceTo(prev, next);
                return Boolean.valueOf(geometryUtils.atSameLine(prev, next, 0.1f));
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(group, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = group.iterator();
        while (it2.hasNext()) {
            arrayList2.add(RectFKt.boundingRectF((List) it2.next()));
        }
        return arrayList2;
    }

    @NotNull
    public final List<NoteSearchBean> searchKeywordRect(@NotNull List<FTSContentModel> contents, @NotNull String keyword, @NotNull SyncNoteModel noteModel, @NotNull VirtualPage virtualPage, int pageIndex) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(contents, "contents");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        List<FTSContentModel> list = contents;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.searchKeywordRect((FTSContentModel) it2.next(), keyword, noteModel, virtualPage, pageIndex));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((NoteSearchBean) obj).getSelectionRegions().isEmpty()) {
                arrayList2.add(obj);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (hashSet.add(((NoteSearchBean) obj2).getCacheKey())) {
                arrayList3.add(obj2);
            }
        }
        return arrayList3;
    }

    @NotNull
    public final NoteSearchBean searchKeywordRect(@NotNull FTSContentModel content, @NotNull String keyword, @NotNull SyncNoteModel noteModel, @NotNull VirtualPage virtualPage, int pageIndex) {
        int collectionSizeOrDefault;
        List<SelectionRegion> flatten;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        NoteSearchBean noteSearchBean = new NoteSearchBean(1, noteModel);
        noteSearchBean.setPageId(content.getPageUniqueId());
        noteSearchBean.setPageIndex(pageIndex);
        List asList = CollectionKt.asList(content);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(asList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = asList.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.searchKeywordRect((FTSContentModel) it2.next(), keyword));
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        noteSearchBean.setSelectionRegions(flatten);
        NoteSearchBean.INSTANCE.updatePageInfo(noteSearchBean, virtualPage);
        return noteSearchBean;
    }

    @NotNull
    public final List<SelectionRegion> searchKeywordRect(@NotNull FTSContentModel content, @NotNull String keyword) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = StringKt.allIndexesOf(content.getContent(), keyword, true).iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            List<? extends RectF> safelySubList = CollectionKt.safelySubList(content.getCharRectList(), intValue, keyword.length() + intValue);
            RectF rect = content.getRect();
            for (RectF rectF : INSTANCE.m41602a(safelySubList)) {
                float matrixRotateAngel = MatrixKt.getMatrixRotateAngel(MatrixKt.getMatrixByValues(content.getMatrixValues()));
                Matrix matrix = new Matrix();
                matrix.postRotate(-matrixRotateAngel, rect.centerX(), rect.centerY());
                SelectionRegion selectionRegion = new SelectionRegion(null, null, content.getType(), 3, null);
                selectionRegion.setRect(rectF);
                selectionRegion.setMatrix(matrix);
                arrayList.add(selectionRegion);
            }
        }
        return arrayList;
    }
}
