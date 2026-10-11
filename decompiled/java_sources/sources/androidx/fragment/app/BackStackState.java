package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes3.dex */
public class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C1070a();
    final List<String> mFragments;
    final List<BackStackRecordState> mTransactions;

    /* renamed from: androidx.fragment.app.BackStackState$a */
    /* loaded from: classes3.dex */
    public class C1070a implements Parcelable.Creator<BackStackState> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(List<String> list, List<BackStackRecordState> list2) {
        this.mFragments = list;
        this.mTransactions = list2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public List<C1122a> instantiate(@NonNull FragmentManager fragmentManager, Map<String, Fragment> map) {
        HashMap hashMap = new HashMap(this.mFragments.size());
        for (String str : this.mFragments) {
            Fragment fragment = map.get(str);
            if (fragment != null) {
                hashMap.put(fragment.f7404j, fragment);
            } else {
                Bundle m53817C = fragmentManager.m4728q0().m53817C(str, null);
                if (m53817C != null) {
                    ClassLoader classLoader = fragmentManager.getHost().m4623b().getClassLoader();
                    Fragment instantiate = ((FragmentState) m53817C.getParcelable("state")).instantiate(fragmentManager.getFragmentFactory(), classLoader);
                    instantiate.f7400f = m53817C;
                    if (m53817C.getBundle(C1126e.f7693h) == null) {
                        instantiate.f7400f.putBundle(C1126e.f7693h, new Bundle());
                    }
                    Bundle bundle = m53817C.getBundle(C1126e.f7698m);
                    if (bundle != null) {
                        bundle.setClassLoader(classLoader);
                    }
                    instantiate.setArguments(bundle);
                    hashMap.put(instantiate.f7404j, instantiate);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<BackStackRecordState> it2 = this.mTransactions.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().instantiate(fragmentManager, hashMap));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeStringList(this.mFragments);
        parcel.writeTypedList(this.mTransactions);
    }

    public BackStackState(@NonNull Parcel parcel) {
        this.mFragments = parcel.createStringArrayList();
        this.mTransactions = parcel.createTypedArrayList(BackStackRecordState.CREATOR);
    }
}
