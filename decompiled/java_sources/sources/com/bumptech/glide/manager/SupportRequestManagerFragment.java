package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.sunia.HTREnginev2.C14078m6;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class SupportRequestManagerFragment extends Fragment {

    /* renamed from: i1 */
    public static final String f15226i1 = "SupportRMFragment";

    /* renamed from: c1 */
    public final C14078m6 f15227c1;

    /* renamed from: d1 */
    public final RequestManagerTreeNode f15228d1;

    /* renamed from: e1 */
    public final Set<SupportRequestManagerFragment> f15229e1;

    /* renamed from: f1 */
    @Nullable
    public SupportRequestManagerFragment f15230f1;

    /* renamed from: g1 */
    @Nullable
    public RequestManager f15231g1;

    /* renamed from: h1 */
    @Nullable
    public Fragment f15232h1;

    /* renamed from: com.bumptech.glide.manager.SupportRequestManagerFragment$a */
    /* loaded from: classes3.dex */
    public class C2020a implements RequestManagerTreeNode {
        public C2020a() {
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<RequestManager> getDescendants() {
            Set<SupportRequestManagerFragment> m9069l0 = SupportRequestManagerFragment.this.m9069l0();
            HashSet hashSet = new HashSet(m9069l0.size());
            for (SupportRequestManagerFragment supportRequestManagerFragment : m9069l0) {
                if (supportRequestManagerFragment.getRequestManager() != null) {
                    hashSet.add(supportRequestManagerFragment.getRequestManager());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new C14078m6());
    }

    @Nullable
    /* renamed from: o0 */
    public static FragmentManager m9067o0(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    @Nullable
    public RequestManager getRequestManager() {
        return this.f15231g1;
    }

    @NonNull
    public RequestManagerTreeNode getRequestManagerTreeNode() {
        return this.f15228d1;
    }

    /* renamed from: k0 */
    public final void m9068k0(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f15229e1.add(supportRequestManagerFragment);
    }

    @NonNull
    /* renamed from: l0 */
    public Set<SupportRequestManagerFragment> m9069l0() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f15230f1;
        if (supportRequestManagerFragment == null) {
            return Collections.emptySet();
        }
        if (equals(supportRequestManagerFragment)) {
            return Collections.unmodifiableSet(this.f15229e1);
        }
        HashSet hashSet = new HashSet();
        for (SupportRequestManagerFragment supportRequestManagerFragment2 : this.f15230f1.m9069l0()) {
            if (m9072p0(supportRequestManagerFragment2.m9071n0())) {
                hashSet.add(supportRequestManagerFragment2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    /* renamed from: m0 */
    public C14078m6 m9070m0() {
        return this.f15227c1;
    }

    @Nullable
    /* renamed from: n0 */
    public final Fragment m9071n0() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f15232h1;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager m9067o0 = m9067o0(this);
        if (m9067o0 == null) {
            if (Log.isLoggable(f15226i1, 5)) {
                Log.w(f15226i1, "Unable to register fragment with root, ancestor detached");
            }
        } else {
            try {
                m9073q0(getContext(), m9067o0);
            } catch (IllegalStateException e) {
                if (Log.isLoggable(f15226i1, 5)) {
                    Log.w(f15226i1, "Unable to register fragment with root", e);
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f15227c1.m55557a();
        m9076t0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f15232h1 = null;
        m9076t0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f15227c1.m55558b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f15227c1.m55559c();
    }

    /* renamed from: p0 */
    public final boolean m9072p0(@NonNull Fragment fragment) {
        Fragment m9071n0 = m9071n0();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(m9071n0)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    /* renamed from: q0 */
    public final void m9073q0(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        m9076t0();
        SupportRequestManagerFragment m9063m = Glide.get(context).getRequestManagerRetriever().m9063m(fragmentManager);
        this.f15230f1 = m9063m;
        if (equals(m9063m)) {
            return;
        }
        this.f15230f1.m9068k0(this);
    }

    /* renamed from: r0 */
    public final void m9074r0(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f15229e1.remove(supportRequestManagerFragment);
    }

    /* renamed from: s0 */
    public void m9075s0(@Nullable Fragment fragment) {
        FragmentManager m9067o0;
        this.f15232h1 = fragment;
        if (fragment == null || fragment.getContext() == null || (m9067o0 = m9067o0(fragment)) == null) {
            return;
        }
        m9073q0(fragment.getContext(), m9067o0);
    }

    public void setRequestManager(@Nullable RequestManager requestManager) {
        this.f15231g1 = requestManager;
    }

    /* renamed from: t0 */
    public final void m9076t0() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f15230f1;
        if (supportRequestManagerFragment != null) {
            supportRequestManagerFragment.m9074r0(this);
            this.f15230f1 = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m9071n0() + "}";
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public SupportRequestManagerFragment(@NonNull C14078m6 c14078m6) {
        this.f15228d1 = new C2020a();
        this.f15229e1 = new HashSet();
        this.f15227c1 = c14078m6;
    }
}
