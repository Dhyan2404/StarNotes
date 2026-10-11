package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* renamed from: androidx.viewpager2.widget.b */
/* loaded from: classes3.dex */
public final class C1576b extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a */
    public final LinearLayoutManager f11182a;

    /* renamed from: b */
    public ViewPager2.PageTransformer f11183b;

    public C1576b(LinearLayoutManager linearLayoutManager) {
        this.f11182a = linearLayoutManager;
    }

    /* renamed from: a */
    public ViewPager2.PageTransformer m6867a() {
        return this.f11183b;
    }

    /* renamed from: b */
    public void m6868b(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.f11183b = pageTransformer;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i, float f, int i2) {
        if (this.f11183b == null) {
            return;
        }
        float f2 = -f;
        for (int i3 = 0; i3 < this.f11182a.getChildCount(); i3++) {
            View childAt = this.f11182a.getChildAt(i3);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f11182a.getChildCount())));
            }
            this.f11183b.transformPage(childAt, (this.f11182a.getPosition(childAt) - i) + f2);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
    }
}
