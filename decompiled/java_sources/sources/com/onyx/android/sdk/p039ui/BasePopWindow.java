package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.ScreenUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ViewUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 R2\u00020\u0001:\u0002RSB\u0011\u0012\b\u0010O\u001a\u0004\u0018\u00010N¢\u0006\u0004\bP\u0010QJ+\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J$\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0016J(\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000fH\u0016J*\u0010\u001c\u001a\u00020\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0016J\u0006\u0010\u001f\u001a\u00020\u0013J\u0016\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010 \u001a\u00020\fJ\u0016\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0007J\u000e\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nJ\u000e\u0010#\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\nJ)\u0010$\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b$\u0010%J\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010&J\b\u0010(\u001a\u0004\u0018\u00010\u0000J\u0010\u0010*\u001a\u00020\u00132\b\u0010)\u001a\u0004\u0018\u00010\u0000J\u0010\u0010,\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0005H\u0004J\u000e\u0010-\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\nR$\u00104\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00105\u001a\u0004\b<\u00107\"\u0004\b=\u00109R\"\u0010?\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u00105\u001a\u0004\b?\u00107\"\u0004\b@\u00109R\"\u0010B\u001a\u00020\u00058\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bA\u00105\u001a\u0004\bB\u00107\"\u0004\bC\u00109R\"\u0010G\u001a\u0010\u0012\f\u0012\n D*\u0004\u0018\u00010\u00000\u00000&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010 \u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010F¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/BasePopWindow;", "Landroid/widget/PopupWindow;", "Landroid/graphics/Rect;", "anchorRect", "rangeArea", "", "canShowAtUp", "Landroid/graphics/Point;", "b", "(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Point;", "Landroid/view/View;", "anchorView", "", "a", Constants.ELEMNAME_ANCHOR_STRING, "", "popWidth", "popHeight", "d", "", "dismiss", "parent", NotificationCompat.WearableExtender.f5060z, "x", "y", "showAtLocation", "xoff", "yoff", "showAsDropDown", "onShow", "onPrepareShow", "dismissPopView", "location", "showDynamicPositionPopView", "p", "showDynamicPositionDropDown", "showCenterPositionPopView", "(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V", "Ljava/lang/ref/WeakReference;", "getParentPopupReference", "getParentPopup", "parentPopup", "setParentPopup", "show", "windowChangeEvent", "showAsDropDownCenter", "Lorg/greenrobot/eventbus/EventBus;", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getShowAsLeft", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setShowAsLeft", "(Z)V", "showAsLeft", "c", "getShowAsUp", "setShowAsUp", "showAsUp", "isShowScreenRight", "setShowScreenRight", "e", "isForceShowAtUp", "setForceShowAtUp", "kotlin.jvm.PlatformType", C6997f.f39671c, "Ljava/lang/ref/WeakReference;", "basePopWindowWeakReference", C6998g.f39679a, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TYPES_INDEX_SIG, C6999h.f39688c, "Landroid/graphics/Point;", "i", "parentPopupReference", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "PopupWindowChangeEvent", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class BasePopWindow extends PopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: j */
    @NotNull
    public static final ObjectHolder<BasePopWindow> f47004j = new ObjectHolder<>();

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean showAsLeft;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean showAsUp;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isShowScreenRight;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isForceShowAtUp;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final WeakReference<BasePopWindow> basePopWindowWeakReference;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public int[] location;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Point p;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public WeakReference<BasePopWindow> parentPopupReference;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;", "", "()V", "dialogHolder", "Lcom/onyx/android/sdk/ui/ObjectHolder;", "Lcom/onyx/android/sdk/ui/BasePopWindow;", "dismissAll", "", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void dismissAll() {
            Iterator it2 = BasePopWindow.f47004j.getCopyOfObjectList().iterator();
            while (it2.hasNext()) {
                BasePopWindow basePopWindow = (BasePopWindow) ((WeakReference) it2.next()).get();
                if (basePopWindow != null) {
                    basePopWindow.dismiss();
                }
            }
            BasePopWindow.f47004j.clear();
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/BasePopWindow$PopupWindowChangeEvent;", "", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getShow", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setShow", "(Z)V", "show", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class PopupWindowChangeEvent {

        /* renamed from: a, reason: from kotlin metadata */
        public boolean show;

        public PopupWindowChangeEvent(boolean z) {
            this.show = z;
        }

        public final boolean getShow() {
            return this.show;
        }

        public final void setShow(boolean z) {
            this.show = z;
        }
    }

    public BasePopWindow(@Nullable Context context) {
        super(context);
        WeakReference<BasePopWindow> weakReference = new WeakReference<>(this);
        this.basePopWindowWeakReference = weakReference;
        setFocusable(true);
        f47004j.add(weakReference);
    }

    /* renamed from: c */
    public static /* synthetic */ Point m36356c(BasePopWindow basePopWindow, Rect rect, Rect rect2, Boolean bool, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPositionOffsetRect");
        }
        if ((i & 4) != 0) {
            bool = null;
        }
        return basePopWindow.m36358b(rect, rect2, bool);
    }

    public static /* synthetic */ void showCenterPositionPopView$default(BasePopWindow basePopWindow, View view, Rect rect, Boolean bool, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showCenterPositionPopView");
        }
        if ((i & 4) != 0) {
            bool = null;
        }
        basePopWindow.showCenterPositionPopView(view, rect, bool);
    }

    /* renamed from: a */
    public final int[] m36357a(View anchorView) {
        if (this.location == null) {
            this.location = new int[2];
            this.location = ViewUtils.INSTANCE.getLocationInWindow(anchorView);
        }
        int[] iArr = this.location;
        Intrinsics.checkNotNull(iArr);
        return iArr;
    }

    /* renamed from: b */
    public final Point m36358b(Rect anchorRect, Rect rangeArea, Boolean canShowAtUp) {
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        int width = (anchorRect.left + (anchorRect.width() / 2)) - (measureSize$default.getWidth() / 2);
        int height = anchorRect.bottom - (anchorRect.height() / 2);
        int i = rangeArea.left;
        if (width < i) {
            width = i;
        }
        if (Intrinsics.areEqual(canShowAtUp, Boolean.TRUE) && rangeArea.bottom - height < measureSize$default.getHeight() && anchorRect.top > measureSize$default.getHeight()) {
            height = (anchorRect.top - (anchorRect.height() / 4)) - measureSize$default.getHeight();
            this.isForceShowAtUp = true;
        }
        return new Point(width, height);
    }

    /* renamed from: d */
    public final Point m36359d(View anchor, int popWidth, int popHeight) {
        if (anchor == null) {
            return null;
        }
        int[] m36357a = m36357a(anchor);
        int i = m36357a[0];
        int i2 = m36357a[1];
        Context context = anchor.getContext();
        ResManager resManager = ResManager.INSTANCE;
        int windowDefaultHeight = resManager.getWindowDefaultHeight(context);
        int windowDefaultWidth = resManager.getWindowDefaultWidth(context);
        int width = (anchor.getWidth() / 2) + i;
        int height = (anchor.getHeight() / 2) + i2;
        boolean z = this.showAsLeft;
        if (z) {
            width -= popWidth;
        }
        if (this.showAsUp) {
            height -= popHeight;
        }
        if (!z && (windowDefaultWidth - i) - (anchor.getWidth() / 2) < popWidth) {
            width = (windowDefaultWidth - popWidth) - ((int) (anchor.getWidth() / 1.5d));
        }
        if (!this.showAsUp && (windowDefaultHeight - i2) - (anchor.getHeight() / 2) < popHeight) {
            height = (windowDefaultHeight - popHeight) - anchor.getHeight();
        }
        Point point = this.p;
        if (point != null) {
            Intrinsics.checkNotNull(point);
            width += point.x;
            Point point2 = this.p;
            Intrinsics.checkNotNull(point2);
            height += point2.y;
        }
        if (this.isShowScreenRight) {
            Point point3 = this.p;
            if (point3 != null) {
                Intrinsics.checkNotNull(point3);
                width = point3.x;
            } else if ((windowDefaultWidth - i) - (anchor.getWidth() / 2) < popWidth) {
                width = popWidth + ((int) (anchor.getWidth() / 1.5d));
            }
        }
        return new Point(width, height);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        windowChangeEvent(false);
    }

    public final void dismissPopView() {
        dismiss();
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Nullable
    public final BasePopWindow getParentPopup() {
        WeakReference<BasePopWindow> weakReference = this.parentPopupReference;
        if (weakReference == null) {
            return null;
        }
        Intrinsics.checkNotNull(weakReference);
        return weakReference.get();
    }

    @Nullable
    public final WeakReference<BasePopWindow> getParentPopupReference() {
        return this.parentPopupReference;
    }

    public final boolean getShowAsLeft() {
        return this.showAsLeft;
    }

    public final boolean getShowAsUp() {
        return this.showAsUp;
    }

    /* renamed from: isForceShowAtUp, reason: from getter */
    public final boolean getIsForceShowAtUp() {
        return this.isForceShowAtUp;
    }

    /* renamed from: isShowScreenRight, reason: from getter */
    public final boolean getIsShowScreenRight() {
        return this.isShowScreenRight;
    }

    public void onPrepareShow() {
        windowChangeEvent(true);
    }

    public void onShow() {
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void setForceShowAtUp(boolean z) {
        this.isForceShowAtUp = z;
    }

    public final void setParentPopup(@Nullable BasePopWindow parentPopup) {
        if (parentPopup != null) {
            this.parentPopupReference = new WeakReference<>(parentPopup);
        }
    }

    public final void setShowAsLeft(boolean z) {
        this.showAsLeft = z;
    }

    public final void setShowAsUp(boolean z) {
        this.showAsUp = z;
    }

    public final void setShowScreenRight(boolean z) {
        this.isShowScreenRight = z;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(@Nullable View anchor, int xoff, int yoff, int gravity) {
        onPrepareShow();
        super.showAsDropDown(anchor, xoff, yoff, gravity);
        onShow();
    }

    public final void showAsDropDownCenter(@NotNull View anchorView) {
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        showAsDropDown(anchorView, -((int) (measureSize$default.getWidth() / 2.0f)), (ViewKt.getLocationOnScreen(anchorView)[1] + anchorView.getHeight()) + measureSize$default.getHeight() > ScreenUtils.getScreenHeight() - anchorView.getHeight() ? -(measureSize$default.getHeight() + anchorView.getHeight()) : 0);
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        onPrepareShow();
        super.showAtLocation(parent, gravity, x, y);
        onShow();
    }

    public final void showCenterPositionPopView(@NotNull View anchor, @NotNull Rect rangeArea, @Nullable Boolean canShowAtUp) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(rangeArea, "rangeArea");
        Point m36358b = m36358b(ViewKt.windowVisibleRect(anchor), rangeArea, canShowAtUp);
        showAtLocation(anchor, 0, m36358b.x, m36358b.y);
    }

    public final void showDynamicPositionDropDown(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        getContentView().measure(0, 0);
        showAsDropDown(anchor, 0, -getContentView().getMeasuredHeight());
    }

    public final void showDynamicPositionPopView(@NotNull View parent, @NotNull int[] location) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(location, "location");
        showDynamicPositionPopView(parent, new Point(location[0], location[1]));
    }

    public final void windowChangeEvent(boolean show) {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new PopupWindowChangeEvent(show));
        }
    }

    public final void showDynamicPositionPopView(@NotNull View parent, @NotNull Point p) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(p, "p");
        this.p = p;
        showDynamicPositionPopView(parent);
    }

    public final void showDynamicPositionPopView(@NotNull View parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        m36357a(parent);
        getContentView().measure(0, 0);
        Point m36359d = m36359d(parent, getContentView().getMeasuredWidth(), getContentView().getMeasuredHeight());
        if (m36359d == null) {
            return;
        }
        showAtLocation(parent, this.isShowScreenRight ? 8388661 : 0, m36359d.x, m36359d.y);
    }
}
