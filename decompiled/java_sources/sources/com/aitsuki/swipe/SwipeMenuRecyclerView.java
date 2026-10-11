package com.aitsuki.swipe;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0014\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010/\u001a\u00020.\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100¢\u0006\u0004\b2\u00103J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\r\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0015H\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0017\u001a\u00020\u0013H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001fR\u0016\u0010-\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010\u001f¨\u00064"}, m61528d2 = {"Lcom/aitsuki/swipe/SwipeMenuRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "", "closeMenus", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "", "x", "y", "", "pointerId", "h1", "b1", "g1", "f1", "a1", "Z0", "Landroid/view/View;", "e1", "", "c1", "view", "Lcom/aitsuki/swipe/SwipeLayout;", "d1", "Landroid/graphics/Rect;", "W1", "Landroid/graphics/Rect;", "rect", "X1", "I", "touchSlop", "", "Y1", "[F", "initMotionX", "Z1", "initMotionY", "a2", Constants.HASIDCALL_INDEX_SIG, "cancelUp", "b2", "pointersDown", "c2", "pastSlopPointerId", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "library_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class SwipeMenuRecyclerView extends RecyclerView {

    /* renamed from: W1, reason: from kotlin metadata */
    @NotNull
    public final Rect rect;

    /* renamed from: X1, reason: from kotlin metadata */
    public final int touchSlop;

    /* renamed from: Y1, reason: from kotlin metadata */
    @NotNull
    public float[] initMotionX;

    /* renamed from: Z1, reason: from kotlin metadata */
    @NotNull
    public float[] initMotionY;

    /* renamed from: a2, reason: from kotlin metadata */
    public boolean cancelUp;

    /* renamed from: b2, reason: from kotlin metadata */
    public int pointersDown;

    /* renamed from: c2, reason: from kotlin metadata */
    public int pastSlopPointerId;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public SwipeMenuRecyclerView(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: Z0 */
    public final void m7252Z0() {
        float[] fArr = this.initMotionX;
        if (fArr.length == 0) {
            return;
        }
        ArraysKt___ArraysJvmKt.fill$default(fArr, 0.0f, 0, 0, 6, (Object) null);
        ArraysKt___ArraysJvmKt.fill$default(this.initMotionY, 0.0f, 0, 0, 6, (Object) null);
        this.pointersDown = 0;
    }

    /* renamed from: a1 */
    public final void m7253a1(int pointerId) {
        if ((this.initMotionX.length == 0) || !m7258f1(pointerId)) {
            return;
        }
        this.initMotionX[pointerId] = 0.0f;
        this.initMotionY[pointerId] = 0.0f;
        this.pointersDown = (~(1 << pointerId)) & this.pointersDown;
    }

    /* renamed from: b1 */
    public final void m7254b1(int pointerId) {
        float[] copyInto$default;
        float[] copyInto$default2;
        float[] fArr = this.initMotionX;
        if (fArr.length <= pointerId) {
            int i = pointerId + 1;
            copyInto$default = ArraysKt___ArraysJvmKt.copyInto$default(fArr, new float[i], 0, 0, 0, 14, (Object) null);
            this.initMotionX = copyInto$default;
            copyInto$default2 = ArraysKt___ArraysJvmKt.copyInto$default(this.initMotionY, new float[i], 0, 0, 0, 14, (Object) null);
            this.initMotionY = copyInto$default2;
        }
    }

    /* renamed from: c1 */
    public final List<View> m7255c1() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            int i2 = i + 1;
            View child = getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(child, "child");
            SwipeLayout m7256d1 = m7256d1(child);
            if (m7256d1 != null && m7256d1.getOnScreen() > 0.0f) {
                arrayList.add(child);
            }
            i = i2;
        }
        return arrayList;
    }

    public final void closeMenus() {
        Iterator<View> it2 = m7255c1().iterator();
        while (it2.hasNext()) {
            SwipeLayout m7256d1 = m7256d1(it2.next());
            if (m7256d1 != null) {
                m7256d1.closeMenu(true);
            }
        }
    }

    /* renamed from: d1 */
    public final SwipeLayout m7256d1(View view) {
        if (view instanceof SwipeLayout) {
            return (SwipeLayout) view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getChildCount() <= 0) {
            return null;
        }
        View childAt = viewGroup.getChildAt(0);
        Intrinsics.checkNotNullExpressionValue(childAt, "view.getChildAt(i)");
        return m7256d1(childAt);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        int actionMasked = ev.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (!(this.initMotionX.length == 0)) {
                        int pointerCount = ev.getPointerCount();
                        int i = 0;
                        while (i < pointerCount) {
                            int i2 = i + 1;
                            int pointerId = ev.getPointerId(i);
                            if (m7259g1(pointerId)) {
                                float x = ev.getX(i);
                                float y = ev.getY(i);
                                float f = x - this.initMotionX[pointerId];
                                float f2 = y - this.initMotionY[pointerId];
                                float f3 = (f * f) + (f2 * f2);
                                int i3 = this.touchSlop;
                                if (f3 > i3 * i3) {
                                    this.cancelUp = false;
                                }
                                int i4 = this.pastSlopPointerId;
                                if (i4 == -1) {
                                    View m7257e1 = m7257e1((int) x, (int) y);
                                    SwipeLayout m7256d1 = m7257e1 != null ? m7256d1(m7257e1) : null;
                                    if (m7256d1 != null && m7256d1.getSwipeEnable$library_release() && Math.abs(f) > this.touchSlop && Math.abs(f) > Math.abs(f2)) {
                                        this.pastSlopPointerId = pointerId;
                                    }
                                } else if (i4 != -1 && i4 != pointerId) {
                                    ev.setAction(3);
                                }
                            }
                            i = i2;
                        }
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        m7260h1(ev.getX(ev.getActionIndex()), ev.getY(ev.getActionIndex()), ev.getPointerId(ev.getActionIndex()));
                        if (!m7255c1().isEmpty()) {
                            return false;
                        }
                    } else if (actionMasked == 6) {
                        m7253a1(ev.getPointerId(ev.getActionIndex()));
                    }
                }
            }
            m7252Z0();
            if (this.cancelUp) {
                ev.setAction(3);
                this.cancelUp = false;
            }
        } else {
            this.pastSlopPointerId = -1;
            m7260h1(ev.getX(), ev.getY(), ev.getPointerId(0));
            View m7257e12 = m7257e1((int) ev.getX(), (int) ev.getY());
            for (View view : m7255c1()) {
                if (!Intrinsics.areEqual(view, m7257e12)) {
                    SwipeLayout m7256d12 = m7256d1(view);
                    if (m7256d12 != null) {
                        m7256d12.closeMenu(true);
                    }
                    this.cancelUp = true;
                }
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    /* renamed from: e1 */
    public final View m7257e1(int x, int y) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            int i2 = i + 1;
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(this.rect);
                if (this.rect.contains(x, y)) {
                    return childAt;
                }
            }
            i = i2;
        }
        return null;
    }

    /* renamed from: f1 */
    public final boolean m7258f1(int pointerId) {
        return (this.pointersDown & (1 << pointerId)) != 0;
    }

    /* renamed from: g1 */
    public final boolean m7259g1(int pointerId) {
        if (m7258f1(pointerId)) {
            return true;
        }
        Log.e(SwipeMenuRecyclerViewKt.f12187a, "Ignoring pointerId=" + pointerId + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  SwipeMenuRecyclerView did not receive all the events in the event stream.");
        return false;
    }

    /* renamed from: h1 */
    public final void m7260h1(float x, float y, int pointerId) {
        m7254b1(pointerId);
        this.initMotionX[pointerId] = x;
        this.initMotionY[pointerId] = y;
        this.pointersDown |= 1 << pointerId;
    }

    public /* synthetic */ SwipeMenuRecyclerView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeMenuRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.rect = new Rect();
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.initMotionX = new float[1];
        this.initMotionY = new float[1];
        this.pastSlopPointerId = -1;
    }
}
