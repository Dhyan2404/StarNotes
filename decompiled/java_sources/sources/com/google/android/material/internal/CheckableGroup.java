package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.MaterialCheckable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UiThread
/* loaded from: classes6.dex */
public class CheckableGroup<T extends MaterialCheckable<T>> {

    /* renamed from: a */
    public final Map<Integer, T> f31456a = new HashMap();

    /* renamed from: b */
    public final Set<Integer> f31457b = new HashSet();

    /* renamed from: c */
    public OnCheckedStateChangeListener f31458c;

    /* renamed from: d */
    public boolean f31459d;

    /* renamed from: e */
    public boolean f31460e;

    /* loaded from: classes6.dex */
    public interface OnCheckedStateChangeListener {
        void onCheckedStateChanged(@NonNull Set<Integer> set);
    }

    /* renamed from: com.google.android.material.internal.CheckableGroup$a */
    /* loaded from: classes6.dex */
    public class C5287a implements MaterialCheckable.OnCheckedChangeListener<T> {
        public C5287a() {
        }

        @Override // com.google.android.material.internal.MaterialCheckable.OnCheckedChangeListener
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCheckedChanged(T t, boolean z) {
            if (!z) {
                CheckableGroup checkableGroup = CheckableGroup.this;
                if (!checkableGroup.m24189g(t, checkableGroup.f31460e)) {
                    return;
                }
            } else if (!CheckableGroup.this.m24187e(t)) {
                return;
            }
            CheckableGroup.this.m24188f();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addCheckable(T t) {
        this.f31456a.put(Integer.valueOf(t.getId()), t);
        if (t.isChecked()) {
            m24187e(t);
        }
        t.setInternalOnCheckedChangeListener(new C5287a());
    }

    public void check(@IdRes int i) {
        T t = this.f31456a.get(Integer.valueOf(i));
        if (t != null && m24187e(t)) {
            m24188f();
        }
    }

    public void clearCheck() {
        boolean z = !this.f31457b.isEmpty();
        Iterator<T> it2 = this.f31456a.values().iterator();
        while (it2.hasNext()) {
            m24189g(it2.next(), false);
        }
        if (z) {
            m24188f();
        }
    }

    /* renamed from: e */
    public final boolean m24187e(@NonNull MaterialCheckable<T> materialCheckable) {
        int id = materialCheckable.getId();
        if (this.f31457b.contains(Integer.valueOf(id))) {
            return false;
        }
        T t = this.f31456a.get(Integer.valueOf(getSingleCheckedId()));
        if (t != null) {
            m24189g(t, false);
        }
        boolean add = this.f31457b.add(Integer.valueOf(id));
        if (!materialCheckable.isChecked()) {
            materialCheckable.setChecked(true);
        }
        return add;
    }

    /* renamed from: f */
    public final void m24188f() {
        OnCheckedStateChangeListener onCheckedStateChangeListener = this.f31458c;
        if (onCheckedStateChangeListener != null) {
            onCheckedStateChangeListener.onCheckedStateChanged(getCheckedIds());
        }
    }

    /* renamed from: g */
    public final boolean m24189g(@NonNull MaterialCheckable<T> materialCheckable, boolean z) {
        int id = materialCheckable.getId();
        if (!this.f31457b.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z && this.f31457b.size() == 1 && this.f31457b.contains(Integer.valueOf(id))) {
            materialCheckable.setChecked(true);
            return false;
        }
        boolean remove = this.f31457b.remove(Integer.valueOf(id));
        if (materialCheckable.isChecked()) {
            materialCheckable.setChecked(false);
        }
        return remove;
    }

    @NonNull
    public Set<Integer> getCheckedIds() {
        return new HashSet(this.f31457b);
    }

    @NonNull
    public List<Integer> getCheckedIdsSortedByChildOrder(@NonNull ViewGroup viewGroup) {
        Set<Integer> checkedIds = getCheckedIds();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof MaterialCheckable) && checkedIds.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    @IdRes
    public int getSingleCheckedId() {
        if (!this.f31459d || this.f31457b.isEmpty()) {
            return -1;
        }
        return this.f31457b.iterator().next().intValue();
    }

    public boolean isSelectionRequired() {
        return this.f31460e;
    }

    public boolean isSingleSelection() {
        return this.f31459d;
    }

    public void removeCheckable(T t) {
        t.setInternalOnCheckedChangeListener(null);
        this.f31456a.remove(Integer.valueOf(t.getId()));
        this.f31457b.remove(Integer.valueOf(t.getId()));
    }

    public void setOnCheckedStateChangeListener(@Nullable OnCheckedStateChangeListener onCheckedStateChangeListener) {
        this.f31458c = onCheckedStateChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f31460e = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.f31459d != z) {
            this.f31459d = z;
            clearCheck();
        }
    }

    public void uncheck(@IdRes int i) {
        T t = this.f31456a.get(Integer.valueOf(i));
        if (t != null && m24189g(t, this.f31460e)) {
            m24188f();
        }
    }
}
