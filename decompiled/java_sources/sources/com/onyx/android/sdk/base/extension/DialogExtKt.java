package com.onyx.android.sdk.base.extension;

import android.app.Dialog;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\u001a\u0019\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u0002¢\u0006\u0002\u0010\u0004\u001a)\u0010\u0005\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\n\u001a!\u0010\u000b\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\f\u001aE\u0010\r\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\t¢\u0006\u0002\u0010\u0014\u001aO\u0010\u0015\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018\u001aK\u0010\u0019\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018\u001aI\u0010\u001a\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u00072\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u001c¨\u0006\u001d"}, m61528d2 = {"getSavedLocation", "Lcom/onyx/android/sdk/base/data/WindowLocation;", "T", "Landroid/app/Dialog;", "(Landroid/app/Dialog;)Lcom/onyx/android/sdk/base/data/WindowLocation;", "moveAboveKeyboard", "parent", "Landroid/view/View;", "keyboardHeight", "", "(Landroid/app/Dialog;Landroid/view/View;Ljava/lang/Number;)Landroid/app/Dialog;", "restoreDialogLocation", "(Landroid/app/Dialog;Landroid/view/View;)Landroid/app/Dialog;", "saveDialogLocation", NotificationCompat.WearableExtender.f5060z, "", "x", "y", "dx", "dy", "(Landroid/app/Dialog;ILjava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/app/Dialog;", "setDialogLocation", "saveLocation", "", "(Landroid/app/Dialog;ILjava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Z)Landroid/app/Dialog;", "showAtLocation", "showCenterBottom", Constants.ELEMNAME_ANCHOR_STRING, "(Landroid/app/Dialog;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;Z)Landroid/app/Dialog;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DialogExtKt {
    @NotNull
    public static final <T extends Dialog> WindowLocation getSavedLocation(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Window window = t.getWindow();
        Intrinsics.checkNotNull(window);
        Object tag = window.getDecorView().getTag(C7106R.id.pop_window_location);
        WindowLocation windowLocation = tag instanceof WindowLocation ? (WindowLocation) tag : null;
        return windowLocation == null ? new WindowLocation(0, 0, 0, 0, 0, null, null, 127, null) : windowLocation;
    }

    @NotNull
    public static final <T extends Dialog> T moveAboveKeyboard(@NotNull T t, @NotNull View parent, @NotNull Number keyboardHeight) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(keyboardHeight, "keyboardHeight");
        Window window = t.getWindow();
        Intrinsics.checkNotNull(window);
        View decorView = window.getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(decorView);
        Size windowOffset = PopupExtKt.getWindowOffset(parent);
        Size screenContentSize = ResManager.INSTANCE.getScreenContentSize();
        if (screenContentSize.getHeight() - ((locationOnScreen[1] + windowOffset.getHeight()) + decorView.getMeasuredHeight()) < keyboardHeight.intValue()) {
            setDialogLocation$default(t, 49, Integer.valueOf(((locationOnScreen[0] + windowOffset.getWidth()) + (decorView.getMeasuredWidth() / 2)) - (screenContentSize.getWidth() / 2)), Integer.valueOf((screenContentSize.getHeight() - keyboardHeight.intValue()) - decorView.getMeasuredHeight()), null, null, false, 56, null);
        }
        return t;
    }

    @NotNull
    public static final <T extends Dialog> T restoreDialogLocation(@NotNull T t, @NotNull View parent) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        WindowLocation savedLocation = getSavedLocation(t);
        setDialogLocation$default(t, savedLocation.getGravity(), Integer.valueOf(savedLocation.getX()), Integer.valueOf(savedLocation.getY()), Integer.valueOf(savedLocation.getDx()), Integer.valueOf(savedLocation.getDy()), false, 32, null);
        return t;
    }

    @NotNull
    public static final <T extends Dialog> T saveDialogLocation(@NotNull T t, int i, @NotNull Number x, @NotNull Number y, @NotNull Number dx, @NotNull Number dy) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        WindowLocation windowLocation = new WindowLocation(0, 0, 0, 0, 0, null, null, 127, null);
        windowLocation.setGravity(i);
        windowLocation.setX(x.intValue());
        windowLocation.setY(y.intValue());
        windowLocation.setDx(dx.intValue());
        windowLocation.setDy(dy.intValue());
        Window window = t.getWindow();
        Intrinsics.checkNotNull(window);
        window.getDecorView().setTag(C7106R.id.pop_window_location, windowLocation);
        return t;
    }

    @NotNull
    public static final <T extends Dialog> T setDialogLocation(@NotNull T t, int i, @NotNull Number x, @NotNull Number y, @NotNull Number dx, @NotNull Number dy, boolean z) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        Window window = t.getWindow();
        if (window == null) {
            return t;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = i;
        attributes.x = x.intValue() + dx.intValue();
        attributes.y = y.intValue() + dy.intValue();
        window.setAttributes(attributes);
        if (z) {
            saveDialogLocation(t, i, x, y, dx, dy);
        }
        return t;
    }

    public static /* synthetic */ Dialog setDialogLocation$default(Dialog dialog, int i, Number number, Number number2, Number number3, Number number4, boolean z, int i2, Object obj) {
        return setDialogLocation(dialog, i, number, number2, (i2 & 8) != 0 ? 0 : number3, (i2 & 16) != 0 ? 0 : number4, (i2 & 32) != 0 ? false : z);
    }

    @NotNull
    public static final <T extends Dialog> T showAtLocation(@NotNull T t, int i, @NotNull Number x, @NotNull Number y, @NotNull Number dx, @NotNull Number dy, boolean z) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        setDialogLocation(t, i, x, y, dx, dy, z);
        t.show();
        return t;
    }

    public static /* synthetic */ Dialog showAtLocation$default(Dialog dialog, int i, Number number, Number number2, Number number3, Number number4, boolean z, int i2, Object obj) {
        if ((i2 & 32) != 0) {
            z = false;
        }
        return showAtLocation(dialog, i, number, number2, number3, number4, z);
    }

    @NotNull
    public static final <T extends Dialog> T showCenterBottom(@NotNull T t, @NotNull View parent, @NotNull View anchor, @NotNull Number dx, @NotNull Number dy, boolean z) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dx, "dx");
        Intrinsics.checkNotNullParameter(dy, "dy");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(anchor);
        Size windowOffset = PopupExtKt.getWindowOffset(parent);
        showAtLocation(t, 49, Integer.valueOf(((locationOnScreen[0] + (anchor.getMeasuredWidth() / 2)) + windowOffset.getWidth()) - (PopupExtKt.getActivitySize(parent).getWidth() / 2)), Integer.valueOf(locationOnScreen[1] + windowOffset.getHeight() + anchor.getMeasuredHeight()), dx, dy, z);
        return t;
    }

    public static /* synthetic */ Dialog showCenterBottom$default(Dialog dialog, View view, View view2, Number number, Number number2, boolean z, int i, Object obj) {
        View view3 = (i & 2) != 0 ? view : view2;
        if ((i & 4) != 0) {
            number = 0;
        }
        Number number3 = number;
        if ((i & 8) != 0) {
            number2 = 0;
        }
        return showCenterBottom(dialog, view, view3, number3, number2, (i & 16) != 0 ? false : z);
    }
}
