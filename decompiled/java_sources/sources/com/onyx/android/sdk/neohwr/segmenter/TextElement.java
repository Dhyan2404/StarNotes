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

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011J!\u0010\u0016\u001a\u00020\u00172\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00192\u0006\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ&\u0010\r\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;", "", "()V", "angle", "", "getAngle", "()F", "setAngle", "(F)V", "region", "Landroid/graphics/RectF;", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "shapes", "", "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;", "getShapes", "()Ljava/util/List;", "setShapes", "(Ljava/util/List;)V", "addShape", "", "shape", "", "idx", "", "([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;I)V", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextElement {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private float angle;

    @Nullable
    private RectF region;

    @NotNull
    private List<InputShape> shapes = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;", "", "()V", "createElement", "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final TextElement createElement() {
            return new TextElement();
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final TextElement createElement() {
        return INSTANCE.createElement();
    }

    public final void addShape(@NotNull InputShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shapes.add(shape);
    }

    public final float getAngle() {
        return this.angle;
    }

    @Nullable
    public final RectF getRegion() {
        return this.region;
    }

    @NotNull
    public final List<InputShape> getShapes() {
        return this.shapes;
    }

    public final void setAngle(float f) {
        this.angle = f;
    }

    public final void setRegion(@Nullable RectF rectF) {
        this.region = rectF;
    }

    public final void setShapes(@NotNull List<InputShape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapes = list;
    }

    public final void addShape(@NotNull InputShape[] shapes, int idx) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        addShape(shapes[idx]);
    }

    public final void setRegion(float left, float top, float right, float bottom) {
        this.region = new RectF(left, top, right, bottom);
    }
}
