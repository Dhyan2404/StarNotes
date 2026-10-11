package com.onyx.android.sdk.note.common.shape.correct;

import com.onyx.android.sdk.note.common.shape.correct.ShapeCorrectionArgs;
import com.onyx.android.sdk.note.common.shape.correct.ShapeCorrector;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;", "", "correct", "", "args", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeCorrector {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.f43665a;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector$Companion;", "", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;", "b", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;", "getEmptyShapeCorrector", "()Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;", "EmptyShapeCorrector", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a */
        public static final /* synthetic */ Companion f43665a = new Companion();

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public static final ShapeCorrector EmptyShapeCorrector = new ShapeCorrector() { // from class: com.sunia.HTREnginev2.wlm
            @Override // com.onyx.android.sdk.note.common.shape.correct.ShapeCorrector
            public final void correct(ShapeCorrectionArgs shapeCorrectionArgs) {
                ShapeCorrector.Companion.m33806b(shapeCorrectionArgs);
            }
        };

        /* renamed from: b */
        public static final void m33806b(ShapeCorrectionArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @NotNull
        public final ShapeCorrector getEmptyShapeCorrector() {
            return EmptyShapeCorrector;
        }
    }

    void correct(@NotNull ShapeCorrectionArgs args);
}
