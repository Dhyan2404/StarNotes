package androidx.databinding.adapters;

import android.widget.AbsListView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;

@BindingMethods({@BindingMethod(attribute = "android:listSelector", method = "setSelector", type = AbsListView.class), @BindingMethod(attribute = "android:scrollingCache", method = "setScrollingCacheEnabled", type = AbsListView.class), @BindingMethod(attribute = "android:smoothScrollbar", method = "setSmoothScrollbarEnabled", type = AbsListView.class), @BindingMethod(attribute = "android:onMovedToScrapHeap", method = "setRecyclerListener", type = AbsListView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class AbsListViewBindingAdapter {

    /* loaded from: classes3.dex */
    public interface OnScroll {
        void onScroll(AbsListView absListView, int i, int i2, int i3);
    }

    /* loaded from: classes3.dex */
    public interface OnScrollStateChanged {
        void onScrollStateChanged(AbsListView absListView, int i);
    }

    /* renamed from: androidx.databinding.adapters.AbsListViewBindingAdapter$a */
    /* loaded from: classes3.dex */
    public class C0979a implements AbsListView.OnScrollListener {

        /* renamed from: e */
        public final /* synthetic */ OnScrollStateChanged f6740e;

        /* renamed from: f */
        public final /* synthetic */ OnScroll f6741f;

        public C0979a(OnScrollStateChanged onScrollStateChanged, OnScroll onScroll) {
            this.f6740e = onScrollStateChanged;
            this.f6741f = onScroll;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            OnScroll onScroll = this.f6741f;
            if (onScroll != null) {
                onScroll.onScroll(absListView, i, i2, i3);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            OnScrollStateChanged onScrollStateChanged = this.f6740e;
            if (onScrollStateChanged != null) {
                onScrollStateChanged.onScrollStateChanged(absListView, i);
            }
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onScroll", "android:onScrollStateChanged"})
    public static void setOnScroll(AbsListView absListView, OnScroll onScroll, OnScrollStateChanged onScrollStateChanged) {
        absListView.setOnScrollListener(new C0979a(onScrollStateChanged, onScroll));
    }
}
