package com.onyx.android.sdk.base.extension;

import android.graphics.Rect;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a)\u0010\u0004\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\n\u001a1\u0010\u000b\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0002\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u0005¢\u0006\u0002\u0010\u0012\u001a=\u0010\u0013\u001a\u00020\u0014\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\r2\b\b\u0002\u0010\u0019\u001a\u00020\r¢\u0006\u0002\u0010\u001a\u001aE\u0010\u0013\u001a\u00020\u0014\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\r2\b\b\u0002\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0002\u0010\u001c\u001a!\u0010\u001d\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0002\u0010\u001e\u001a9\u0010\u001f\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0002\u0010 \u001a?\u0010!\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t¢\u0006\u0002\u0010#\u001a?\u0010$\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t¢\u0006\u0002\u0010#\u001a?\u0010%\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t¢\u0006\u0002\u0010#\u001a?\u0010&\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t¢\u0006\u0002\u0010#\u001a?\u0010'\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t¢\u0006\u0002\u0010#\u001a?\u0010(\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t¢\u0006\u0002\u0010#\u001a)\u0010)\u001a\u00020\u0014\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\r¢\u0006\u0002\u0010*¨\u0006+"}, m61528d2 = {"getActivitySize", "Lcom/onyx/android/sdk/base/data/Size;", "Landroid/view/View;", "getWindowOffset", "moveAboveKeyboard", "T", "Landroid/widget/PopupWindow;", "parent", "keyboardHeight", "", "(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/Number;)Landroid/widget/PopupWindow;", "saveWindowLocation", NotificationCompat.WearableExtender.f5060z, "", "x", "y", "(Landroid/widget/PopupWindow;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;", "setFullscreen", "(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;", "showActionPopup", "", "view", "visibleRect", "Landroid/graphics/Rect;", "dx", "dy", "(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;II)V", "windowProviderView", "(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/View;)V", "showFullScreen", "(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;", "showInParent", "(Landroid/widget/PopupWindow;Landroid/view/View;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;", "showLeftAbove", Constants.ELEMNAME_ANCHOR_STRING, "(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;", "showLeftAsideAndTopAlign", "showLeftBottom", "showLeftOrRightAsideAndTopAlign", "showRightAsideAndTopAlign", "showRightBottom", "updateLeftAbove", "(Landroid/widget/PopupWindow;Landroid/view/View;I)V", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PopupExtKt {
    @NotNull
    public static final Size getActivitySize(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return new Size(view.getRootView().getMeasuredWidth(), view.getRootView().getMeasuredHeight());
    }

    @NotNull
    public static final Size getWindowOffset(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(view);
        int[] locationInWindow = ViewKt.getLocationInWindow(view);
        return new Size(locationInWindow[0] - locationOnScreen[0], locationInWindow[1] - locationOnScreen[1]);
    }

    @NotNull
    public static final <T extends PopupWindow> T moveAboveKeyboard(@NotNull T t, @NotNull View parent, @NotNull Number keyboardHeight) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(keyboardHeight, "keyboardHeight");
        Object parent2 = t.getContentView().getParent();
        Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
        View view = (View) parent2;
        int[] locationOnScreen = ViewKt.getLocationOnScreen(view);
        Size windowOffset = getWindowOffset(parent);
        Size screenContentSize = ResManager.INSTANCE.getScreenContentSize();
        if (screenContentSize.getHeight() - ((locationOnScreen[1] + windowOffset.getHeight()) + view.getMeasuredHeight()) < keyboardHeight.intValue()) {
            t.update(((locationOnScreen[0] + windowOffset.getWidth()) + (view.getMeasuredWidth() / 2)) - (screenContentSize.getWidth() / 2), (screenContentSize.getHeight() - keyboardHeight.intValue()) - view.getMeasuredHeight(), -1, -1, true);
        }
        return t;
    }

    @NotNull
    public static final <T extends PopupWindow> T saveWindowLocation(@NotNull T t, int i, @NotNull Number x, @NotNull Number y) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        t.getContentView().setTag(C7106R.id.pop_window_gravity, Integer.valueOf(i));
        t.getContentView().setTag(C7106R.id.pop_window_x, x);
        t.getContentView().setTag(C7106R.id.pop_window_y, y);
        return t;
    }

    @NotNull
    public static final <T extends PopupWindow> T setFullscreen(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        t.getContentView().setSystemUiVisibility(4870);
        return t;
    }

    public static final <T extends PopupWindow> void showActionPopup(@NotNull T t, @NotNull View view, @NotNull Rect visibleRect, int i, int i2) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        showActionPopup(t, view, visibleRect, i, i2, view);
    }

    public static /* synthetic */ void showActionPopup$default(PopupWindow popupWindow, View view, Rect rect, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        showActionPopup(popupWindow, view, rect, i, i2);
    }

    @NotNull
    public static final <T extends PopupWindow> T showFullScreen(@NotNull T t, @NotNull View parent) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        t.setWidth(-1);
        t.setHeight(-1);
        showInParent(t, parent, 0, 0, 0);
        return t;
    }

    @NotNull
    public static final <T extends PopupWindow> T showInParent(@NotNull T t, @NotNull View parent, int i, @NotNull Number x, @NotNull Number y) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        t.showAtLocation(parent, i, x.intValue(), y.intValue());
        saveWindowLocation(t, i, x, y);
        return t;
    }

    @NotNull
    public static final <T extends PopupWindow> T showLeftAbove(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(anchor);
        Size windowOffset = getWindowOffset(parent);
        Size activitySize = getActivitySize(parent);
        showInParent(t, parent, 83, Integer.valueOf(locationOnScreen[0] + windowOffset.getWidth() + dx.intValue()), Integer.valueOf((activitySize.getHeight() - (locationOnScreen[1] + windowOffset.getHeight())) + dy.intValue()));
        return t;
    }

    public static /* synthetic */ PopupWindow showLeftAbove$default(PopupWindow popupWindow, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showLeftAbove(popupWindow, view, view2, number, number2);
    }

    @NotNull
    public static final <T extends PopupWindow> T showLeftAsideAndTopAlign(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(anchor);
        Size windowOffset = getWindowOffset(parent);
        showInParent(t, parent, 53, Integer.valueOf((ResManager.INSTANCE.getScreenRealSize().getWidth() - (locationOnScreen[0] + windowOffset.getWidth())) + dx.intValue()), Integer.valueOf(locationOnScreen[1] + windowOffset.getHeight() + dy.intValue()));
        return t;
    }

    public static /* synthetic */ PopupWindow showLeftAsideAndTopAlign$default(PopupWindow popupWindow, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showLeftAsideAndTopAlign(popupWindow, view, view2, number, number2);
    }

    @NotNull
    public static final <T extends PopupWindow> T showLeftBottom(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(anchor);
        Size windowOffset = getWindowOffset(parent);
        showInParent(t, parent, 51, Integer.valueOf(locationOnScreen[0] + windowOffset.getWidth() + dx.intValue()), Integer.valueOf(locationOnScreen[1] + windowOffset.getHeight() + dy.intValue()));
        return t;
    }

    public static /* synthetic */ PopupWindow showLeftBottom$default(PopupWindow popupWindow, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showLeftBottom(popupWindow, view, view2, number, number2);
    }

    @NotNull
    public static final <T extends PopupWindow> T showLeftOrRightAsideAndTopAlign(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        View rootView = parent.getRootView();
        Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(rootView);
        int[] locationOnScreen2 = ViewKt.getLocationOnScreen(anchor);
        int i = locationOnScreen2[0];
        int i2 = locationOnScreen[0];
        if (i - i2 > (i2 + parent.getMeasuredWidth()) - (locationOnScreen2[0] + anchor.getMeasuredWidth())) {
            showLeftAsideAndTopAlign(t, parent, anchor, dx, dy);
        } else {
            showRightAsideAndTopAlign(t, parent, anchor, dx, dy);
        }
        return t;
    }

    public static /* synthetic */ PopupWindow showLeftOrRightAsideAndTopAlign$default(PopupWindow popupWindow, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showLeftOrRightAsideAndTopAlign(popupWindow, view, view2, number, number2);
    }

    @NotNull
    public static final <T extends PopupWindow> T showRightAsideAndTopAlign(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(anchor);
        Size windowOffset = getWindowOffset(parent);
        showInParent(t, parent, 51, Integer.valueOf(locationOnScreen[0] + windowOffset.getWidth() + anchor.getMeasuredWidth() + dx.intValue()), Integer.valueOf(locationOnScreen[1] + windowOffset.getHeight() + dy.intValue()));
        return t;
    }

    public static /* synthetic */ PopupWindow showRightAsideAndTopAlign$default(PopupWindow popupWindow, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showRightAsideAndTopAlign(popupWindow, view, view2, number, number2);
    }

    @NotNull
    public static final <T extends PopupWindow> T showRightBottom(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(anchor);
        Size windowOffset = getWindowOffset(parent);
        showInParent(t, parent, 51, Integer.valueOf(locationOnScreen[0] + anchor.getMeasuredWidth() + windowOffset.getWidth() + dx.intValue()), Integer.valueOf(locationOnScreen[1] + anchor.getMeasuredHeight() + windowOffset.getHeight() + dy.intValue()));
        return t;
    }

    public static /* synthetic */ PopupWindow showRightBottom$default(PopupWindow popupWindow, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showRightBottom(popupWindow, view, view2, number, number2);
    }

    public static final <T extends PopupWindow> void updateLeftAbove(@NotNull T t, @NotNull View parent, int i) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (t.getContentView().getTag(C7106R.id.pop_window_gravity) == null) {
            return;
        }
        int[] locationOnScreen = ViewKt.getLocationOnScreen(parent);
        Size windowOffset = getWindowOffset(parent);
        Size activitySize = getActivitySize(parent);
        Object tag = t.getContentView().getTag(C7106R.id.pop_window_gravity);
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) tag).intValue();
        Object tag2 = t.getContentView().getTag(C7106R.id.pop_window_x);
        Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.Int");
        int intValue2 = ((Integer) tag2).intValue();
        int height = (activitySize.getHeight() - (locationOnScreen[1] + windowOffset.getHeight())) + i;
        saveWindowLocation(t, intValue, Integer.valueOf(intValue2), Integer.valueOf(height));
        t.update(intValue2, height, t.getWidth(), t.getHeight());
    }

    public static final <T extends PopupWindow> void showActionPopup(@NotNull T t, @NotNull View view, @NotNull Rect visibleRect, int i, int i2, @NotNull View windowProviderView) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        Intrinsics.checkNotNullParameter(windowProviderView, "windowProviderView");
        t.getContentView().measure(0, 0);
        int measuredHeight = t.getContentView().getMeasuredHeight();
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        DockPoint dockPoint = DockPoint.TOP_RIGHT;
        WindowLocation windowLocation = popupLocator.getWindowLocation((PopupLocator) t, view, dockPoint, dockPoint, i, i2, windowProviderView);
        if (windowLocation.getY() + measuredHeight > visibleRect.bottom) {
            DockPoint dockPoint2 = DockPoint.BOTTOM_RIGHT;
            windowLocation = popupLocator.getWindowLocation((PopupLocator) t, view, dockPoint2, dockPoint2, i, i2, windowProviderView);
        }
        popupLocator.show(t, windowLocation, view);
    }
}
