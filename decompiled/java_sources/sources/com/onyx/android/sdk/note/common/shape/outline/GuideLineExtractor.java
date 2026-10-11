package com.onyx.android.sdk.note.common.shape.outline;

import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "", "extract", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface GuideLineExtractor {
    @NotNull
    List<Guideline> extract(@NotNull UniversalShape shape);
}
