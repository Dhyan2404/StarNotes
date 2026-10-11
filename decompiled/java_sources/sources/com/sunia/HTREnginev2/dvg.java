package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.motion.MotionUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes3.dex */
public class dvg {

    /* renamed from: e */
    public static final String f68294e = "FragmentManager";

    /* renamed from: a */
    public final ArrayList<Fragment> f68295a = new ArrayList<>();

    /* renamed from: b */
    public final HashMap<String, C1126e> f68296b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, Bundle> f68297c = new HashMap<>();

    /* renamed from: d */
    public vug f68298d;

    @Nullable
    /* renamed from: A */
    public ArrayList<String> m53815A() {
        synchronized (this.f68295a) {
            if (this.f68295a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f68295a.size());
            Iterator<Fragment> it2 = this.f68295a.iterator();
            while (it2.hasNext()) {
                Fragment next = it2.next();
                arrayList.add(next.f7404j);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f7404j + "): " + next);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: B */
    public void m53816B(@NonNull vug vugVar) {
        this.f68298d = vugVar;
    }

    @Nullable
    /* renamed from: C */
    public Bundle m53817C(@NonNull String str, @Nullable Bundle bundle) {
        return bundle != null ? this.f68297c.put(str, bundle) : this.f68297c.remove(str);
    }

    /* renamed from: a */
    public void m53818a(@NonNull Fragment fragment) {
        if (this.f68295a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f68295a) {
            this.f68295a.add(fragment);
        }
        fragment.f7411p = true;
    }

    /* renamed from: b */
    public void m53819b() {
        this.f68296b.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: c */
    public boolean m53820c(@NonNull String str) {
        return this.f68296b.get(str) != null;
    }

    /* renamed from: d */
    public void m53821d(int i) {
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null) {
                c1126e.m4844t(i);
            }
        }
    }

    /* renamed from: e */
    public void m53822e(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        String str2 = str + MapUtils.f104930a;
        if (!this.f68296b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C1126e c1126e : this.f68296b.values()) {
                printWriter.print(str);
                if (c1126e != null) {
                    Fragment m4835k = c1126e.m4835k();
                    printWriter.println(m4835k);
                    m4835k.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f68295a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.f68295a.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    @Nullable
    /* renamed from: f */
    public Fragment m53823f(@NonNull String str) {
        C1126e c1126e = this.f68296b.get(str);
        if (c1126e != null) {
            return c1126e.m4835k();
        }
        return null;
    }

    @Nullable
    /* renamed from: g */
    public Fragment m53824g(@IdRes int i) {
        for (int size = this.f68295a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f68295a.get(size);
            if (fragment != null && fragment.f7392O == i) {
                return fragment;
            }
        }
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null) {
                Fragment m4835k = c1126e.m4835k();
                if (m4835k.f7392O == i) {
                    return m4835k;
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: h */
    public Fragment m53825h(@Nullable String str) {
        if (str != null) {
            for (int size = this.f68295a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f68295a.get(size);
                if (fragment != null && str.equals(fragment.f7398Z)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null) {
                Fragment m4835k = c1126e.m4835k();
                if (str.equals(m4835k.f7398Z)) {
                    return m4835k;
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: i */
    public Fragment m53826i(@NonNull String str) {
        Fragment m4572e;
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null && (m4572e = c1126e.m4835k().m4572e(str)) != null) {
                return m4572e;
            }
        }
        return null;
    }

    /* renamed from: j */
    public int m53827j(@NonNull Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.f7427y0;
        if (viewGroup == null) {
            return -1;
        }
        int indexOf = this.f68295a.indexOf(fragment);
        for (int i = indexOf - 1; i >= 0; i--) {
            Fragment fragment2 = this.f68295a.get(i);
            if (fragment2.f7427y0 == viewGroup && (view2 = fragment2.f7429z0) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            indexOf++;
            if (indexOf >= this.f68295a.size()) {
                return -1;
            }
            Fragment fragment3 = this.f68295a.get(indexOf);
            if (fragment3.f7427y0 == viewGroup && (view = fragment3.f7429z0) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    /* renamed from: k */
    public int m53828k() {
        return this.f68296b.size();
    }

    @NonNull
    /* renamed from: l */
    public List<C1126e> m53829l() {
        ArrayList arrayList = new ArrayList();
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null) {
                arrayList.add(c1126e);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: m */
    public List<Fragment> m53830m() {
        ArrayList arrayList = new ArrayList();
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null) {
                arrayList.add(c1126e.m4835k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: n */
    public HashMap<String, Bundle> m53831n() {
        return this.f68297c;
    }

    @Nullable
    /* renamed from: o */
    public C1126e m53832o(@NonNull String str) {
        return this.f68296b.get(str);
    }

    @NonNull
    /* renamed from: p */
    public List<Fragment> m53833p() {
        ArrayList arrayList;
        if (this.f68295a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f68295a) {
            arrayList = new ArrayList(this.f68295a);
        }
        return arrayList;
    }

    /* renamed from: q */
    public vug m53834q() {
        return this.f68298d;
    }

    @Nullable
    /* renamed from: r */
    public Bundle m53835r(@NonNull String str) {
        return this.f68297c.get(str);
    }

    /* renamed from: s */
    public void m53836s(@NonNull C1126e c1126e) {
        Fragment m4835k = c1126e.m4835k();
        if (m53820c(m4835k.f7404j)) {
            return;
        }
        this.f68296b.put(m4835k.f7404j, c1126e);
        if (m4835k.f7419u0) {
            if (m4835k.f7417t0) {
                this.f68298d.m57875d(m4835k);
            } else {
                this.f68298d.m57885o(m4835k);
            }
            m4835k.f7419u0 = false;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + m4835k);
        }
    }

    /* renamed from: t */
    public void m53837t(@NonNull C1126e c1126e) {
        Fragment m4835k = c1126e.m4835k();
        if (m4835k.f7417t0) {
            this.f68298d.m57885o(m4835k);
        }
        if (this.f68296b.get(m4835k.f7404j) == c1126e && this.f68296b.put(m4835k.f7404j, null) != null && FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + m4835k);
        }
    }

    /* renamed from: u */
    public void m53838u() {
        Iterator<Fragment> it2 = this.f68295a.iterator();
        while (it2.hasNext()) {
            C1126e c1126e = this.f68296b.get(it2.next().f7404j);
            if (c1126e != null) {
                c1126e.m4837m();
            }
        }
        for (C1126e c1126e2 : this.f68296b.values()) {
            if (c1126e2 != null) {
                c1126e2.m4837m();
                Fragment m4835k = c1126e2.m4835k();
                if (m4835k.f7412q && !m4835k.m4597x()) {
                    if (m4835k.f7414r && !this.f68297c.containsKey(m4835k.f7404j)) {
                        m53817C(m4835k.f7404j, c1126e2.m4842r());
                    }
                    m53837t(c1126e2);
                }
            }
        }
    }

    /* renamed from: v */
    public void m53839v(@NonNull Fragment fragment) {
        synchronized (this.f68295a) {
            this.f68295a.remove(fragment);
        }
        fragment.f7411p = false;
    }

    /* renamed from: w */
    public void m53840w() {
        this.f68296b.clear();
    }

    /* renamed from: x */
    public void m53841x(@Nullable List<String> list) {
        this.f68295a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment m53823f = m53823f(str);
                if (m53823f == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + MotionUtils.f31762d);
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + m53823f);
                }
                m53818a(m53823f);
            }
        }
    }

    /* renamed from: y */
    public void m53842y(@NonNull HashMap<String, Bundle> hashMap) {
        this.f68297c.clear();
        this.f68297c.putAll(hashMap);
    }

    @NonNull
    /* renamed from: z */
    public ArrayList<String> m53843z() {
        ArrayList<String> arrayList = new ArrayList<>(this.f68296b.size());
        for (C1126e c1126e : this.f68296b.values()) {
            if (c1126e != null) {
                Fragment m4835k = c1126e.m4835k();
                m53817C(m4835k.f7404j, c1126e.m4842r());
                arrayList.add(m4835k.f7404j);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Saved state of " + m4835k + ": " + m4835k.f7400f);
                }
            }
        }
        return arrayList;
    }
}
