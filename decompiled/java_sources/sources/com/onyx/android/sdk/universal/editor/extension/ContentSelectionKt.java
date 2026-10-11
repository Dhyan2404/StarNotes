package com.onyx.android.sdk.universal.editor.extension;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.SaveTextExcerptArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"toSaveTextExcerptArgs", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nContentSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentSelection.kt\ncom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1549#2:53\n1620#2,3:54\n*S KotlinDebug\n*F\n+ 1 ContentSelection.kt\ncom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt\n*L\n37#1:53\n37#1:54,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ContentSelectionKt {
    @NotNull
    public static final SaveTextExcerptArgs toSaveTextExcerptArgs(@NotNull ReaderSelection readerSelection, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(readerSelection, "<this>");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        SaveTextExcerptArgs saveTextExcerptArgs = new SaveTextExcerptArgs();
        saveTextExcerptArgs.setDisplayRectFList(RectFKt.copyRectFList(readerSelection.rectangles()));
        saveTextExcerptArgs.setQuote(StringKt.replaceLinebreakFromParagraph(readerSelection.text()));
        saveTextExcerptArgs.setStartPosition(readerSelection.selectionRange().getStartPosition().getStrPosition());
        saveTextExcerptArgs.setEndPosition(readerSelection.selectionRange().getEndPosition().getStrPosition());
        saveTextExcerptArgs.setWritingMode(ReaderWritingModeKt.toAnnotationWritingMode(readerSelection));
        saveTextExcerptArgs.setExcerptAttr(MMKVNote.INSTANCE.getExcerptShapeAttrOption().forceGet().copy());
        saveTextExcerptArgs.setVirtualPageBoxInfo(boxInfo.copy());
        return saveTextExcerptArgs;
    }

    @NotNull
    public static final SaveTextExcerptArgs toSaveTextExcerptArgs(@NotNull AnnotationInfoBean annotationInfoBean, @NotNull BoxInfo boxInfo) {
        int collectionSizeOrDefault;
        List<RectF> mutableList;
        Intrinsics.checkNotNullParameter(annotationInfoBean, "<this>");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Matrix noteRenderMatrix = BoxInfoUtils.INSTANCE.noteRenderMatrix(boxInfo);
        List<RectF> rectFList = annotationInfoBean.getRectFList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(rectFList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = rectFList.iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            noteRenderMatrix.mapRect(copy);
            arrayList.add(copy);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        SaveTextExcerptArgs saveTextExcerptArgs = new SaveTextExcerptArgs();
        saveTextExcerptArgs.setDisplayRectFList(mutableList);
        saveTextExcerptArgs.setQuote(annotationInfoBean.getQuote());
        saveTextExcerptArgs.setStartPosition(annotationInfoBean.getStartPosition());
        saveTextExcerptArgs.setEndPosition(annotationInfoBean.getEndPosition());
        saveTextExcerptArgs.setWritingMode(annotationInfoBean.getWritingMode());
        saveTextExcerptArgs.setExcerptAttr(MMKVNote.INSTANCE.getExcerptShapeAttrOption().forceGet().copy());
        saveTextExcerptArgs.setVirtualPageBoxInfo(boxInfo.copy());
        return saveTextExcerptArgs;
    }
}
