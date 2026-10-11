package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.pen.PenPrecision;
import com.onyx.android.sdk.pen.PenResult;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B/\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u001e\u0010\u000f\u001a\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0018\u00010\b¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R/\u0010\u000f\u001a\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "", "Lcom/onyx/android/sdk/pen/PenPrecision;", "a", "Lcom/onyx/android/sdk/pen/PenPrecision;", "getPrecision", "()Lcom/onyx/android/sdk/pen/PenPrecision;", "precision", "", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "b", "Ljava/util/List;", "getResults", "()Ljava/util/List;", "results", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pen/PenPrecision;Ljava/util/List;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NotePenShapeResults {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PenPrecision precision;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final List<Pair<PenResult, PenResult>> results;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0006\u001a\u00020\u0005*\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\f\u0010\b\u001a\u00020\u0007*\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u0003*\u0004\u0018\u00010\u0002H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;", "", "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "Lcom/onyx/android/sdk/pen/PenPrecision;", "precision", "", "isValid", "", "clearCache", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final PenPrecision m33648a(NotePenShapeResults notePenShapeResults) {
            PenPrecision precision;
            return (notePenShapeResults == null || (precision = notePenShapeResults.getPrecision()) == null) ? PenPrecision.INSTANCE.minPenPrecision() : precision;
        }

        public final void clearCache(@Nullable NotePenShapeResults notePenShapeResults) {
            PenResult.INSTANCE.clearCache(notePenShapeResults != null ? notePenShapeResults.getResults() : null);
        }

        public final boolean isValid(@Nullable NotePenShapeResults notePenShapeResults, @NotNull PenPrecision precision) {
            Intrinsics.checkNotNullParameter(precision, "precision");
            if (m33648a(notePenShapeResults).isValid(precision)) {
                if (CollectionKt.isNonBlank(notePenShapeResults != null ? notePenShapeResults.getResults() : null)) {
                    return true;
                }
            }
            return false;
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NotePenShapeResults(@NotNull PenPrecision precision, @Nullable List<? extends Pair<? extends PenResult, ? extends PenResult>> list) {
        Intrinsics.checkNotNullParameter(precision, "precision");
        this.precision = precision;
        this.results = list;
    }

    @NotNull
    public final PenPrecision getPrecision() {
        return this.precision;
    }

    @Nullable
    public final List<Pair<PenResult, PenResult>> getResults() {
        return this.results;
    }
}
