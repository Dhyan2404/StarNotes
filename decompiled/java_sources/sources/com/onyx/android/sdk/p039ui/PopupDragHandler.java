package com.onyx.android.sdk.p039ui;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.p039ui.PopupDragHandler;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0012\b\u0002\u0010\u001f\u001a\f\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c\u0012\u0012\b\u0002\u0010!\u001a\f\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001f\u001a\f\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001e\u0010!\u001a\f\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001eR\u0016\u0010$\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0018\u0010)\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/PopupDragHandler;", "", "", "initialize", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouch", "", "x", "y", "movePopup", "Lcom/onyx/android/sdk/base/data/WindowLocation;", "location", "", "dockValueH", "dockValueV", "fixWindowLocation", "Landroid/widget/PopupWindow;", "a", "Landroid/widget/PopupWindow;", "popup", "b", "Landroid/view/View;", "touchView", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "c", "Lkotlin/jvm/functions/Function0;", "onDragStart", "d", "onDragDone", "e", "F", "startX", C6997f.f39671c, "startY", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/WindowLocation;", "startLocation", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PopupDragHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PopupWindow popup;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final View touchView;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onDragStart;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onDragDone;

    /* renamed from: e, reason: from kotlin metadata */
    public float startX;

    /* renamed from: f, reason: from kotlin metadata */
    public float startY;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public WindowLocation startLocation;

    public PopupDragHandler(@NotNull PopupWindow popup, @NotNull View touchView, @NotNull Function0<Unit> onDragStart, @NotNull Function0<Unit> onDragDone) {
        Intrinsics.checkNotNullParameter(popup, "popup");
        Intrinsics.checkNotNullParameter(touchView, "touchView");
        Intrinsics.checkNotNullParameter(onDragStart, "onDragStart");
        Intrinsics.checkNotNullParameter(onDragDone, "onDragDone");
        this.popup = popup;
        this.touchView = touchView;
        this.onDragStart = onDragStart;
        this.onDragDone = onDragDone;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0031, code lost:
    
        if (r9 != 3) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x00bf, code lost:
    
        if (r10 != 3) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean fixWindowLocation(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.WindowLocation r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.PopupDragHandler.fixWindowLocation(com.onyx.android.sdk.base.data.WindowLocation, int, int):boolean");
    }

    public final void initialize() {
        this.touchView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.g5l
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PopupDragHandler.this.onTouch(view, motionEvent);
            }
        });
    }

    public final void movePopup(float x, float y) {
        float f = x - this.startX;
        float f2 = y - this.startY;
        WindowLocation windowLocation = this.startLocation;
        if (windowLocation == null) {
            return;
        }
        int horizontalValue = windowLocation.getSrcDockPoint().getHorizontalValue();
        int verticalValue = windowLocation.getSrcDockPoint().getVerticalValue();
        int i = horizontalValue == 3 ? -1 : 1;
        int i2 = verticalValue == 3 ? -1 : 1;
        WindowLocation copy$default = WindowLocation.copy$default(windowLocation, 0, 0, 0, 0, 0, null, null, 127, null);
        copy$default.setDx((int) (copy$default.getDx() + (f * i)));
        copy$default.setDy((int) (copy$default.getDy() + (f2 * i2)));
        if (fixWindowLocation(copy$default, horizontalValue, verticalValue)) {
            this.startX = x;
            this.startY = y;
            this.startLocation = copy$default;
        }
        PopupLocator.update$default(PopupLocator.INSTANCE, this.popup, copy$default, 0, 0, 6, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        if (r5 != 3) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(@org.jetbrains.annotations.NotNull android.view.View r4, @org.jetbrains.annotations.NotNull android.view.MotionEvent r5) {
        /*
            r3 = this;
            java.lang.String r0 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r4 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r4)
            float r4 = r5.getRawX()
            float r0 = r5.getRawY()
            int r5 = r5.getAction()
            r1 = 1
            if (r5 == 0) goto L2c
            if (r5 == r1) goto L26
            r2 = 2
            if (r5 == r2) goto L22
            r4 = 3
            if (r5 == r4) goto L26
            goto L3f
        L22:
            r3.movePopup(r4, r0)
            goto L3f
        L26:
            kotlin.jvm.functions.Function0<kotlin.Unit> r3 = r3.onDragDone
            r3.invoke()
            goto L3f
        L2c:
            kotlin.jvm.functions.Function0<kotlin.Unit> r5 = r3.onDragStart
            r5.invoke()
            r3.startX = r4
            r3.startY = r0
            com.onyx.android.sdk.base.extension.PopupLocator r4 = com.onyx.android.sdk.base.extension.PopupLocator.INSTANCE
            android.widget.PopupWindow r5 = r3.popup
            com.onyx.android.sdk.base.data.WindowLocation r4 = r4.getCachedWindowLocation(r5)
            r3.startLocation = r4
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.PopupDragHandler.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public /* synthetic */ PopupDragHandler(PopupWindow popupWindow, View view, Function0 function0, Function0 function02, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(popupWindow, view, (i & 4) != 0 ? new Function0<Unit>() { // from class: com.onyx.android.sdk.ui.PopupDragHandler.1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        } : function0, (i & 8) != 0 ? new Function0<Unit>() { // from class: com.onyx.android.sdk.ui.PopupDragHandler.2
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        } : function02);
    }
}
