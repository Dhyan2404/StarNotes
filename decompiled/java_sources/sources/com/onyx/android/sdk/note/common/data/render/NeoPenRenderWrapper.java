package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.onyx.android.sdk.pen.NeoPen;
import com.onyx.android.sdk.pen.PenResult;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0014J \u0010\f\u001a\u00020\u00062\u0016\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\nH\u0014R\u001a\u0010\u0012\u001a\u00020\r8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "render", "Lcom/onyx/android/sdk/pen/PenResult;", "appendPredictPenResult", "Lkotlin/Pair;", "pair", "addPenResult", "", "e", Constants.HASIDCALL_INDEX_SIG, "getSegment", Constants.BOOLEAN_VALUE_SIG, "segment", "Lcom/onyx/android/sdk/pen/NeoPen;", "neoPen", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class NeoPenRenderWrapper extends NeoPenRender {

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean segment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeoPenRenderWrapper(@NotNull NeoPen neoPen, boolean z) {
        super(neoPen);
        Intrinsics.checkNotNullParameter(neoPen, "neoPen");
        this.segment = z;
        if (z) {
            return;
        }
        setPointCountThreshold(Integer.MAX_VALUE);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    public void addPenResult(@NotNull Pair<? extends PenResult, ? extends PenResult> pair) {
        Object lastOrNull;
        PenResult first;
        Object lastOrNull2;
        Intrinsics.checkNotNullParameter(pair, "pair");
        if (!this.segment) {
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) getPenResults());
            Pair pair2 = (Pair) lastOrNull;
            if ((pair2 != null ? (PenResult) pair2.getFirst() : null) != null) {
                lastOrNull2 = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) getPenResults());
                Pair pair3 = (Pair) lastOrNull2;
                PenResult penResult = pair3 != null ? (PenResult) pair3.getFirst() : null;
                Intrinsics.checkNotNull(penResult);
                first = penResult.append(pair.getFirst());
            } else {
                first = pair.getFirst();
            }
            Pair<? extends PenResult, ? extends PenResult> pair4 = new Pair<>(first, pair.getSecond());
            clearPenResults();
            pair = pair4;
        }
        super.addPenResult(pair);
    }

    @Nullable
    public PenResult appendPredictPenResult() {
        Object lastOrNull;
        PenResult penResult;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) getPenResults());
        Pair pair = (Pair) lastOrNull;
        if (pair == null || (penResult = (PenResult) pair.getFirst()) == null) {
            return null;
        }
        PenResult penResult2 = (PenResult) pair.getSecond();
        return penResult2 != null ? penResult.append(penResult2) : penResult;
    }

    public final boolean getSegment() {
        return this.segment;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    public void render(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (this.segment) {
            super.render(canvas, paint);
        } else {
            renderResult(appendPredictPenResult(), canvas, paint);
        }
    }
}
