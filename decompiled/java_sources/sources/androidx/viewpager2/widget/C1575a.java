package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* renamed from: androidx.viewpager2.widget.a */
/* loaded from: classes3.dex */
public final class C1575a extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a */
    @NonNull
    public final List<ViewPager2.OnPageChangeCallback> f11181a;

    public C1575a(int i) {
        this.f11181a = new ArrayList(i);
    }

    /* renamed from: a */
    public void m6864a(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f11181a.add(onPageChangeCallback);
    }

    /* renamed from: b */
    public void m6865b(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f11181a.remove(onPageChangeCallback);
    }

    /* renamed from: c */
    public final void m6866c(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it2 = this.f11181a.iterator();
            while (it2.hasNext()) {
                it2.next().onPageScrollStateChanged(i);
            }
        } catch (ConcurrentModificationException e) {
            m6866c(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i, float f, @Px int i2) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it2 = this.f11181a.iterator();
            while (it2.hasNext()) {
                it2.next().onPageScrolled(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            m6866c(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it2 = this.f11181a.iterator();
            while (it2.hasNext()) {
                it2.next().onPageSelected(i);
            }
        } catch (ConcurrentModificationException e) {
            m6866c(e);
        }
    }
}
