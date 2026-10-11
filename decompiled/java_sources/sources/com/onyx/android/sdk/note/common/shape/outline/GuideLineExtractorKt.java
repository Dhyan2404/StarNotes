package com.onyx.android.sdk.note.common.shape.outline;

import com.onyx.android.sdk.geometry.data.Guideline;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002\u001a \u0010\u0004\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"allocId", "", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "configStandardAlignment", "supportHorizontalAlignment", "", "supportVerticalAlignment", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n1855#2,2:30\n*S KotlinDebug\n*F\n+ 1 GuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorKt\n*L\n13#1:28,2\n23#1:30,2\n*E\n"})
/* loaded from: classes8.dex */
public final class GuideLineExtractorKt {
    public static final void allocId(@NotNull List<Guideline> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int i = 1;
        for (Guideline guideline : list) {
            guideline.setId(guideline.getShapeId() + '/' + i + ' ');
            i++;
        }
    }

    public static final void configStandardAlignment(@NotNull List<Guideline> list, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        for (Guideline guideline : list) {
            guideline.setSupportHorizontalAlignment(z);
            guideline.setSupportVerticalAlignment(z2);
        }
    }
}
