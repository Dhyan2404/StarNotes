package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.note.common.shape.Shape;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m61528d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 NoteDocShapeLocation.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation\n*L\n1#1,328:1\n317#2:329\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocShapeLocation$log$$inlined$sortBy$1<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int compareValues;
        compareValues = ComparisonsKt__ComparisonsKt.compareValues(((Shape) t).getCreatedAt(), ((Shape) t2).getCreatedAt());
        return compareValues;
    }
}
