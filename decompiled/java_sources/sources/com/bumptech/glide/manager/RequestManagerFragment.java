package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.sunia.HTREnginev2.C14078m6;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* loaded from: classes3.dex */
public class RequestManagerFragment extends Fragment {

    /* renamed from: k */
    public static final String f15199k = "RMFragment";

    /* renamed from: e */
    public final C14078m6 f15200e;

    /* renamed from: f */
    public final RequestManagerTreeNode f15201f;

    /* renamed from: g */
    public final Set<RequestManagerFragment> f15202g;

    /* renamed from: h */
    @Nullable
    public RequestManager f15203h;

    /* renamed from: i */
    @Nullable
    public RequestManagerFragment f15204i;

    /* renamed from: j */
    @Nullable
    public Fragment f15205j;

    /* renamed from: com.bumptech.glide.manager.RequestManagerFragment$a */
    /* loaded from: classes3.dex */
    public class C2018a implements RequestManagerTreeNode {
        public C2018a() {
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<RequestManager> getDescendants() {
            Set<RequestManagerFragment> m9042b = RequestManagerFragment.this.m9042b();
            HashSet hashSet = new HashSet(m9042b.size());
            for (RequestManagerFragment requestManagerFragment : m9042b) {
                if (requestManagerFragment.getRequestManager() != null) {
                    hashSet.add(requestManagerFragment.getRequestManager());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new C14078m6());
    }

    /* renamed from: a */
    public final void m9041a(RequestManagerFragment requestManagerFragment) {
        this.f15202g.add(requestManagerFragment);
    }

    @NonNull
    @TargetApi(17)
    /* renamed from: b */
    public Set<RequestManagerFragment> m9042b() {
        if (equals(this.f15204i)) {
            return Collections.unmodifiableSet(this.f15202g);
        }
        if (this.f15204i == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.f15204i.m9042b()) {
            if (m9045e(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    /* renamed from: c */
    public C14078m6 m9043c() {
        return this.f15200e;
    }

    @Nullable
    @TargetApi(17)
    /* renamed from: d */
    public final Fragment m9044d() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f15205j;
    }

    @TargetApi(17)
    /* renamed from: e */
    public final boolean m9045e(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    /* renamed from: f */
    public final void m9046f(@NonNull Activity activity) {
        m9049i();
        RequestManagerFragment m9061k = Glide.get(activity).getRequestManagerRetriever().m9061k(activity);
        this.f15204i = m9061k;
        if (equals(m9061k)) {
            return;
        }
        this.f15204i.m9041a(this);
    }

    /* renamed from: g */
    public final void m9047g(RequestManagerFragment requestManagerFragment) {
        this.f15202g.remove(requestManagerFragment);
    }

    @Nullable
    public RequestManager getRequestManager() {
        return this.f15203h;
    }

    @NonNull
    public RequestManagerTreeNode getRequestManagerTreeNode() {
        return this.f15201f;
    }

    /* renamed from: h */
    public void m9048h(@Nullable Fragment fragment) {
        this.f15205j = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m9046f(fragment.getActivity());
    }

    /* renamed from: i */
    public final void m9049i() {
        RequestManagerFragment requestManagerFragment = this.f15204i;
        if (requestManagerFragment != null) {
            requestManagerFragment.m9047g(this);
            this.f15204i = null;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m9046f(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable(f15199k, 5)) {
                Log.w(f15199k, "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f15200e.m55557a();
        m9049i();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m9049i();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f15200e.m55558b();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f15200e.m55559c();
    }

    public void setRequestManager(@Nullable RequestManager requestManager) {
        this.f15203h = requestManager;
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m9044d() + "}";
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public RequestManagerFragment(@NonNull C14078m6 c14078m6) {
        this.f15201f = new C2018a();
        this.f15202g = new HashSet();
        this.f15200e = c14078m6;
    }
}
