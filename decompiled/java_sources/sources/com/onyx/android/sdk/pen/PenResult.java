package com.onyx.android.sdk.pen;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000H&J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\n\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenResult;", "", "add", RequestParameters.SUBRESOURCE_APPEND, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "draw", "clearCache", "", "getPointsCount", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "rect", Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/RectF;)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class PenResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RectF rect;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u0004*\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0018\u00010\u0005J\u001c\u0010\b\u001a\u00020\u0004*\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ2\u0010\b\u001a\u00020\u0004*\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenResult$Companion;", "", "()V", "clearCache", "", "", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "render", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPenResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenResult.kt\ncom/onyx/android/sdk/pen/PenResult$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1855#2,2:33\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 PenResult.kt\ncom/onyx/android/sdk/pen/PenResult$Companion\n*L\n16#1:33,2\n21#1:35,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void clearCache(@Nullable List<? extends Pair<? extends PenResult, ? extends PenResult>> list) {
            if (list != null) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    PenResult penResult = (PenResult) ((Pair) it2.next()).getFirst();
                    if (penResult != null) {
                        penResult.clearCache();
                    }
                }
            }
        }

        public final void render(@Nullable List<? extends Pair<? extends PenResult, ? extends PenResult>> list, @NotNull Canvas canvas, @NotNull Paint paint) {
            Object lastOrNull;
            PenResult penResult;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(paint, "paint");
            if (list == null) {
                return;
            }
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                PenResult.INSTANCE.render((PenResult) ((Pair) it2.next()).getFirst(), canvas, paint);
            }
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) list);
            Pair pair = (Pair) lastOrNull;
            if (pair == null || (penResult = (PenResult) pair.getSecond()) == null) {
                return;
            }
            render(penResult, canvas, paint);
        }

        public Companion() {
        }

        public final void render(@Nullable PenResult penResult, @NotNull Canvas canvas, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(paint, "paint");
            if (penResult == null) {
                return;
            }
            penResult.draw(canvas, paint);
        }
    }

    public PenResult(@NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.rect = rect;
    }

    @Nullable
    public abstract PenResult append(@Nullable PenResult add);

    public void clearCache() {
    }

    public abstract void draw(@NotNull Canvas canvas, @NotNull Paint paint);

    public int getPointsCount() {
        return 0;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }
}
