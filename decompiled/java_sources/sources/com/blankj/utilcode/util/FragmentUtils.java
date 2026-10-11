package com.blankj.utilcode.util;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class FragmentUtils {

    /* renamed from: a */
    public static final int f13746a = 1;

    /* renamed from: b */
    public static final int f13747b = 2;

    /* renamed from: c */
    public static final int f13748c = 4;

    /* renamed from: d */
    public static final int f13749d = 8;

    /* renamed from: e */
    public static final int f13750e = 16;

    /* renamed from: f */
    public static final int f13751f = 32;

    /* renamed from: g */
    public static final int f13752g = 64;

    /* renamed from: h */
    public static final String f13753h = "args_id";

    /* renamed from: i */
    public static final String f13754i = "args_is_hide";

    /* renamed from: j */
    public static final String f13755j = "args_is_add_stack";

    /* renamed from: k */
    public static final String f13756k = "args_tag";

    /* loaded from: classes3.dex */
    public static class FragmentNode {

        /* renamed from: a */
        public final Fragment f13757a;

        /* renamed from: b */
        public final List<FragmentNode> f13758b;

        public FragmentNode(Fragment fragment, List<FragmentNode> list) {
            this.f13757a = fragment;
            this.f13758b = list;
        }

        public Fragment getFragment() {
            return this.f13757a;
        }

        public List<FragmentNode> getNext() {
            return this.f13758b;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f13757a.getClass().getSimpleName());
            sb.append("->");
            List<FragmentNode> list = this.f13758b;
            sb.append((list == null || list.isEmpty()) ? "no child" : this.f13758b.toString());
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public interface OnBackClickListener {
        boolean onBackClick();
    }

    /* renamed from: com.blankj.utilcode.util.FragmentUtils$a */
    /* loaded from: classes3.dex */
    public static class C1815a {

        /* renamed from: a */
        public final int f13759a;

        /* renamed from: b */
        public final boolean f13760b;

        /* renamed from: c */
        public final boolean f13761c;

        /* renamed from: d */
        public final String f13762d;

        public C1815a(int i, boolean z, boolean z2) {
            this(i, null, z, z2);
        }

        public C1815a(int i, String str, boolean z, boolean z2) {
            this.f13759a = i;
            this.f13762d = str;
            this.f13760b = z;
            this.f13761c = z2;
        }
    }

    public FragmentUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static void m8089a(FragmentTransaction fragmentTransaction, int i, int i2, int i3, int i4) {
        fragmentTransaction.setCustomAnimations(i, i2, i3, i4);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i) {
        add(fragmentManager, fragment, i, (String) null, false, false);
    }

    /* renamed from: b */
    public static void m8090b(FragmentTransaction fragmentTransaction, View... viewArr) {
        for (View view : viewArr) {
            fragmentTransaction.addSharedElement(view, view.getTransitionName());
        }
    }

    /* renamed from: c */
    public static List<FragmentNode> m8091c(@NonNull FragmentManager fragmentManager, List<FragmentNode> list) {
        List<Fragment> fragments = getFragments(fragmentManager);
        for (int size = fragments.size() - 1; size >= 0; size--) {
            Fragment fragment = fragments.get(size);
            if (fragment != null) {
                list.add(new FragmentNode(fragment, m8091c(fragment.getChildFragmentManager(), new ArrayList())));
            }
        }
        return list;
    }

    /* renamed from: d */
    public static List<FragmentNode> m8092d(@NonNull FragmentManager fragmentManager, List<FragmentNode> list) {
        Bundle arguments;
        List<Fragment> fragments = getFragments(fragmentManager);
        for (int size = fragments.size() - 1; size >= 0; size--) {
            Fragment fragment = fragments.get(size);
            if (fragment != null && (arguments = fragment.getArguments()) != null && arguments.getBoolean(f13755j)) {
                list.add(new FragmentNode(fragment, m8092d(fragment.getChildFragmentManager(), new ArrayList())));
            }
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchBackPress(@NonNull Fragment fragment) {
        return fragment.isResumed() && fragment.isVisible() && fragment.getUserVisibleHint() && (fragment instanceof OnBackClickListener) && ((OnBackClickListener) fragment).onBackClick();
    }

    /* renamed from: e */
    public static C1815a m8093e(Fragment fragment) {
        Bundle arguments = fragment.getArguments();
        if (arguments == null) {
            arguments = Bundle.EMPTY;
        }
        return new C1815a(arguments.getInt(f13753h, fragment.getId()), arguments.getBoolean(f13754i), arguments.getBoolean(f13755j));
    }

    /* renamed from: f */
    public static Fragment m8094f(@NonNull FragmentManager fragmentManager, Fragment fragment, boolean z) {
        List<Fragment> fragments = getFragments(fragmentManager);
        for (int size = fragments.size() - 1; size >= 0; size--) {
            Fragment fragment2 = fragments.get(size);
            if (fragment2 != null) {
                if (!z) {
                    return m8094f(fragment2.getChildFragmentManager(), fragment2, false);
                }
                Bundle arguments = fragment2.getArguments();
                if (arguments != null && arguments.getBoolean(f13755j)) {
                    return m8094f(fragment2.getChildFragmentManager(), fragment2, true);
                }
            }
        }
        return fragment;
    }

    public static Fragment findFragment(@NonNull FragmentManager fragmentManager, Class<? extends Fragment> cls) {
        return fragmentManager.findFragmentByTag(cls.getName());
    }

    /* renamed from: g */
    public static Fragment m8095g(@NonNull FragmentManager fragmentManager, Fragment fragment, boolean z) {
        List<Fragment> fragments = getFragments(fragmentManager);
        for (int size = fragments.size() - 1; size >= 0; size--) {
            Fragment fragment2 = fragments.get(size);
            if (fragment2 != null && fragment2.isResumed() && fragment2.isVisible() && fragment2.getUserVisibleHint()) {
                if (!z) {
                    return m8095g(fragment2.getChildFragmentManager(), fragment2, false);
                }
                Bundle arguments = fragment2.getArguments();
                if (arguments != null && arguments.getBoolean(f13755j)) {
                    return m8095g(fragment2.getChildFragmentManager(), fragment2, true);
                }
            }
        }
        return fragment;
    }

    public static List<FragmentNode> getAllFragments(@NonNull FragmentManager fragmentManager) {
        return m8091c(fragmentManager, new ArrayList());
    }

    public static List<FragmentNode> getAllFragmentsInStack(@NonNull FragmentManager fragmentManager) {
        return m8092d(fragmentManager, new ArrayList());
    }

    public static List<Fragment> getFragments(@NonNull FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        return (fragments == null || fragments.isEmpty()) ? Collections.emptyList() : fragments;
    }

    public static List<Fragment> getFragmentsInStack(@NonNull FragmentManager fragmentManager) {
        Bundle arguments;
        List<Fragment> fragments = getFragments(fragmentManager);
        ArrayList arrayList = new ArrayList();
        for (Fragment fragment : fragments) {
            if (fragment != null && (arguments = fragment.getArguments()) != null && arguments.getBoolean(f13755j)) {
                arrayList.add(fragment);
            }
        }
        return arrayList;
    }

    public static String getSimpleName(Fragment fragment) {
        return fragment == null ? "null" : fragment.getClass().getSimpleName();
    }

    public static Fragment getTop(@NonNull FragmentManager fragmentManager) {
        return m8094f(fragmentManager, null, false);
    }

    public static Fragment getTopInStack(@NonNull FragmentManager fragmentManager) {
        return m8094f(fragmentManager, null, true);
    }

    public static Fragment getTopShow(@NonNull FragmentManager fragmentManager) {
        return m8095g(fragmentManager, null, false);
    }

    public static Fragment getTopShowInStack(@NonNull FragmentManager fragmentManager) {
        return m8095g(fragmentManager, null, true);
    }

    /* renamed from: h */
    public static void m8096h(int i, @NonNull FragmentManager fragmentManager, FragmentTransaction fragmentTransaction, Fragment fragment, Fragment... fragmentArr) {
        if (fragment != null && fragment.isRemoving()) {
            Log.e("FragmentUtils", fragment.getClass().getName() + " is isRemoving");
            return;
        }
        int i2 = 0;
        if (i == 1) {
            int length = fragmentArr.length;
            while (i2 < length) {
                Fragment fragment2 = fragmentArr[i2];
                Bundle arguments = fragment2.getArguments();
                if (arguments == null) {
                    return;
                }
                String string = arguments.getString(f13756k, fragment2.getClass().getName());
                Fragment findFragmentByTag = fragmentManager.findFragmentByTag(string);
                if (findFragmentByTag != null && findFragmentByTag.isAdded()) {
                    fragmentTransaction.remove(findFragmentByTag);
                }
                fragmentTransaction.add(arguments.getInt(f13753h), fragment2, string);
                if (arguments.getBoolean(f13754i)) {
                    fragmentTransaction.hide(fragment2);
                }
                if (arguments.getBoolean(f13755j)) {
                    fragmentTransaction.addToBackStack(string);
                }
                i2++;
            }
        } else if (i == 2) {
            int length2 = fragmentArr.length;
            while (i2 < length2) {
                fragmentTransaction.show(fragmentArr[i2]);
                i2++;
            }
        } else if (i == 4) {
            int length3 = fragmentArr.length;
            while (i2 < length3) {
                fragmentTransaction.hide(fragmentArr[i2]);
                i2++;
            }
        } else if (i == 8) {
            fragmentTransaction.show(fragment);
            int length4 = fragmentArr.length;
            while (i2 < length4) {
                Fragment fragment3 = fragmentArr[i2];
                if (fragment3 != fragment) {
                    fragmentTransaction.hide(fragment3);
                }
                i2++;
            }
        } else if (i == 16) {
            Bundle arguments2 = fragmentArr[0].getArguments();
            if (arguments2 == null) {
                return;
            }
            String string2 = arguments2.getString(f13756k, fragmentArr[0].getClass().getName());
            fragmentTransaction.replace(arguments2.getInt(f13753h), fragmentArr[0], string2);
            if (arguments2.getBoolean(f13755j)) {
                fragmentTransaction.addToBackStack(string2);
            }
        } else if (i == 32) {
            int length5 = fragmentArr.length;
            while (i2 < length5) {
                Fragment fragment4 = fragmentArr[i2];
                if (fragment4 != fragment) {
                    fragmentTransaction.remove(fragment4);
                }
                i2++;
            }
        } else if (i == 64) {
            int length6 = fragmentArr.length - 1;
            while (true) {
                if (length6 < 0) {
                    break;
                }
                Fragment fragment5 = fragmentArr[length6];
                if (fragment5 != fragmentArr[0]) {
                    fragmentTransaction.remove(fragment5);
                    length6--;
                } else if (fragment != null) {
                    fragmentTransaction.remove(fragment5);
                }
            }
        }
        fragmentTransaction.commitAllowingStateLoss();
        fragmentManager.executePendingTransactions();
    }

    public static void hide(@NonNull Fragment fragment) {
        m8099k(fragment, true);
        m8097i(4, fragment.getFragmentManager(), null, fragment);
    }

    /* renamed from: i */
    public static void m8097i(int i, @Nullable FragmentManager fragmentManager, Fragment fragment, Fragment... fragmentArr) {
        if (fragmentManager == null) {
            return;
        }
        m8096h(i, fragmentManager, fragmentManager.beginTransaction(), fragment, fragmentArr);
    }

    /* renamed from: j */
    public static void m8098j(Fragment fragment, C1815a c1815a) {
        Bundle arguments = fragment.getArguments();
        if (arguments == null) {
            arguments = new Bundle();
            fragment.setArguments(arguments);
        }
        arguments.putInt(f13753h, c1815a.f13759a);
        arguments.putBoolean(f13754i, c1815a.f13760b);
        arguments.putBoolean(f13755j, c1815a.f13761c);
        arguments.putString(f13756k, c1815a.f13762d);
    }

    /* renamed from: k */
    public static void m8099k(Fragment fragment, boolean z) {
        Bundle arguments = fragment.getArguments();
        if (arguments == null) {
            arguments = new Bundle();
            fragment.setArguments(arguments);
        }
        arguments.putBoolean(f13754i, z);
    }

    public static void pop(@NonNull FragmentManager fragmentManager) {
        pop(fragmentManager, true);
    }

    public static void popAll(@NonNull FragmentManager fragmentManager) {
        popAll(fragmentManager, true);
    }

    public static void popTo(@NonNull FragmentManager fragmentManager, Class<? extends Fragment> cls, boolean z) {
        popTo(fragmentManager, cls, z, true);
    }

    public static void remove(@NonNull Fragment fragment) {
        m8097i(32, fragment.getFragmentManager(), null, fragment);
    }

    public static void removeAll(@NonNull FragmentManager fragmentManager) {
        m8097i(32, fragmentManager, null, (Fragment[]) getFragments(fragmentManager).toArray(new Fragment[0]));
    }

    public static void removeTo(@NonNull Fragment fragment, boolean z) {
        m8097i(64, fragment.getFragmentManager(), z ? fragment : null, fragment);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2) {
        replace(fragment, fragment2, (String) null, false);
    }

    public static void setBackground(@NonNull Fragment fragment, Drawable drawable) {
        View view = fragment.getView();
        if (view == null) {
            return;
        }
        view.setBackground(drawable);
    }

    public static void setBackgroundColor(@NonNull Fragment fragment, @ColorInt int i) {
        View view = fragment.getView();
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public static void setBackgroundResource(@NonNull Fragment fragment, @DrawableRes int i) {
        View view = fragment.getView();
        if (view != null) {
            view.setBackgroundResource(i);
        }
    }

    public static void show(@NonNull Fragment fragment) {
        m8099k(fragment, false);
        m8097i(2, fragment.getFragmentManager(), null, fragment);
    }

    public static void showHide(@NonNull Fragment fragment, @NonNull Fragment fragment2) {
        showHide(fragment, (List<Fragment>) Collections.singletonList(fragment2));
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z) {
        add(fragmentManager, fragment, i, (String) null, z, false);
    }

    public static Fragment findFragment(@NonNull FragmentManager fragmentManager, @NonNull String str) {
        return fragmentManager.findFragmentByTag(str);
    }

    public static void pop(@NonNull FragmentManager fragmentManager, boolean z) {
        if (z) {
            fragmentManager.popBackStackImmediate();
        } else {
            fragmentManager.popBackStack();
        }
    }

    public static void popAll(@NonNull FragmentManager fragmentManager, boolean z) {
        if (fragmentManager.getBackStackEntryCount() > 0) {
            FragmentManager.BackStackEntry backStackEntryAt = fragmentManager.getBackStackEntryAt(0);
            if (z) {
                fragmentManager.popBackStackImmediate(backStackEntryAt.getId(), 1);
            } else {
                fragmentManager.popBackStack(backStackEntryAt.getId(), 1);
            }
        }
    }

    public static void popTo(@NonNull FragmentManager fragmentManager, Class<? extends Fragment> cls, boolean z, boolean z2) {
        if (z2) {
            fragmentManager.popBackStackImmediate(cls.getName(), z ? 1 : 0);
        } else {
            fragmentManager.popBackStack(cls.getName(), z ? 1 : 0);
        }
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, boolean z) {
        replace(fragment, fragment2, (String) null, z);
    }

    public static void showHide(int i, @NonNull Fragment... fragmentArr) {
        showHide(fragmentArr[i], fragmentArr);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, boolean z2) {
        add(fragmentManager, fragment, i, (String) null, z, z2);
    }

    public static void hide(@NonNull FragmentManager fragmentManager) {
        List<Fragment> fragments = getFragments(fragmentManager);
        Iterator<Fragment> it2 = fragments.iterator();
        while (it2.hasNext()) {
            m8099k(it2.next(), true);
        }
        m8097i(4, fragmentManager, null, (Fragment[]) fragments.toArray(new Fragment[0]));
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2) {
        replace(fragment, fragment2, (String) null, false, i, i2, 0, 0);
    }

    public static void show(@NonNull FragmentManager fragmentManager) {
        List<Fragment> fragments = getFragments(fragmentManager);
        Iterator<Fragment> it2 = fragments.iterator();
        while (it2.hasNext()) {
            m8099k(it2.next(), false);
        }
        m8097i(2, fragmentManager, null, (Fragment[]) fragments.toArray(new Fragment[0]));
    }

    public static void showHide(@NonNull Fragment fragment, @NonNull Fragment... fragmentArr) {
        showHide(fragment, (List<Fragment>) Arrays.asList(fragmentArr));
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        add(fragmentManager, fragment, i, null, false, i2, i3, 0, 0);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, boolean z, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2) {
        replace(fragment, fragment2, (String) null, z, i, i2, 0, 0);
    }

    public static void showHide(int i, @NonNull List<Fragment> list) {
        showHide(list.get(i), list);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        add(fragmentManager, fragment, i, null, z, i2, i3, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean dispatchBackPress(@NonNull FragmentManager fragmentManager) {
        List<Fragment> fragments = getFragments(fragmentManager);
        if (fragments != null && !fragments.isEmpty()) {
            for (int size = fragments.size() - 1; size >= 0; size--) {
                Fragment fragment = fragments.get(size);
                if (fragment != 0 && fragment.isResumed() && fragment.isVisible() && fragment.getUserVisibleHint() && (fragment instanceof OnBackClickListener) && ((OnBackClickListener) fragment).onBackClick()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        replace(fragment, fragment2, (String) null, false, i, i2, i3, i4);
    }

    public static void showHide(@NonNull Fragment fragment, @NonNull List<Fragment> list) {
        Iterator<Fragment> it2 = list.iterator();
        while (true) {
            boolean z = false;
            if (it2.hasNext()) {
                Fragment next = it2.next();
                if (next != fragment) {
                    z = true;
                }
                m8099k(next, z);
            } else {
                m8097i(8, fragment.getFragmentManager(), fragment, (Fragment[]) list.toArray(new Fragment[0]));
                return;
            }
        }
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        add(fragmentManager, fragment, i, null, false, i2, i3, i4, i5);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, boolean z, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        replace(fragment, fragment2, (String) null, z, i, i2, i3, i4);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        add(fragmentManager, fragment, i, null, z, i2, i3, i4, i5);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, View... viewArr) {
        replace(fragment, fragment2, (String) null, false, viewArr);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, @NonNull View... viewArr) {
        add(fragmentManager, fragment, i, (String) null, false, viewArr);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, boolean z, View... viewArr) {
        replace(fragment, fragment2, (String) null, z, viewArr);
    }

    public static void showHide(@NonNull Fragment fragment, @NonNull Fragment fragment2, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        showHide(fragment, (List<Fragment>) Collections.singletonList(fragment2), i, i2, i3, i4);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, @NonNull View... viewArr) {
        add(fragmentManager, fragment, i, (String) null, z, viewArr);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i) {
        replace(fragmentManager, fragment, i, (String) null, false);
    }

    public static void showHide(int i, @NonNull List<Fragment> list, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        showHide(list.get(i), list, i2, i3, i4, i5);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull List<Fragment> list, @IdRes int i, int i2) {
        add(fragmentManager, (Fragment[]) list.toArray(new Fragment[0]), i, (String[]) null, i2);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z) {
        replace(fragmentManager, fragment, i, (String) null, z);
    }

    public static void showHide(@NonNull Fragment fragment, @NonNull List<Fragment> list, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        Iterator<Fragment> it2 = list.iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                break;
            }
            Fragment next = it2.next();
            if (next != fragment) {
                z = true;
            }
            m8099k(next, z);
        }
        FragmentManager fragmentManager = fragment.getFragmentManager();
        if (fragmentManager != null) {
            FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            m8089a(beginTransaction, i, i2, i3, i4);
            m8096h(8, fragmentManager, beginTransaction, fragment, (Fragment[]) list.toArray(new Fragment[0]));
        }
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment[] fragmentArr, @IdRes int i, int i2) {
        add(fragmentManager, fragmentArr, i, (String[]) null, i2);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        replace(fragmentManager, fragment, i, null, false, i2, i3, 0, 0);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str) {
        add(fragmentManager, fragment, i, str, false, false);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        replace(fragmentManager, fragment, i, null, z, i2, i3, 0, 0);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z) {
        add(fragmentManager, fragment, i, str, z, false);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        replace(fragmentManager, fragment, i, null, false, i2, i3, i4, i5);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, boolean z2) {
        m8098j(fragment, new C1815a(i, str, z, z2));
        m8097i(1, fragmentManager, null, fragment);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        replace(fragmentManager, fragment, i, null, z, i2, i3, i4, i5);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, View... viewArr) {
        replace(fragmentManager, fragment, i, (String) null, false, viewArr);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        add(fragmentManager, fragment, i, str, false, i2, i3, 0, 0);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, boolean z, View... viewArr) {
        replace(fragmentManager, fragment, i, (String) null, z, viewArr);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        add(fragmentManager, fragment, i, str, z, i2, i3, 0, 0);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str) {
        replace(fragment, fragment2, str, false);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        add(fragmentManager, fragment, i, str, false, i2, i3, i4, i5);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, boolean z) {
        FragmentManager fragmentManager = fragment.getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        replace(fragmentManager, fragment2, m8093e(fragment).f13759a, str, z);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        m8098j(fragment, new C1815a(i, str, false, z));
        m8089a(beginTransaction, i2, i3, i4, i5);
        m8096h(1, fragmentManager, beginTransaction, null, fragment);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2) {
        replace(fragment, fragment2, str, false, i, i2, 0, 0);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, boolean z, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2) {
        replace(fragment, fragment2, str, z, i, i2, 0, 0);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, @NonNull View... viewArr) {
        add(fragmentManager, fragment, i, str, false, viewArr);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        replace(fragment, fragment2, str, false, i, i2, i3, i4);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, @NonNull View... viewArr) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        m8098j(fragment, new C1815a(i, str, false, z));
        m8090b(beginTransaction, viewArr);
        m8096h(1, fragmentManager, beginTransaction, null, fragment);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, boolean z, @AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        FragmentManager fragmentManager = fragment.getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        replace(fragmentManager, fragment2, m8093e(fragment).f13759a, str, z, i, i2, i3, i4);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, View... viewArr) {
        replace(fragment, fragment2, str, false, viewArr);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull List<Fragment> list, @IdRes int i, String[] strArr, int i2) {
        add(fragmentManager, (Fragment[]) list.toArray(new Fragment[0]), i, strArr, i2);
    }

    public static void replace(@NonNull Fragment fragment, @NonNull Fragment fragment2, String str, boolean z, View... viewArr) {
        FragmentManager fragmentManager = fragment.getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        replace(fragmentManager, fragment2, m8093e(fragment).f13759a, str, z, viewArr);
    }

    public static void add(@NonNull FragmentManager fragmentManager, @NonNull Fragment[] fragmentArr, @IdRes int i, String[] strArr, int i2) {
        if (strArr == null) {
            int length = fragmentArr.length;
            int i3 = 0;
            while (i3 < length) {
                m8098j(fragmentArr[i3], new C1815a(i, null, i2 != i3, false));
                i3++;
            }
        } else {
            int length2 = fragmentArr.length;
            int i4 = 0;
            while (i4 < length2) {
                m8098j(fragmentArr[i4], new C1815a(i, strArr[i4], i2 != i4, false));
                i4++;
            }
        }
        m8097i(1, fragmentManager, null, fragmentArr);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str) {
        replace(fragmentManager, fragment, i, str, false);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        m8098j(fragment, new C1815a(i, str, false, z));
        m8096h(16, fragmentManager, beginTransaction, null, fragment);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        replace(fragmentManager, fragment, i, str, false, i2, i3, 0, 0);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3) {
        replace(fragmentManager, fragment, i, str, z, i2, i3, 0, 0);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        replace(fragmentManager, fragment, i, str, false, i2, i3, i4, i5);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        m8098j(fragment, new C1815a(i, str, false, z));
        m8089a(beginTransaction, i2, i3, i4, i5);
        m8096h(16, fragmentManager, beginTransaction, null, fragment);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, View... viewArr) {
        replace(fragmentManager, fragment, i, str, false, viewArr);
    }

    public static void replace(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @IdRes int i, String str, boolean z, View... viewArr) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        m8098j(fragment, new C1815a(i, str, false, z));
        m8090b(beginTransaction, viewArr);
        m8096h(16, fragmentManager, beginTransaction, null, fragment);
    }
}
