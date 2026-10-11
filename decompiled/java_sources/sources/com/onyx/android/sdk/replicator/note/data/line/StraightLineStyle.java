package com.onyx.android.sdk.replicator.note.data.line;

import android.graphics.Paint;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;", "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "()V", "applyStyle", "", "paint", "Landroid/graphics/Paint;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "scale", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StraightLineStyle extends LineStyle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final StraightLineStyle INSTANCE = new StraightLineStyle();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;", "", "()V", "INSTANCE", "Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;", "getINSTANCE", "()Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final StraightLineStyle getINSTANCE() {
            return StraightLineStyle.INSTANCE;
        }

        private Companion() {
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.data.line.LineStyle
    public void applyStyle(@NotNull Paint paint, float strokeWidth, float scale) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setPathEffect(null);
    }
}
