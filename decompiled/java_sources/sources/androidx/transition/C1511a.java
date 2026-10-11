package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.l3o;
import java.util.ArrayList;

@SuppressLint({"ViewConstructor"})
/* renamed from: androidx.transition.a */
/* loaded from: classes3.dex */
public class C1511a extends FrameLayout {

    /* renamed from: e */
    @NonNull
    public ViewGroup f10747e;

    /* renamed from: f */
    public boolean f10748f;

    @RequiresApi(21)
    /* renamed from: androidx.transition.a$a */
    /* loaded from: classes3.dex */
    public static class a {
        @DoNotInline
        /* renamed from: a */
        public static float m6655a(View view) {
            return view.getZ();
        }
    }

    public C1511a(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f10747e = viewGroup;
        viewGroup.setTag(C1486R.id.ghost_view_holder, this);
        this.f10747e.getOverlay().add(this);
        this.f10748f = true;
    }

    /* renamed from: b */
    public static C1511a m6648b(@NonNull ViewGroup viewGroup) {
        return (C1511a) viewGroup.getTag(C1486R.id.ghost_view_holder);
    }

    /* renamed from: d */
    public static void m6649d(View view, ArrayList<View> arrayList) {
        Object parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m6649d((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* renamed from: e */
    public static boolean m6650e(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        if (a.m6655a(view) != a.m6655a(view2)) {
            return a.m6655a(view) > a.m6655a(view2);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(l3o.m55374a(viewGroup, i));
            if (childAt == view) {
                return false;
            }
            if (childAt == view2) {
                break;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static boolean m6651f(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        if (arrayList.isEmpty() || arrayList2.isEmpty() || arrayList.get(0) != arrayList2.get(0)) {
            return true;
        }
        int min = Math.min(arrayList.size(), arrayList2.size());
        for (int i = 1; i < min; i++) {
            View view = arrayList.get(i);
            View view2 = arrayList2.get(i);
            if (view != view2) {
                return m6650e(view, view2);
            }
        }
        return arrayList2.size() == min;
    }

    /* renamed from: a */
    public void m6652a(C1512b c1512b) {
        ArrayList<View> arrayList = new ArrayList<>();
        m6649d(c1512b.f10751g, arrayList);
        int m6653c = m6653c(arrayList);
        if (m6653c < 0 || m6653c >= getChildCount()) {
            addView(c1512b);
        } else {
            addView(c1512b, m6653c);
        }
    }

    /* renamed from: c */
    public final int m6653c(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            m6649d(((C1512b) getChildAt(i2)).f10751g, arrayList2);
            if (m6651f(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    /* renamed from: g */
    public void m6654g() {
        if (!this.f10748f) {
            throw new IllegalStateException("This GhostViewHolder is detached!");
        }
        this.f10747e.getOverlay().remove(this);
        this.f10747e.getOverlay().add(this);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (!this.f10748f) {
            throw new IllegalStateException("This GhostViewHolder is detached!");
        }
        super.onViewAdded(view);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f10747e.setTag(C1486R.id.ghost_view_holder, null);
            this.f10747e.getOverlay().remove(this);
            this.f10748f = false;
        }
    }
}
