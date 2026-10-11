package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes3.dex */
public class C1381f {

    /* renamed from: j */
    public static final int f9945j = -1;

    /* renamed from: k */
    public static final int f9946k = 1;

    /* renamed from: l */
    public static final int f9947l = Integer.MIN_VALUE;

    /* renamed from: m */
    public static final int f9948m = -1;

    /* renamed from: n */
    public static final int f9949n = 1;

    /* renamed from: b */
    public int f9951b;

    /* renamed from: c */
    public int f9952c;

    /* renamed from: d */
    public int f9953d;

    /* renamed from: e */
    public int f9954e;

    /* renamed from: h */
    public boolean f9957h;

    /* renamed from: i */
    public boolean f9958i;

    /* renamed from: a */
    public boolean f9950a = true;

    /* renamed from: f */
    public int f9955f = 0;

    /* renamed from: g */
    public int f9956g = 0;

    /* renamed from: a */
    public boolean m6216a(RecyclerView.State state) {
        int i = this.f9952c;
        return i >= 0 && i < state.getItemCount();
    }

    /* renamed from: b */
    public View m6217b(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.f9952c);
        this.f9952c += this.f9953d;
        return viewForPosition;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f9951b + ", mCurrentPosition=" + this.f9952c + ", mItemDirection=" + this.f9953d + ", mLayoutDirection=" + this.f9954e + ", mStartLine=" + this.f9955f + ", mEndLine=" + this.f9956g + '}';
    }
}
