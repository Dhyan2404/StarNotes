package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class ListFragment extends Fragment {

    /* renamed from: n1 */
    public static final int f7642n1 = 16711681;

    /* renamed from: o1 */
    public static final int f7643o1 = 16711682;

    /* renamed from: p1 */
    public static final int f7644p1 = 16711683;

    /* renamed from: c1 */
    public final Handler f7645c1 = new Handler();

    /* renamed from: d1 */
    public final Runnable f7646d1 = new RunnableC1119a();

    /* renamed from: e1 */
    public final AdapterView.OnItemClickListener f7647e1 = new C1120b();

    /* renamed from: f1 */
    public ListAdapter f7648f1;

    /* renamed from: g1 */
    public ListView f7649g1;

    /* renamed from: h1 */
    public View f7650h1;

    /* renamed from: i1 */
    public TextView f7651i1;

    /* renamed from: j1 */
    public View f7652j1;

    /* renamed from: k1 */
    public View f7653k1;

    /* renamed from: l1 */
    public CharSequence f7654l1;

    /* renamed from: m1 */
    public boolean f7655m1;

    /* renamed from: androidx.fragment.app.ListFragment$a */
    /* loaded from: classes3.dex */
    public class RunnableC1119a implements Runnable {
        public RunnableC1119a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListView listView = ListFragment.this.f7649g1;
            listView.focusableViewAvailable(listView);
        }
    }

    /* renamed from: androidx.fragment.app.ListFragment$b */
    /* loaded from: classes3.dex */
    public class C1120b implements AdapterView.OnItemClickListener {
        public C1120b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListFragment.this.onListItemClick((ListView) adapterView, view, i, j);
        }
    }

    @Nullable
    public ListAdapter getListAdapter() {
        return this.f7648f1;
    }

    @NonNull
    public ListView getListView() {
        m4783k0();
        return this.f7649g1;
    }

    public long getSelectedItemId() {
        m4783k0();
        return this.f7649g1.getSelectedItemId();
    }

    public int getSelectedItemPosition() {
        m4783k0();
        return this.f7649g1.getSelectedItemPosition();
    }

    /* renamed from: k0 */
    public final void m4783k0() {
        if (this.f7649g1 != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.f7649g1 = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(f7642n1);
            this.f7651i1 = textView;
            if (textView == null) {
                this.f7650h1 = view.findViewById(R.id.empty);
            } else {
                textView.setVisibility(8);
            }
            this.f7652j1 = view.findViewById(f7643o1);
            this.f7653k1 = view.findViewById(f7644p1);
            View findViewById = view.findViewById(R.id.list);
            if (!(findViewById instanceof ListView)) {
                if (findViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) findViewById;
            this.f7649g1 = listView;
            View view2 = this.f7650h1;
            if (view2 != null) {
                listView.setEmptyView(view2);
            } else {
                CharSequence charSequence = this.f7654l1;
                if (charSequence != null) {
                    this.f7651i1.setText(charSequence);
                    this.f7649g1.setEmptyView(this.f7651i1);
                }
            }
        }
        this.f7655m1 = true;
        this.f7649g1.setOnItemClickListener(this.f7647e1);
        ListAdapter listAdapter = this.f7648f1;
        if (listAdapter != null) {
            this.f7648f1 = null;
            setListAdapter(listAdapter);
        } else if (this.f7652j1 != null) {
            m4784l0(false, false);
        }
        this.f7645c1.post(this.f7646d1);
    }

    /* renamed from: l0 */
    public final void m4784l0(boolean z, boolean z2) {
        m4783k0();
        View view = this.f7652j1;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.f7655m1 == z) {
            return;
        }
        this.f7655m1 = z;
        if (z) {
            if (z2) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
                this.f7653k1.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            } else {
                view.clearAnimation();
                this.f7653k1.clearAnimation();
            }
            this.f7652j1.setVisibility(8);
            this.f7653k1.setVisibility(0);
            return;
        }
        if (z2) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            this.f7653k1.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
        } else {
            view.clearAnimation();
            this.f7653k1.clearAnimation();
        }
        this.f7652j1.setVisibility(0);
        this.f7653k1.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(f7643o1);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, null, R.attr.progressBarStyleLarge), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(f7644p1);
        TextView textView = new TextView(requireContext);
        textView.setId(f7642n1);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(R.id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f7645c1.removeCallbacks(this.f7646d1);
        this.f7649g1 = null;
        this.f7655m1 = false;
        this.f7653k1 = null;
        this.f7652j1 = null;
        this.f7650h1 = null;
        this.f7651i1 = null;
        super.onDestroyView();
    }

    public void onListItemClick(@NonNull ListView listView, @NonNull View view, int i, long j) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        m4783k0();
    }

    @NonNull
    public final ListAdapter requireListAdapter() {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter != null) {
            return listAdapter;
        }
        throw new IllegalStateException("ListFragment " + this + " does not have a ListAdapter.");
    }

    public void setEmptyText(@Nullable CharSequence charSequence) {
        m4783k0();
        TextView textView = this.f7651i1;
        if (textView == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        textView.setText(charSequence);
        if (this.f7654l1 == null) {
            this.f7649g1.setEmptyView(this.f7651i1);
        }
        this.f7654l1 = charSequence;
    }

    public void setListAdapter(@Nullable ListAdapter listAdapter) {
        boolean z = this.f7648f1 != null;
        this.f7648f1 = listAdapter;
        ListView listView = this.f7649g1;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.f7655m1 || z) {
                return;
            }
            m4784l0(true, requireView().getWindowToken() != null);
        }
    }

    public void setListShown(boolean z) {
        m4784l0(z, true);
    }

    public void setListShownNoAnimation(boolean z) {
        m4784l0(z, false);
    }

    public void setSelection(int i) {
        m4783k0();
        this.f7649g1.setSelection(i);
    }
}
