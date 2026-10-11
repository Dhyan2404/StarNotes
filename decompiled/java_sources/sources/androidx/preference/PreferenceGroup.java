package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.TypedArrayUtils;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: S0 */
    public static final String f8887S0 = "PreferenceGroup";

    /* renamed from: J0 */
    public final SimpleArrayMap<String, Long> f8888J0;

    /* renamed from: K0 */
    public final Handler f8889K0;

    /* renamed from: L0 */
    public List<Preference> f8890L0;

    /* renamed from: M0 */
    public boolean f8891M0;

    /* renamed from: N0 */
    public int f8892N0;

    /* renamed from: O0 */
    public boolean f8893O0;

    /* renamed from: P0 */
    public int f8894P0;

    /* renamed from: Q0 */
    public OnExpandButtonClickListener f8895Q0;

    /* renamed from: R0 */
    public final Runnable f8896R0;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public interface OnExpandButtonClickListener {
        void onExpandButtonClick();
    }

    /* loaded from: classes3.dex */
    public interface PreferencePositionCallback {
        int getPreferenceAdapterPosition(Preference preference);

        int getPreferenceAdapterPosition(String str);
    }

    /* renamed from: androidx.preference.PreferenceGroup$a */
    /* loaded from: classes3.dex */
    public class RunnableC1265a implements Runnable {
        public RunnableC1265a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                PreferenceGroup.this.f8888J0.clear();
            }
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f8888J0 = new SimpleArrayMap<>();
        this.f8889K0 = new Handler();
        this.f8891M0 = true;
        this.f8892N0 = 0;
        this.f8893O0 = false;
        this.f8894P0 = Integer.MAX_VALUE;
        this.f8895Q0 = null;
        this.f8896R0 = new RunnableC1265a();
        this.f8890L0 = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1271R.styleable.PreferenceGroup, i, i2);
        int i3 = C1271R.styleable.PreferenceGroup_orderingFromXml;
        this.f8891M0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, i3, i3, true);
        if (obtainStyledAttributes.hasValue(C1271R.styleable.PreferenceGroup_initialExpandedChildrenCount)) {
            int i4 = C1271R.styleable.PreferenceGroup_initialExpandedChildrenCount;
            setInitialExpandedChildrenCount(TypedArrayUtils.getInt(obtainStyledAttributes, i4, i4, Integer.MAX_VALUE));
        }
        obtainStyledAttributes.recycle();
    }

    public void addItemFromInflater(Preference preference) {
        addPreference(preference);
    }

    public boolean addPreference(Preference preference) {
        long m5331d;
        if (this.f8890L0.contains(preference)) {
            return true;
        }
        if (preference.getKey() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.getParent() != null) {
                preferenceGroup = preferenceGroup.getParent();
            }
            String key = preference.getKey();
            if (preferenceGroup.findPreference(key) != null) {
                Log.e(f8887S0, "Found duplicated key: \"" + key + "\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        if (preference.getOrder() == Integer.MAX_VALUE) {
            if (this.f8891M0) {
                int i = this.f8892N0;
                this.f8892N0 = i + 1;
                preference.setOrder(i);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).setOrderingAsAdded(this.f8891M0);
            }
        }
        int binarySearch = Collections.binarySearch(this.f8890L0, preference);
        if (binarySearch < 0) {
            binarySearch = (binarySearch * (-1)) - 1;
        }
        if (!onPrepareAddPreference(preference)) {
            return false;
        }
        synchronized (this) {
            this.f8890L0.add(binarySearch, preference);
        }
        PreferenceManager preferenceManager = getPreferenceManager();
        String key2 = preference.getKey();
        if (key2 == null || !this.f8888J0.containsKey(key2)) {
            m5331d = preferenceManager.m5331d();
        } else {
            m5331d = this.f8888J0.get(key2).longValue();
            this.f8888J0.remove(key2);
        }
        preference.onAttachedToHierarchy(preferenceManager, m5331d);
        preference.m5281a(this);
        if (this.f8893O0) {
            preference.onAttached();
        }
        notifyHierarchyChanged();
        return true;
    }

    @Override // androidx.preference.Preference
    public void dispatchRestoreInstanceState(Bundle bundle) {
        super.dispatchRestoreInstanceState(bundle);
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            getPreference(i).dispatchRestoreInstanceState(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public void dispatchSaveInstanceState(Bundle bundle) {
        super.dispatchSaveInstanceState(bundle);
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            getPreference(i).dispatchSaveInstanceState(bundle);
        }
    }

    @Nullable
    public <T extends Preference> T findPreference(@NonNull CharSequence charSequence) {
        T t;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(getKey(), charSequence)) {
            return this;
        }
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            PreferenceGroup preferenceGroup = (T) getPreference(i);
            if (TextUtils.equals(preferenceGroup.getKey(), charSequence)) {
                return preferenceGroup;
            }
            if ((preferenceGroup instanceof PreferenceGroup) && (t = (T) preferenceGroup.findPreference(charSequence)) != null) {
                return t;
            }
        }
        return null;
    }

    public int getInitialExpandedChildrenCount() {
        return this.f8894P0;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public OnExpandButtonClickListener getOnExpandButtonClickListener() {
        return this.f8895Q0;
    }

    public Preference getPreference(int i) {
        return this.f8890L0.get(i);
    }

    public int getPreferenceCount() {
        return this.f8890L0.size();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean isAttached() {
        return this.f8893O0;
    }

    public boolean isOnSameScreenAsChildren() {
        return true;
    }

    public boolean isOrderingAsAdded() {
        return this.f8891M0;
    }

    @Override // androidx.preference.Preference
    public void notifyDependencyChange(boolean z) {
        super.notifyDependencyChange(z);
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            getPreference(i).onParentChanged(this, z);
        }
    }

    /* renamed from: o */
    public final boolean m5319o(Preference preference) {
        boolean remove;
        synchronized (this) {
            preference.onPrepareForRemoval();
            if (preference.getParent() == this) {
                preference.m5281a(null);
            }
            remove = this.f8890L0.remove(preference);
            if (remove) {
                String key = preference.getKey();
                if (key != null) {
                    this.f8888J0.put(key, Long.valueOf(preference.mo5285e()));
                    this.f8889K0.removeCallbacks(this.f8896R0);
                    this.f8889K0.post(this.f8896R0);
                }
                if (this.f8893O0) {
                    preference.onDetached();
                }
            }
        }
        return remove;
    }

    @Override // androidx.preference.Preference
    public void onAttached() {
        super.onAttached();
        this.f8893O0 = true;
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            getPreference(i).onAttached();
        }
    }

    @Override // androidx.preference.Preference
    public void onDetached() {
        super.onDetached();
        this.f8893O0 = false;
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            getPreference(i).onDetached();
        }
    }

    public boolean onPrepareAddPreference(Preference preference) {
        preference.onParentChanged(this, shouldDisableDependents());
        return true;
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f8894P0 = savedState.mInitialExpandedChildrenCount;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.f8894P0);
    }

    /* renamed from: p */
    public void m5320p() {
        synchronized (this) {
            Collections.sort(this.f8890L0);
        }
    }

    public void removeAll() {
        synchronized (this) {
            List<Preference> list = this.f8890L0;
            for (int size = list.size() - 1; size >= 0; size--) {
                m5319o(list.get(0));
            }
        }
        notifyHierarchyChanged();
    }

    public boolean removePreference(Preference preference) {
        boolean m5319o = m5319o(preference);
        notifyHierarchyChanged();
        return m5319o;
    }

    public boolean removePreferenceRecursively(@NonNull CharSequence charSequence) {
        Preference findPreference = findPreference(charSequence);
        if (findPreference == null) {
            return false;
        }
        return findPreference.getParent().removePreference(findPreference);
    }

    public void setInitialExpandedChildrenCount(int i) {
        if (i != Integer.MAX_VALUE && !hasKey()) {
            Log.e(f8887S0, getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.f8894P0 = i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOnExpandButtonClickListener(@Nullable OnExpandButtonClickListener onExpandButtonClickListener) {
        this.f8895Q0 = onExpandButtonClickListener;
    }

    public void setOrderingAsAdded(boolean z) {
        this.f8891M0 = z;
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1264a();
        int mInitialExpandedChildrenCount;

        /* renamed from: androidx.preference.PreferenceGroup$SavedState$a */
        /* loaded from: classes3.dex */
        public static class C1264a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mInitialExpandedChildrenCount = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mInitialExpandedChildrenCount);
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.mInitialExpandedChildrenCount = i;
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
