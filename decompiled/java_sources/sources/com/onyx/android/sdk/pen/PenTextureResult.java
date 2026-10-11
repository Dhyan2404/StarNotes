package com.onyx.android.sdk.pen;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.pennative.PenInk;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u001d\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenTextureResult;", "Lcom/onyx/android/sdk/pen/PenResult;", "add", RequestParameters.SUBRESOURCE_APPEND, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "draw", "", "getPointsCount", "", "Lcom/onyx/android/sdk/pen/PenTextureInk;", "b", "Ljava/util/List;", "textures", "Landroid/graphics/RectF;", "rect", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroid/graphics/RectF;)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenTextureResult extends PenResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<PenTextureInk> textures;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;", "", "()V", "buildFromInkArray", "Lcom/onyx/android/sdk/pen/PenTextureResult;", "ink", "Lcom/onyx/android/sdk/pennative/PenInk;", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final PenTextureResult buildFromInkArray(@Nullable PenInk ink) {
            IntRange until;
            IntProgression step;
            RectF rectF;
            if (ink == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            until = RangesKt___RangesKt.until(0, ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().length);
            step = RangesKt___RangesKt.step(until, 2);
            int first = step.getFirst();
            int last = step.getLast();
            int step2 = step.getStep();
            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                rectF = null;
                while (true) {
                    int i = first / 2;
                    if (i < ink.getBitmaps().length) {
                        Bitmap bitmap = ink.getBitmaps()[i];
                        float f = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first];
                        float f2 = ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()[first + 1];
                        arrayList.add(new PenTextureInk(f, f2, bitmap));
                        if (rectF == null) {
                            rectF = new RectF(f, f2, bitmap.getWidth() + f, bitmap.getHeight() + f2);
                        }
                        rectF.union(f, f2);
                        rectF.union(f + bitmap.getWidth(), f2 + bitmap.getHeight());
                    }
                    if (first == last) {
                        break;
                    }
                    first += step2;
                }
            } else {
                rectF = null;
            }
            if (rectF == null) {
                return null;
            }
            return new PenTextureResult(arrayList, rectF);
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenTextureResult(@NotNull List<PenTextureInk> textures, @NotNull RectF rect) {
        super(rect);
        Intrinsics.checkNotNullParameter(textures, "textures");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.textures = textures;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    @Nullable
    public PenResult append(@Nullable PenResult add) {
        return null;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        for (PenTextureInk penTextureInk : this.textures) {
            canvas.drawBitmap(penTextureInk.getBitmap(), penTextureInk.getX(), penTextureInk.getY(), paint);
        }
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    public int getPointsCount() {
        return this.textures.size();
    }
}
