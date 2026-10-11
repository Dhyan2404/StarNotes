package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import com.bumptech.glide.load.engine.GlideException;
import com.sunia.HTREnginev2.j3j;
import java.io.PrintWriter;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.a */
/* loaded from: classes3.dex */
public final class C1122a extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.InterfaceC1108m {

    /* renamed from: I */
    public static final String f7671I = "FragmentManager";

    /* renamed from: E */
    public final FragmentManager f7672E;

    /* renamed from: F */
    public boolean f7673F;

    /* renamed from: G */
    public int f7674G;

    /* renamed from: H */
    public boolean f7675H;

    public C1122a(@NonNull FragmentManager fragmentManager) {
        super(fragmentManager.getFragmentFactory(), fragmentManager.getHost() != null ? fragmentManager.getHost().m4623b().getClassLoader() : null);
        this.f7674G = -1;
        this.f7675H = false;
        this.f7672E = fragmentManager;
    }

    @Override // androidx.fragment.app.FragmentManager.InterfaceC1108m
    /* renamed from: a */
    public boolean mo4754a(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f7616i) {
            return true;
        }
        this.f7672E.m4703i(this);
        return true;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return m4797h(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return m4797h(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.f7672E.m4691a0(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.f7672E.m4691a0(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.f7424x;
        if (fragmentManager == null || fragmentManager == this.f7672E) {
            return super.detach(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: e */
    public void mo4776e(int i, Fragment fragment, @Nullable String str, int i2) {
        super.mo4776e(i, fragment, str, i2);
        fragment.f7424x = this.f7672E;
    }

    /* renamed from: f */
    public void m4795f(int i) {
        if (this.f7616i) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f7610c.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.C1117a c1117a = this.f7610c.get(i2);
                Fragment fragment = c1117a.f7628b;
                if (fragment != null) {
                    fragment.f7422w += i;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + c1117a.f7628b + " to " + c1117a.f7628b.f7422w);
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public void m4796g() {
        int size = this.f7610c.size() - 1;
        while (size >= 0) {
            FragmentTransaction.C1117a c1117a = this.f7610c.get(size);
            if (c1117a.f7629c) {
                if (c1117a.f7627a == 8) {
                    c1117a.f7629c = false;
                    this.f7610c.remove(size - 1);
                    size--;
                } else {
                    int i = c1117a.f7628b.f7395Q;
                    c1117a.f7627a = 2;
                    c1117a.f7629c = false;
                    for (int i2 = size - 1; i2 >= 0; i2--) {
                        FragmentTransaction.C1117a c1117a2 = this.f7610c.get(i2);
                        if (c1117a2.f7629c && c1117a2.f7628b.f7395Q == i) {
                            this.f7610c.remove(i2);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbShortTitle() {
        return this.f7621n != 0 ? this.f7672E.getHost().m4623b().getText(this.f7621n) : this.f7622o;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.f7621n;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbTitle() {
        return this.f7619l != 0 ? this.f7672E.getHost().m4623b().getText(this.f7619l) : this.f7620m;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.f7619l;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.f7674G;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public String getName() {
        return this.f7618k;
    }

    /* renamed from: h */
    public int m4797h(boolean z) {
        if (this.f7673F) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new j3j("FragmentManager"));
            m4798i(GlideException.C1935a.f14609h, printWriter);
            printWriter.close();
        }
        this.f7673F = true;
        if (this.f7616i) {
            this.f7674G = this.f7672E.m4712l();
        } else {
            this.f7674G = -1;
        }
        this.f7672E.m4685X(this, z);
        return this.f7674G;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.f7424x;
        if (fragmentManager == null || fragmentManager == this.f7672E) {
            return super.hide(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: i */
    public void m4798i(String str, PrintWriter printWriter) {
        m4799j(str, printWriter, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.f7610c.isEmpty();
    }

    /* renamed from: j */
    public void m4799j(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f7618k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f7674G);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f7673F);
            if (this.f7615h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f7615h));
            }
            if (this.f7611d != 0 || this.f7612e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f7611d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f7612e));
            }
            if (this.f7613f != 0 || this.f7614g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f7613f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f7614g));
            }
            if (this.f7619l != 0 || this.f7620m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f7619l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f7620m);
            }
            if (this.f7621n != 0 || this.f7622o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f7621n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f7622o);
            }
        }
        if (this.f7610c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f7610c.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.C1117a c1117a = this.f7610c.get(i);
            switch (c1117a.f7627a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + c1117a.f7627a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c1117a.f7628b);
            if (z) {
                if (c1117a.f7630d != 0 || c1117a.f7631e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c1117a.f7630d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c1117a.f7631e));
                }
                if (c1117a.f7632f != 0 || c1117a.f7633g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c1117a.f7632f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c1117a.f7633g));
                }
            }
        }
    }

    /* renamed from: k */
    public void m4800k() {
        int size = this.f7610c.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.C1117a c1117a = this.f7610c.get(i);
            Fragment fragment = c1117a.f7628b;
            if (fragment != null) {
                fragment.f7414r = this.f7675H;
                fragment.m4579h0(false);
                fragment.m4577g0(this.f7615h);
                fragment.m4583j0(this.f7623p, this.f7624q);
            }
            switch (c1117a.f7627a) {
                case 1:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4708j1(fragment, false);
                    this.f7672E.m4706j(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c1117a.f7627a);
                case 3:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4682V0(fragment);
                    break;
                case 4:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4745y0(fragment);
                    break;
                case 5:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4708j1(fragment, false);
                    this.f7672E.m4723o1(fragment);
                    break;
                case 6:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4740w(fragment);
                    break;
                case 7:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4708j1(fragment, false);
                    this.f7672E.m4718n(fragment);
                    break;
                case 8:
                    this.f7672E.m4714l1(fragment);
                    break;
                case 9:
                    this.f7672E.m4714l1(null);
                    break;
                case 10:
                    this.f7672E.m4711k1(fragment, c1117a.f7635i);
                    break;
            }
        }
    }

    /* renamed from: l */
    public void m4801l() {
        for (int size = this.f7610c.size() - 1; size >= 0; size--) {
            FragmentTransaction.C1117a c1117a = this.f7610c.get(size);
            Fragment fragment = c1117a.f7628b;
            if (fragment != null) {
                fragment.f7414r = this.f7675H;
                fragment.m4579h0(true);
                fragment.m4577g0(FragmentManager.m4637e1(this.f7615h));
                fragment.m4583j0(this.f7624q, this.f7623p);
            }
            switch (c1117a.f7627a) {
                case 1:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4708j1(fragment, true);
                    this.f7672E.m4682V0(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c1117a.f7627a);
                case 3:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4706j(fragment);
                    break;
                case 4:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4723o1(fragment);
                    break;
                case 5:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4708j1(fragment, true);
                    this.f7672E.m4745y0(fragment);
                    break;
                case 6:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4718n(fragment);
                    break;
                case 7:
                    fragment.m4573e0(c1117a.f7630d, c1117a.f7631e, c1117a.f7632f, c1117a.f7633g);
                    this.f7672E.m4708j1(fragment, true);
                    this.f7672E.m4740w(fragment);
                    break;
                case 8:
                    this.f7672E.m4714l1(null);
                    break;
                case 9:
                    this.f7672E.m4714l1(fragment);
                    break;
                case 10:
                    this.f7672E.m4711k1(fragment, c1117a.f7634h);
                    break;
            }
        }
    }

    /* renamed from: m */
    public Fragment m4802m(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.f7610c.size()) {
            FragmentTransaction.C1117a c1117a = this.f7610c.get(i);
            int i2 = c1117a.f7627a;
            if (i2 != 1) {
                if (i2 == 2) {
                    Fragment fragment3 = c1117a.f7628b;
                    int i3 = fragment3.f7395Q;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment4 = arrayList.get(size);
                        if (fragment4.f7395Q == i3) {
                            if (fragment4 == fragment3) {
                                z = true;
                            } else {
                                if (fragment4 == fragment2) {
                                    this.f7610c.add(i, new FragmentTransaction.C1117a(9, fragment4, true));
                                    i++;
                                    fragment2 = null;
                                }
                                FragmentTransaction.C1117a c1117a2 = new FragmentTransaction.C1117a(3, fragment4, true);
                                c1117a2.f7630d = c1117a.f7630d;
                                c1117a2.f7632f = c1117a.f7632f;
                                c1117a2.f7631e = c1117a.f7631e;
                                c1117a2.f7633g = c1117a.f7633g;
                                this.f7610c.add(i, c1117a2);
                                arrayList.remove(fragment4);
                                i++;
                            }
                        }
                    }
                    if (z) {
                        this.f7610c.remove(i);
                        i--;
                    } else {
                        c1117a.f7627a = 1;
                        c1117a.f7629c = true;
                        arrayList.add(fragment3);
                    }
                } else if (i2 == 3 || i2 == 6) {
                    arrayList.remove(c1117a.f7628b);
                    Fragment fragment5 = c1117a.f7628b;
                    if (fragment5 == fragment2) {
                        this.f7610c.add(i, new FragmentTransaction.C1117a(9, fragment5));
                        i++;
                        fragment2 = null;
                    }
                } else if (i2 != 7) {
                    if (i2 == 8) {
                        this.f7610c.add(i, new FragmentTransaction.C1117a(9, fragment2, true));
                        c1117a.f7629c = true;
                        i++;
                        fragment2 = c1117a.f7628b;
                    }
                }
                i++;
            }
            arrayList.add(c1117a.f7628b);
            i++;
        }
        return fragment2;
    }

    /* renamed from: n */
    public void m4803n() {
        if (this.f7626s != null) {
            for (int i = 0; i < this.f7626s.size(); i++) {
                this.f7626s.get(i).run();
            }
            this.f7626s = null;
        }
    }

    /* renamed from: o */
    public Fragment m4804o(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f7610c.size() - 1; size >= 0; size--) {
            FragmentTransaction.C1117a c1117a = this.f7610c.get(size);
            int i = c1117a.f7627a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c1117a.f7628b;
                            break;
                        case 10:
                            c1117a.f7635i = c1117a.f7634h;
                            break;
                    }
                }
                arrayList.add(c1117a.f7628b);
            }
            arrayList.remove(c1117a.f7628b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.f7424x;
        if (fragmentManager == null || fragmentManager == this.f7672E) {
            return super.remove(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.f7424x != this.f7672E) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f7672E);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.f7399e > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state != Lifecycle.State.DESTROYED) {
            return super.setMaxLifecycle(fragment, state);
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment == null || (fragmentManager = fragment.f7424x) == null || fragmentManager == this.f7672E) {
            return super.setPrimaryNavigationFragment(fragment);
        }
        throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.f7424x;
        if (fragmentManager == null || fragmentManager == this.f7672E) {
            return super.show(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f7674G >= 0) {
            sb.append(" #");
            sb.append(this.f7674G);
        }
        if (this.f7618k != null) {
            sb.append(" ");
            sb.append(this.f7618k);
        }
        sb.append("}");
        return sb.toString();
    }

    public C1122a(@NonNull C1122a c1122a) {
        super(c1122a.f7672E.getFragmentFactory(), c1122a.f7672E.getHost() != null ? c1122a.f7672E.getHost().m4623b().getClassLoader() : null, c1122a);
        this.f7674G = -1;
        this.f7675H = false;
        this.f7672E = c1122a.f7672E;
        this.f7673F = c1122a.f7673F;
        this.f7674G = c1122a.f7674G;
        this.f7675H = c1122a.f7675H;
    }
}
