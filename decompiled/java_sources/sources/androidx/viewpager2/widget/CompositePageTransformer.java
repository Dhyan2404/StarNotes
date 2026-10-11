package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class CompositePageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a */
    public final List<ViewPager2.PageTransformer> f11140a = new ArrayList();

    public void addTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f11140a.add(pageTransformer);
    }

    public void removeTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f11140a.remove(pageTransformer);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        Iterator<ViewPager2.PageTransformer> it2 = this.f11140a.iterator();
        while (it2.hasNext()) {
            it2.next().transformPage(view, f);
        }
    }
}
