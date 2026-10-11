package com.onyx.android.sdk.base.extension;

import android.graphics.Rect;
import android.view.View;
import android.widget.PopupWindow;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b$\u0010%JU\u0010\u000e\u001a\u00020\r\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJW\u0010\u000e\u001a\u00020\r\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u0012J-\u0010\u0014\u001a\u00028\u0000\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0006\u0010\u0013\u001a\u00020\r2\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J7\u0010\u0018\u001a\u00028\u0000\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u00002\u0006\u0010\u0013\u001a\u00020\r2\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001a\u001a\u0004\u0018\u00010\r\"\b\b\u0000\u0010\u0003*\u00020\u0002*\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0006H\u0002J(\u0010!\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\tH\u0002J(\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\tH\u0002¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/PopupLocator;", "", "Landroid/widget/PopupWindow;", "T", "Landroid/view/View;", "anchorView", "Lcom/onyx/android/sdk/base/data/DockPoint;", "dstDockPoint", "srcDockPoint", "", "dx", "dy", "windowProviderView", "Lcom/onyx/android/sdk/base/data/WindowLocation;", "getWindowLocation", "(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;", "Landroid/graphics/Rect;", "dstRectInWindow", "(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;", "windowLocation", "show", "(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;", "width", "height", "update", "(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;II)Landroid/widget/PopupWindow;", "getCachedWindowLocation", "(Landroid/widget/PopupWindow;)Lcom/onyx/android/sdk/base/data/WindowLocation;", "a", "b", "dstRect", "parentRect", "gravityX", "c", "gravityY", "d", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PopupLocator {

    @NotNull
    public static final PopupLocator INSTANCE = new PopupLocator();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockPoint.values().length];
            try {
                iArr[DockPoint.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockPoint.CENTER_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockPoint.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockPoint.TOP_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DockPoint.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DockPoint.BOTTOM_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DockPoint.TOP_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DockPoint.CENTER_RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DockPoint.BOTTOM_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ PopupWindow show$default(PopupLocator popupLocator, PopupWindow popupWindow, WindowLocation windowLocation, View view, int i, Object obj) {
        if ((i & 2) != 0) {
            view = Activity.INSTANCE.getTopContentView();
        }
        return popupLocator.show(popupWindow, windowLocation, view);
    }

    public static /* synthetic */ PopupWindow update$default(PopupLocator popupLocator, PopupWindow popupWindow, WindowLocation windowLocation, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = popupWindow.getWidth();
        }
        if ((i3 & 4) != 0) {
            i2 = popupWindow.getHeight();
        }
        return popupLocator.update(popupWindow, windowLocation, i, i2);
    }

    /* renamed from: a */
    public final int m31923a(DockPoint srcDockPoint) {
        switch (WhenMappings.$EnumSwitchMapping$0[srcDockPoint.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 5;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: b */
    public final int m31924b(DockPoint srcDockPoint) {
        switch (WhenMappings.$EnumSwitchMapping$0[srcDockPoint.ordinal()]) {
            case 1:
            case 4:
            case 7:
                return 48;
            case 2:
            case 5:
            case 8:
                return 16;
            case 3:
            case 6:
            case 9:
                return 80;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: c */
    public final int m31925c(Rect dstRect, Rect parentRect, DockPoint dstDockPoint, int gravityX) {
        int i;
        int centerX;
        int i2;
        int i3;
        if (gravityX == 1) {
            switch (WhenMappings.$EnumSwitchMapping$0[dstDockPoint.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    i = dstRect.left;
                    centerX = parentRect.centerX();
                    break;
                case 4:
                case 5:
                case 6:
                    i = dstRect.centerX();
                    centerX = parentRect.centerX();
                    break;
                case 7:
                case 8:
                case 9:
                    i = dstRect.right;
                    centerX = parentRect.centerX();
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return i - centerX;
        }
        if (gravityX == 3) {
            switch (WhenMappings.$EnumSwitchMapping$0[dstDockPoint.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    return dstRect.left;
                case 4:
                case 5:
                case 6:
                    return dstRect.centerX();
                case 7:
                case 8:
                case 9:
                    return dstRect.right;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        if (gravityX != 5) {
            return 0;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[dstDockPoint.ordinal()]) {
            case 1:
            case 2:
            case 3:
                i2 = parentRect.right;
                i3 = dstRect.left;
                break;
            case 4:
            case 5:
            case 6:
                i2 = parentRect.right;
                i3 = dstRect.centerX();
                break;
            case 7:
            case 8:
            case 9:
                i2 = parentRect.right;
                i3 = dstRect.right;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return i2 - i3;
    }

    /* renamed from: d */
    public final int m31926d(Rect dstRect, Rect parentRect, DockPoint dstDockPoint, int gravityY) {
        int i;
        int centerY;
        int i2;
        int i3;
        if (gravityY == 16) {
            switch (WhenMappings.$EnumSwitchMapping$0[dstDockPoint.ordinal()]) {
                case 1:
                case 4:
                case 7:
                    i = dstRect.top;
                    centerY = parentRect.centerY();
                    break;
                case 2:
                case 5:
                case 8:
                    i = dstRect.centerY();
                    centerY = parentRect.centerY();
                    break;
                case 3:
                case 6:
                case 9:
                    i = dstRect.bottom;
                    centerY = parentRect.centerY();
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return i - centerY;
        }
        if (gravityY == 48) {
            switch (WhenMappings.$EnumSwitchMapping$0[dstDockPoint.ordinal()]) {
                case 1:
                case 4:
                case 7:
                    return dstRect.top;
                case 2:
                case 5:
                case 8:
                    return dstRect.centerY();
                case 3:
                case 6:
                case 9:
                    return dstRect.bottom;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        if (gravityY != 80) {
            return 0;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[dstDockPoint.ordinal()]) {
            case 1:
            case 4:
            case 7:
                i2 = parentRect.bottom;
                i3 = dstRect.top;
                break;
            case 2:
            case 5:
            case 8:
                i2 = parentRect.bottom;
                i3 = dstRect.centerY();
                break;
            case 3:
            case 6:
            case 9:
                i2 = parentRect.bottom;
                i3 = dstRect.bottom;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return i2 - i3;
    }

    @Nullable
    public final <T extends PopupWindow> WindowLocation getCachedWindowLocation(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Object tag = t.getContentView().getRootView().getTag(C7106R.id.pop_window_location);
        if (tag instanceof WindowLocation) {
            return (WindowLocation) tag;
        }
        return null;
    }

    @NotNull
    public final <T extends PopupWindow> WindowLocation getWindowLocation(@NotNull T t, @NotNull View anchorView, @NotNull DockPoint dstDockPoint, @NotNull DockPoint srcDockPoint, int i, int i2, @NotNull View windowProviderView) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        Intrinsics.checkNotNullParameter(dstDockPoint, "dstDockPoint");
        Intrinsics.checkNotNullParameter(srcDockPoint, "srcDockPoint");
        Intrinsics.checkNotNullParameter(windowProviderView, "windowProviderView");
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        Rect rectInWindow = viewLocator.rectInWindow(anchorView);
        WindowLocation windowOffset = viewLocator.getWindowOffset(anchorView, windowProviderView);
        rectInWindow.offset(windowOffset.getDx(), windowOffset.getDy());
        return getWindowLocation((PopupLocator) t, rectInWindow, dstDockPoint, srcDockPoint, i, i2, windowProviderView);
    }

    @NotNull
    public final <T extends PopupWindow> T show(@NotNull T t, @NotNull WindowLocation windowLocation, @NotNull View windowProviderView) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(windowLocation, "windowLocation");
        Intrinsics.checkNotNullParameter(windowProviderView, "windowProviderView");
        t.showAtLocation(windowProviderView, windowLocation.getGravity(), windowLocation.getX() + windowLocation.getDx(), windowLocation.getY() + windowLocation.getDy());
        t.getContentView().getRootView().setTag(C7106R.id.pop_window_location, windowLocation);
        return t;
    }

    @NotNull
    public final <T extends PopupWindow> T update(@NotNull T t, @NotNull WindowLocation windowLocation, int i, int i2) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(windowLocation, "windowLocation");
        t.update(windowLocation.getX() + windowLocation.getDx(), windowLocation.getY() + windowLocation.getDy(), i, i2);
        t.getContentView().getRootView().setTag(C7106R.id.pop_window_location, windowLocation);
        return t;
    }

    @NotNull
    public final <T extends PopupWindow> WindowLocation getWindowLocation(@NotNull T t, @NotNull Rect dstRectInWindow, @NotNull DockPoint dstDockPoint, @NotNull DockPoint srcDockPoint, int i, int i2, @NotNull View windowProviderView) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(dstRectInWindow, "dstRectInWindow");
        Intrinsics.checkNotNullParameter(dstDockPoint, "dstDockPoint");
        Intrinsics.checkNotNullParameter(srcDockPoint, "srcDockPoint");
        Intrinsics.checkNotNullParameter(windowProviderView, "windowProviderView");
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        View windowDecorView = viewLocator.getWindowDecorView(windowProviderView);
        Intrinsics.checkNotNullExpressionValue(windowDecorView, "getWindowDecorView(...)");
        Rect rectInWindow = viewLocator.rectInWindow(windowDecorView);
        int m31923a = m31923a(srcDockPoint);
        int m31924b = m31924b(srcDockPoint);
        return new WindowLocation(m31925c(dstRectInWindow, rectInWindow, dstDockPoint, m31923a), m31926d(dstRectInWindow, rectInWindow, dstDockPoint, m31924b), i, i2, m31923a | m31924b, dstDockPoint, srcDockPoint);
    }
}
