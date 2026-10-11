package com.onyx.android.sdk.base.extension;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.view.Surface;
import android.view.SurfaceView;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a&\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u001a$\u0010\f\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0016\u0010\u0011\u001a\u00020\u0001*\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\r\u001aH\u0010\u0017\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u0019¢\u0006\u0002\b\u001a\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0003 \u0001¨\u0006\u001b"}, m61528d2 = {"clean", "", "Landroid/view/SurfaceView;", "color", "", "drawPathWithRect", "path", "Landroid/graphics/Path;", "paint", "Landroid/graphics/Paint;", "rect", "Landroid/graphics/Rect;", DevicePushAction.LOCK_DEVICE, "Landroid/graphics/Canvas;", "dirty", "useHardware", "", "setHighFrameRate", "Landroid/view/Surface;", "frameRate", "", "unlockCanvasAndPost", IStyleSheet.CLASS_CANVAS, "use", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SurfaceViewKt {
    public static final void clean(@NotNull SurfaceView surfaceView, final int i) {
        Intrinsics.checkNotNullParameter(surfaceView, "<this>");
        use$default(surfaceView, null, false, new Function1<Canvas, Unit>() { // from class: com.onyx.android.sdk.base.extension.SurfaceViewKt$clean$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas) {
                invoke2(canvas);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Canvas use) {
                Intrinsics.checkNotNullParameter(use, "$this$use");
                use.drawColor(i);
            }
        }, 3, null);
    }

    public static /* synthetic */ void clean$default(SurfaceView surfaceView, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        clean(surfaceView, i);
    }

    public static final void drawPathWithRect(@NotNull SurfaceView surfaceView, @NotNull final Path path, @NotNull final Paint paint, @Nullable Rect rect) {
        Intrinsics.checkNotNullParameter(surfaceView, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(paint, "paint");
        use$default(surfaceView, rect, false, new Function1<Canvas, Unit>() { // from class: com.onyx.android.sdk.base.extension.SurfaceViewKt$drawPathWithRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas) {
                invoke2(canvas);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Canvas use) {
                Intrinsics.checkNotNullParameter(use, "$this$use");
                use.drawPath(path, paint);
            }
        }, 2, null);
    }

    public static /* synthetic */ void drawPathWithRect$default(SurfaceView surfaceView, Path path, Paint paint, Rect rect, int i, Object obj) {
        if ((i & 4) != 0) {
            rect = null;
        }
        drawPathWithRect(surfaceView, path, paint, rect);
    }

    @Nullable
    public static final Canvas lock(@Nullable SurfaceView surfaceView, @Nullable Rect rect, boolean z) {
        if (surfaceView == null) {
            return null;
        }
        return (BuildKt.isApiLevelAbove(26) && z) ? surfaceView.getHolder().lockHardwareCanvas() : surfaceView.getHolder().lockCanvas(rect);
    }

    public static /* synthetic */ Canvas lock$default(SurfaceView surfaceView, Rect rect, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return lock(surfaceView, rect, z);
    }

    public static final void setHighFrameRate(@Nullable Surface surface, float f) {
        if (surface != null && Build.VERSION.SDK_INT >= 30) {
            surface.setFrameRate(f, 1);
        }
    }

    public static /* synthetic */ void setHighFrameRate$default(Surface surface, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 120.0f;
        }
        setHighFrameRate(surface, f);
    }

    public static final void unlockCanvasAndPost(@Nullable SurfaceView surfaceView, @Nullable Canvas canvas) {
        if (surfaceView == null || canvas == null) {
            return;
        }
        surfaceView.getHolder().unlockCanvasAndPost(canvas);
    }

    public static final void use(@Nullable SurfaceView surfaceView, @Nullable Rect rect, boolean z, @NotNull Function1<? super Canvas, Unit> block) {
        Canvas canvas;
        Intrinsics.checkNotNullParameter(block, "block");
        if (surfaceView == null) {
            return;
        }
        try {
            canvas = lock(surfaceView, rect, z);
            if (canvas != null) {
                try {
                    block.invoke(canvas);
                } catch (Throwable th) {
                    th = th;
                    try {
                        throw th;
                    } finally {
                        unlockCanvasAndPost(surfaceView, canvas);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            canvas = null;
        }
    }

    public static /* synthetic */ void use$default(SurfaceView surfaceView, Rect rect, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        use(surfaceView, rect, z, function1);
    }
}
