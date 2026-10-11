package com.onyx.android.sdk.neohwr.segmenter;

import android.graphics.RectF;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000bJ&\u0010\u0014\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;", "", "()V", "angle", "", "getAngle", "()F", "setAngle", "(F)V", "lines", "", "Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;", "getLines", "()Ljava/util/List;", "setLines", "(Ljava/util/List;)V", "region", "Landroid/graphics/RectF;", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "addLine", "", "line", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextBlock {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private float angle;

    @NotNull
    private List<TextLine> lines = new ArrayList();

    @Nullable
    private RectF region;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock$Companion;", "", "()V", "createBlock", "Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final TextBlock createBlock() {
            return new TextBlock();
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final TextBlock createBlock() {
        return INSTANCE.createBlock();
    }

    public final void addLine(@NotNull TextLine line) {
        Intrinsics.checkNotNullParameter(line, "line");
        this.lines.add(line);
    }

    public final float getAngle() {
        return this.angle;
    }

    @NotNull
    public final List<TextLine> getLines() {
        return this.lines;
    }

    @Nullable
    public final RectF getRegion() {
        return this.region;
    }

    public final void setAngle(float f) {
        this.angle = f;
    }

    public final void setLines(@NotNull List<TextLine> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.lines = list;
    }

    public final void setRegion(@Nullable RectF rectF) {
        this.region = rectF;
    }

    public final void setRegion(float left, float top, float right, float bottom) {
        this.region = new RectF(left, top, right, bottom);
    }
}
