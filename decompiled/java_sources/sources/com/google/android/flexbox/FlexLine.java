package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class FlexLine {

    /* renamed from: e */
    public int f28745e;

    /* renamed from: f */
    public int f28746f;

    /* renamed from: g */
    public int f28747g;

    /* renamed from: h */
    public int f28748h;

    /* renamed from: i */
    public int f28749i;

    /* renamed from: j */
    public float f28750j;

    /* renamed from: k */
    public float f28751k;

    /* renamed from: l */
    public int f28752l;

    /* renamed from: m */
    public int f28753m;

    /* renamed from: o */
    public int f28755o;

    /* renamed from: p */
    public int f28756p;

    /* renamed from: q */
    public boolean f28757q;

    /* renamed from: r */
    public boolean f28758r;

    /* renamed from: a */
    public int f28741a = Integer.MAX_VALUE;

    /* renamed from: b */
    public int f28742b = Integer.MAX_VALUE;

    /* renamed from: c */
    public int f28743c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f28744d = Integer.MIN_VALUE;

    /* renamed from: n */
    public List<Integer> f28754n = new ArrayList();

    /* renamed from: a */
    public void m21697a(View view, int leftDecoration, int topDecoration, int rightDecoration, int bottomDecoration) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f28741a = Math.min(this.f28741a, (view.getLeft() - flexItem.getMarginLeft()) - leftDecoration);
        this.f28742b = Math.min(this.f28742b, (view.getTop() - flexItem.getMarginTop()) - topDecoration);
        this.f28743c = Math.max(this.f28743c, view.getRight() + flexItem.getMarginRight() + rightDecoration);
        this.f28744d = Math.max(this.f28744d, view.getBottom() + flexItem.getMarginBottom() + bottomDecoration);
    }

    public int getCrossSize() {
        return this.f28747g;
    }

    public int getFirstIndex() {
        return this.f28755o;
    }

    public int getItemCount() {
        return this.f28748h;
    }

    public int getItemCountNotGone() {
        return this.f28748h - this.f28749i;
    }

    public int getMainSize() {
        return this.f28745e;
    }

    public float getTotalFlexGrow() {
        return this.f28750j;
    }

    public float getTotalFlexShrink() {
        return this.f28751k;
    }
}
