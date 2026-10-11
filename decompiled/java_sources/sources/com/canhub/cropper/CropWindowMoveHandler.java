package com.canhub.cropper;

import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 <2\u00020\u0001:\u0002<=B'\u0012\u0006\u0010/\u001a\u00020-\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b:\u0010;JN\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004J \u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J@\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J@\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002JH\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J@\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\fH\u0002JH\u0010 \u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\fH\u0002J@\u0010$\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00020\fH\u0002JH\u0010&\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00020\fH\u0002J\u0018\u0010'\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0018\u0010)\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0018\u0010*\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J \u0010+\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J \u0010,\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0002R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010.R\u0014\u00101\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u00100R\u0014\u00102\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u00100R\u0014\u00103\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00100R\u0014\u00104\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00100R\u0014\u00107\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00106¨\u0006>"}, m61528d2 = {"Lcom/canhub/cropper/CropWindowMoveHandler;", "", "Landroid/graphics/RectF;", "rect", "", "x", "y", "bounds", "", "viewWidth", "viewHeight", "snapMargin", "", "fixedAspectRatio", "aspectRatio", "", BaiduYunConstant.OPERATION_MOVE, "touchX", "touchY", C4921e.f26537n, "snapRadius", "l", GoogleApiAvailabilityLight.f29016b, "m", "edges", "margin", C4921e.f26528e, "left", "topMoves", "bottomMoves", "c", gon.f71288n0, C6997f.f39671c, OneDriverConstants.TOP, "leftMoves", "rightMoves", C6999h.f39688c, "bottom", "a", "d", "j", C6998g.f39679a, "b", "e", "i", "Lcom/canhub/cropper/CropWindowMoveHandler$Type;", "Lcom/canhub/cropper/CropWindowMoveHandler$Type;", "type", "F", "mMinCropWidth", "mMinCropHeight", "mMaxCropWidth", "mMaxCropHeight", "Landroid/graphics/PointF;", "Landroid/graphics/PointF;", "mTouchOffset", "Lcom/canhub/cropper/CropWindowHandler;", "cropWindowHandler", Constants.CONSTRUCTOR_NAME, "(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V", "Companion", "Type", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CropWindowMoveHandler {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Type type;

    /* renamed from: b, reason: from kotlin metadata */
    public final float mMinCropWidth;

    /* renamed from: c, reason: from kotlin metadata */
    public final float mMinCropHeight;

    /* renamed from: d, reason: from kotlin metadata */
    public final float mMaxCropWidth;

    /* renamed from: e, reason: from kotlin metadata */
    public final float mMaxCropHeight;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final PointF mTouchOffset;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/canhub/cropper/CropWindowMoveHandler$Companion;", "", "()V", "calculateAspectRatio", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "calculateAspectRatio$cropper_release", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float calculateAspectRatio$cropper_release(float left, float top, float right, float bottom) {
            return (right - left) / (bottom - top);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/canhub/cropper/CropWindowMoveHandler$Type;", "", "(Ljava/lang/String;I)V", "TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT", "LEFT", "TOP", "RIGHT", "BOTTOM", "CENTER", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public enum Type {
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        CENTER
    }

    @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            try {
                iArr[Type.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Type.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Type.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Type.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Type.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Type.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Type.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Type.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Type.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CropWindowMoveHandler(@NotNull Type type, @NotNull CropWindowHandler cropWindowHandler, float f, float f2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(cropWindowHandler, "cropWindowHandler");
        this.type = type;
        this.mMinCropWidth = cropWindowHandler.getMinCropWidth();
        this.mMinCropHeight = cropWindowHandler.getMinCropHeight();
        this.mMaxCropWidth = cropWindowHandler.getMaxCropWidth();
        this.mMaxCropHeight = cropWindowHandler.getMaxCropHeight();
        this.mTouchOffset = new PointF(0.0f, 0.0f);
        m9288k(cropWindowHandler.getRect(), f, f2);
    }

    /* renamed from: a */
    public final void m9278a(RectF rect, float bottom, RectF bounds, int viewHeight, float snapMargin, float aspectRatio, boolean leftMoves, boolean rightMoves) {
        float f = viewHeight;
        if (bottom > f) {
            bottom = ((bottom - f) / 1.05f) + f;
            this.mTouchOffset.y -= (bottom - f) / 1.1f;
        }
        float f2 = bounds.bottom;
        if (bottom > f2) {
            this.mTouchOffset.y -= (bottom - f2) / 2.0f;
        }
        if (f2 - bottom < snapMargin) {
            bottom = f2;
        }
        float f3 = rect.top;
        float f4 = bottom - f3;
        float f5 = this.mMinCropHeight;
        if (f4 < f5) {
            bottom = f3 + f5;
        }
        float f6 = bottom - f3;
        float f7 = this.mMaxCropHeight;
        if (f6 > f7) {
            bottom = f3 + f7;
        }
        if (f2 - bottom < snapMargin) {
            bottom = f2;
        }
        if (aspectRatio > 0.0f) {
            float f8 = (bottom - f3) * aspectRatio;
            float f9 = this.mMinCropWidth;
            if (f8 < f9) {
                bottom = Math.min(f2, f3 + (f9 / aspectRatio));
                f8 = (bottom - rect.top) * aspectRatio;
            }
            float f10 = this.mMaxCropWidth;
            if (f8 > f10) {
                bottom = Math.min(bounds.bottom, rect.top + (f10 / aspectRatio));
                f8 = (bottom - rect.top) * aspectRatio;
            }
            if (leftMoves && rightMoves) {
                bottom = Math.min(bottom, Math.min(bounds.bottom, rect.top + (bounds.width() / aspectRatio)));
            } else {
                if (leftMoves) {
                    float f11 = rect.right;
                    float f12 = f11 - f8;
                    float f13 = bounds.left;
                    if (f12 < f13) {
                        float min = Math.min(bounds.bottom, rect.top + ((f11 - f13) / aspectRatio));
                        f8 = (min - rect.top) * aspectRatio;
                        bottom = min;
                    }
                }
                if (rightMoves) {
                    float f14 = rect.left;
                    float f15 = f8 + f14;
                    float f16 = bounds.right;
                    if (f15 > f16) {
                        bottom = Math.min(bottom, Math.min(bounds.bottom, rect.top + ((f16 - f14) / aspectRatio)));
                    }
                }
            }
        }
        rect.bottom = bottom;
    }

    /* renamed from: b */
    public final void m9279b(RectF rect, float aspectRatio) {
        rect.bottom = rect.top + (rect.width() / aspectRatio);
    }

    /* renamed from: c */
    public final void m9280c(RectF rect, float left, RectF bounds, float snapMargin, float aspectRatio, boolean topMoves, boolean bottomMoves) {
        if (left < 0.0f) {
            left /= 1.05f;
            this.mTouchOffset.x -= left / 1.1f;
        }
        float f = bounds.left;
        if (left < f) {
            this.mTouchOffset.x -= (left - f) / 2.0f;
        }
        if (left - f < snapMargin) {
            left = f;
        }
        float f2 = rect.right;
        float f3 = f2 - left;
        float f4 = this.mMinCropWidth;
        if (f3 < f4) {
            left = f2 - f4;
        }
        float f5 = f2 - left;
        float f6 = this.mMaxCropWidth;
        if (f5 > f6) {
            left = f2 - f6;
        }
        if (left - f < snapMargin) {
            left = f;
        }
        if (aspectRatio > 0.0f) {
            float f7 = (f2 - left) / aspectRatio;
            float f8 = this.mMinCropHeight;
            if (f7 < f8) {
                left = Math.max(f, f2 - (f8 * aspectRatio));
                f7 = (rect.right - left) / aspectRatio;
            }
            float f9 = this.mMaxCropHeight;
            if (f7 > f9) {
                left = Math.max(bounds.left, rect.right - (f9 * aspectRatio));
                f7 = (rect.right - left) / aspectRatio;
            }
            if (topMoves && bottomMoves) {
                left = Math.max(left, Math.max(bounds.left, rect.right - (bounds.height() * aspectRatio)));
            } else {
                if (topMoves) {
                    float f10 = rect.bottom;
                    float f11 = f10 - f7;
                    float f12 = bounds.top;
                    if (f11 < f12) {
                        float max = Math.max(bounds.left, rect.right - ((f10 - f12) * aspectRatio));
                        f7 = (rect.right - max) / aspectRatio;
                        left = max;
                    }
                }
                if (bottomMoves) {
                    float f13 = rect.top;
                    float f14 = f7 + f13;
                    float f15 = bounds.bottom;
                    if (f14 > f15) {
                        left = Math.max(left, Math.max(bounds.left, rect.right - ((f15 - f13) * aspectRatio)));
                    }
                }
            }
        }
        rect.left = left;
    }

    /* renamed from: d */
    public final void m9281d(RectF rect, float aspectRatio) {
        rect.left = rect.right - (rect.height() * aspectRatio);
    }

    /* renamed from: e */
    public final void m9282e(RectF rect, RectF bounds, float aspectRatio) {
        rect.inset((rect.width() - (rect.height() * aspectRatio)) / 2, 0.0f);
        float f = rect.left;
        float f2 = bounds.left;
        if (f < f2) {
            rect.offset(f2 - f, 0.0f);
        }
        float f3 = rect.right;
        float f4 = bounds.right;
        if (f3 > f4) {
            rect.offset(f4 - f3, 0.0f);
        }
    }

    /* renamed from: f */
    public final void m9283f(RectF rect, float right, RectF bounds, int viewWidth, float snapMargin, float aspectRatio, boolean topMoves, boolean bottomMoves) {
        float f = viewWidth;
        if (right > f) {
            right = ((right - f) / 1.05f) + f;
            this.mTouchOffset.x -= (right - f) / 1.1f;
        }
        float f2 = bounds.right;
        if (right > f2) {
            this.mTouchOffset.x -= (right - f2) / 2.0f;
        }
        if (f2 - right < snapMargin) {
            right = f2;
        }
        float f3 = rect.left;
        float f4 = right - f3;
        float f5 = this.mMinCropWidth;
        if (f4 < f5) {
            right = f3 + f5;
        }
        float f6 = right - f3;
        float f7 = this.mMaxCropWidth;
        if (f6 > f7) {
            right = f3 + f7;
        }
        if (f2 - right < snapMargin) {
            right = f2;
        }
        if (aspectRatio > 0.0f) {
            float f8 = (right - f3) / aspectRatio;
            float f9 = this.mMinCropHeight;
            if (f8 < f9) {
                right = Math.min(f2, f3 + (f9 * aspectRatio));
                f8 = (right - rect.left) / aspectRatio;
            }
            float f10 = this.mMaxCropHeight;
            if (f8 > f10) {
                right = Math.min(bounds.right, rect.left + (f10 * aspectRatio));
                f8 = (right - rect.left) / aspectRatio;
            }
            if (topMoves && bottomMoves) {
                right = Math.min(right, Math.min(bounds.right, rect.left + (bounds.height() * aspectRatio)));
            } else {
                if (topMoves) {
                    float f11 = rect.bottom;
                    float f12 = f11 - f8;
                    float f13 = bounds.top;
                    if (f12 < f13) {
                        float min = Math.min(bounds.right, rect.left + ((f11 - f13) * aspectRatio));
                        f8 = (min - rect.left) / aspectRatio;
                        right = min;
                    }
                }
                if (bottomMoves) {
                    float f14 = rect.top;
                    float f15 = f8 + f14;
                    float f16 = bounds.bottom;
                    if (f15 > f16) {
                        right = Math.min(right, Math.min(bounds.right, rect.left + ((f16 - f14) * aspectRatio)));
                    }
                }
            }
        }
        rect.right = right;
    }

    /* renamed from: g */
    public final void m9284g(RectF rect, float aspectRatio) {
        rect.right = rect.left + (rect.height() * aspectRatio);
    }

    /* renamed from: h */
    public final void m9285h(RectF rect, float top, RectF bounds, float snapMargin, float aspectRatio, boolean leftMoves, boolean rightMoves) {
        if (top < 0.0f) {
            top /= 1.05f;
            this.mTouchOffset.y -= top / 1.1f;
        }
        float f = bounds.top;
        if (top < f) {
            this.mTouchOffset.y -= (top - f) / 2.0f;
        }
        if (top - f < snapMargin) {
            top = f;
        }
        float f2 = rect.bottom;
        float f3 = f2 - top;
        float f4 = this.mMinCropHeight;
        if (f3 < f4) {
            top = f2 - f4;
        }
        float f5 = f2 - top;
        float f6 = this.mMaxCropHeight;
        if (f5 > f6) {
            top = f2 - f6;
        }
        if (top - f < snapMargin) {
            top = f;
        }
        if (aspectRatio > 0.0f) {
            float f7 = (f2 - top) * aspectRatio;
            float f8 = this.mMinCropWidth;
            if (f7 < f8) {
                top = Math.max(f, f2 - (f8 / aspectRatio));
                f7 = (rect.bottom - top) * aspectRatio;
            }
            float f9 = this.mMaxCropWidth;
            if (f7 > f9) {
                top = Math.max(bounds.top, rect.bottom - (f9 / aspectRatio));
                f7 = (rect.bottom - top) * aspectRatio;
            }
            if (leftMoves && rightMoves) {
                top = Math.max(top, Math.max(bounds.top, rect.bottom - (bounds.width() / aspectRatio)));
            } else {
                if (leftMoves) {
                    float f10 = rect.right;
                    float f11 = f10 - f7;
                    float f12 = bounds.left;
                    if (f11 < f12) {
                        float max = Math.max(bounds.top, rect.bottom - ((f10 - f12) / aspectRatio));
                        f7 = (rect.bottom - max) * aspectRatio;
                        top = max;
                    }
                }
                if (rightMoves) {
                    float f13 = rect.left;
                    float f14 = f7 + f13;
                    float f15 = bounds.right;
                    if (f14 > f15) {
                        top = Math.max(top, Math.max(bounds.top, rect.bottom - ((f15 - f13) / aspectRatio)));
                    }
                }
            }
        }
        rect.top = top;
    }

    /* renamed from: i */
    public final void m9286i(RectF rect, RectF bounds, float aspectRatio) {
        rect.inset(0.0f, (rect.height() - (rect.width() / aspectRatio)) / 2);
        float f = rect.top;
        float f2 = bounds.top;
        if (f < f2) {
            rect.offset(0.0f, f2 - f);
        }
        float f3 = rect.bottom;
        float f4 = bounds.bottom;
        if (f3 > f4) {
            rect.offset(0.0f, f4 - f3);
        }
    }

    /* renamed from: j */
    public final void m9287j(RectF rect, float aspectRatio) {
        rect.top = rect.bottom - (rect.width() / aspectRatio);
    }

    /* renamed from: k */
    public final void m9288k(RectF rect, float touchX, float touchY) {
        float f;
        float f2;
        float f3;
        float f4 = 0.0f;
        switch (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()]) {
            case 1:
                f4 = rect.left - touchX;
                f = rect.top;
                f3 = f - touchY;
                break;
            case 2:
                f4 = rect.right - touchX;
                f = rect.top;
                f3 = f - touchY;
                break;
            case 3:
                f4 = rect.left - touchX;
                f = rect.bottom;
                f3 = f - touchY;
                break;
            case 4:
                f4 = rect.right - touchX;
                f = rect.bottom;
                f3 = f - touchY;
                break;
            case 5:
                f2 = rect.left;
                f4 = f2 - touchX;
                f3 = 0.0f;
                break;
            case 6:
                f = rect.top;
                f3 = f - touchY;
                break;
            case 7:
                f2 = rect.right;
                f4 = f2 - touchX;
                f3 = 0.0f;
                break;
            case 8:
                f = rect.bottom;
                f3 = f - touchY;
                break;
            case 9:
                f4 = rect.centerX() - touchX;
                f = rect.centerY();
                f3 = f - touchY;
                break;
            default:
                f3 = 0.0f;
                break;
        }
        PointF pointF = this.mTouchOffset;
        pointF.x = f4;
        pointF.y = f3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        if ((r0 + r9) <= r10.bottom) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
    
        if ((r1 + r8) <= r10.right) goto L11;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9289l(android.graphics.RectF r7, float r8, float r9, android.graphics.RectF r10, int r11, int r12, float r13) {
        /*
            r6 = this;
            float r0 = r7.centerX()
            float r8 = r8 - r0
            float r0 = r7.centerY()
            float r9 = r9 - r0
            float r0 = r7.left
            float r1 = r0 + r8
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 2
            r4 = 1065772646(0x3f866666, float:1.05)
            if (r1 < 0) goto L2e
            float r1 = r7.right
            float r5 = r1 + r8
            float r11 = (float) r11
            int r11 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r11 > 0) goto L2e
            float r0 = r0 + r8
            float r11 = r10.left
            int r11 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r11 < 0) goto L2e
            float r1 = r1 + r8
            float r11 = r10.right
            int r11 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r11 <= 0) goto L39
        L2e:
            float r8 = r8 / r4
            android.graphics.PointF r11 = r6.mTouchOffset
            float r0 = r11.x
            float r1 = (float) r3
            float r1 = r8 / r1
            float r0 = r0 - r1
            r11.x = r0
        L39:
            float r11 = r7.top
            float r0 = r11 + r9
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L58
            float r0 = r7.bottom
            float r1 = r0 + r9
            float r12 = (float) r12
            int r12 = (r1 > r12 ? 1 : (r1 == r12 ? 0 : -1))
            if (r12 > 0) goto L58
            float r11 = r11 + r9
            float r12 = r10.top
            int r11 = (r11 > r12 ? 1 : (r11 == r12 ? 0 : -1))
            if (r11 < 0) goto L58
            float r0 = r0 + r9
            float r11 = r10.bottom
            int r11 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r11 <= 0) goto L63
        L58:
            float r9 = r9 / r4
            android.graphics.PointF r11 = r6.mTouchOffset
            float r12 = r11.y
            float r0 = (float) r3
            float r0 = r9 / r0
            float r12 = r12 - r0
            r11.y = r12
        L63:
            r7.offset(r8, r9)
            r6.m9292o(r7, r10, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.CropWindowMoveHandler.m9289l(android.graphics.RectF, float, float, android.graphics.RectF, int, int, float):void");
    }

    /* renamed from: m */
    public final void m9290m(RectF rect, float x, float y, RectF bounds, int viewWidth, int viewHeight, float snapMargin, float aspectRatio) {
        switch (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()]) {
            case 1:
                if (INSTANCE.calculateAspectRatio$cropper_release(x, y, rect.right, rect.bottom) < aspectRatio) {
                    m9285h(rect, y, bounds, snapMargin, aspectRatio, true, false);
                    m9281d(rect, aspectRatio);
                    return;
                } else {
                    m9280c(rect, x, bounds, snapMargin, aspectRatio, true, false);
                    m9287j(rect, aspectRatio);
                    return;
                }
            case 2:
                if (INSTANCE.calculateAspectRatio$cropper_release(rect.left, y, x, rect.bottom) < aspectRatio) {
                    m9285h(rect, y, bounds, snapMargin, aspectRatio, false, true);
                    m9284g(rect, aspectRatio);
                    return;
                } else {
                    m9283f(rect, x, bounds, viewWidth, snapMargin, aspectRatio, true, false);
                    m9287j(rect, aspectRatio);
                    return;
                }
            case 3:
                if (INSTANCE.calculateAspectRatio$cropper_release(x, rect.top, rect.right, y) < aspectRatio) {
                    m9278a(rect, y, bounds, viewHeight, snapMargin, aspectRatio, true, false);
                    m9281d(rect, aspectRatio);
                    return;
                } else {
                    m9280c(rect, x, bounds, snapMargin, aspectRatio, false, true);
                    m9279b(rect, aspectRatio);
                    return;
                }
            case 4:
                if (INSTANCE.calculateAspectRatio$cropper_release(rect.left, rect.top, x, y) < aspectRatio) {
                    m9278a(rect, y, bounds, viewHeight, snapMargin, aspectRatio, false, true);
                    m9284g(rect, aspectRatio);
                    return;
                } else {
                    m9283f(rect, x, bounds, viewWidth, snapMargin, aspectRatio, false, true);
                    m9279b(rect, aspectRatio);
                    return;
                }
            case 5:
                m9280c(rect, x, bounds, snapMargin, aspectRatio, true, true);
                m9286i(rect, bounds, aspectRatio);
                return;
            case 6:
                m9285h(rect, y, bounds, snapMargin, aspectRatio, true, true);
                m9282e(rect, bounds, aspectRatio);
                return;
            case 7:
                m9283f(rect, x, bounds, viewWidth, snapMargin, aspectRatio, true, true);
                m9286i(rect, bounds, aspectRatio);
                return;
            case 8:
                m9278a(rect, y, bounds, viewHeight, snapMargin, aspectRatio, true, true);
                m9282e(rect, bounds, aspectRatio);
                return;
            default:
                return;
        }
    }

    public final void move(@NotNull RectF rect, float x, float y, @NotNull RectF bounds, int viewWidth, int viewHeight, float snapMargin, boolean fixedAspectRatio, float aspectRatio) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        PointF pointF = this.mTouchOffset;
        float f = pointF.x + x;
        float f2 = y + pointF.y;
        if (this.type == Type.CENTER) {
            m9289l(rect, f, f2, bounds, viewWidth, viewHeight, snapMargin);
        } else if (fixedAspectRatio) {
            m9290m(rect, f, f2, bounds, viewWidth, viewHeight, snapMargin, aspectRatio);
        } else {
            m9291n(rect, f, f2, bounds, viewWidth, viewHeight, snapMargin);
        }
    }

    /* renamed from: n */
    public final void m9291n(RectF rect, float x, float y, RectF bounds, int viewWidth, int viewHeight, float snapMargin) {
        switch (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()]) {
            case 1:
                m9285h(rect, y, bounds, snapMargin, 0.0f, false, false);
                m9280c(rect, x, bounds, snapMargin, 0.0f, false, false);
                return;
            case 2:
                m9285h(rect, y, bounds, snapMargin, 0.0f, false, false);
                m9283f(rect, x, bounds, viewWidth, snapMargin, 0.0f, false, false);
                return;
            case 3:
                m9278a(rect, y, bounds, viewHeight, snapMargin, 0.0f, false, false);
                m9280c(rect, x, bounds, snapMargin, 0.0f, false, false);
                return;
            case 4:
                m9278a(rect, y, bounds, viewHeight, snapMargin, 0.0f, false, false);
                m9283f(rect, x, bounds, viewWidth, snapMargin, 0.0f, false, false);
                return;
            case 5:
                m9280c(rect, x, bounds, snapMargin, 0.0f, false, false);
                return;
            case 6:
                m9285h(rect, y, bounds, snapMargin, 0.0f, false, false);
                return;
            case 7:
                m9283f(rect, x, bounds, viewWidth, snapMargin, 0.0f, false, false);
                return;
            case 8:
                m9278a(rect, y, bounds, viewHeight, snapMargin, 0.0f, false, false);
                return;
            default:
                return;
        }
    }

    /* renamed from: o */
    public final void m9292o(RectF edges, RectF bounds, float margin) {
        float f = edges.left;
        float f2 = bounds.left;
        if (f < f2 + margin) {
            edges.offset(f2 - f, 0.0f);
        }
        float f3 = edges.top;
        float f4 = bounds.top;
        if (f3 < f4 + margin) {
            edges.offset(0.0f, f4 - f3);
        }
        float f5 = edges.right;
        float f6 = bounds.right;
        if (f5 > f6 - margin) {
            edges.offset(f6 - f5, 0.0f);
        }
        float f7 = edges.bottom;
        float f8 = bounds.bottom;
        if (f7 > f8 - margin) {
            edges.offset(0.0f, f8 - f7);
        }
    }
}
