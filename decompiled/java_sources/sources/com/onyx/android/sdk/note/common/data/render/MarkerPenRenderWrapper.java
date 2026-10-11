package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.pen.NeoPen;
import com.onyx.android.sdk.pen.PenResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u00020\b2\u0016\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nH\u0014J\n\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;", "neoPen", "Lcom/onyx/android/sdk/pen/NeoPen;", "segment", "", "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V", "addPenResult", "", "pair", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "appendPredictPenResult", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class MarkerPenRenderWrapper extends NeoPenRenderWrapper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MarkerPenRenderWrapper(@NotNull NeoPen neoPen, boolean z) {
        super(neoPen, z);
        Intrinsics.checkNotNullParameter(neoPen, "neoPen");
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRenderWrapper, com.onyx.android.sdk.note.common.data.render.NeoPenRender
    public void addPenResult(@NotNull Pair<? extends PenResult, ? extends PenResult> pair) {
        Intrinsics.checkNotNullParameter(pair, "pair");
        if (!getSegment()) {
            clearPenResults();
        }
        super.addPenResult(pair);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRenderWrapper
    @Nullable
    public PenResult appendPredictPenResult() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) getPenResults());
        Pair pair = (Pair) lastOrNull;
        if (pair != null) {
            return (PenResult) pair.getFirst();
        }
        return null;
    }
}
