package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes3.dex */
public final class BackStackRecordState implements Parcelable {
    public static final Parcelable.Creator<BackStackRecordState> CREATOR = new C1069a();
    private static final String TAG = "FragmentManager";
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int[] mCurrentMaxLifecycleStates;
    final ArrayList<String> mFragmentWhos;
    final int mIndex;
    final String mName;
    final int[] mOldMaxLifecycleStates;
    final int[] mOps;
    final boolean mReorderingAllowed;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;

    /* renamed from: androidx.fragment.app.BackStackRecordState$a */
    /* loaded from: classes3.dex */
    public class C1069a implements Parcelable.Creator<BackStackRecordState> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackRecordState createFromParcel(Parcel parcel) {
            return new BackStackRecordState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public BackStackRecordState[] newArray(int i) {
            return new BackStackRecordState[i];
        }
    }

    public BackStackRecordState(C1122a c1122a) {
        int size = c1122a.f7610c.size();
        this.mOps = new int[size * 6];
        if (c1122a.f7616i) {
            this.mFragmentWhos = new ArrayList<>(size);
            this.mOldMaxLifecycleStates = new int[size];
            this.mCurrentMaxLifecycleStates = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                FragmentTransaction.C1117a c1117a = c1122a.f7610c.get(i);
                int i3 = i2 + 1;
                this.mOps[i2] = c1117a.f7627a;
                ArrayList<String> arrayList = this.mFragmentWhos;
                Fragment fragment = c1117a.f7628b;
                arrayList.add(fragment != null ? fragment.f7404j : null);
                int[] iArr = this.mOps;
                int i4 = i3 + 1;
                iArr[i3] = c1117a.f7629c ? 1 : 0;
                int i5 = i4 + 1;
                iArr[i4] = c1117a.f7630d;
                int i6 = i5 + 1;
                iArr[i5] = c1117a.f7631e;
                int i7 = i6 + 1;
                iArr[i6] = c1117a.f7632f;
                iArr[i7] = c1117a.f7633g;
                this.mOldMaxLifecycleStates[i] = c1117a.f7634h.ordinal();
                this.mCurrentMaxLifecycleStates[i] = c1117a.f7635i.ordinal();
                i++;
                i2 = i7 + 1;
            }
            this.mTransition = c1122a.f7615h;
            this.mName = c1122a.f7618k;
            this.mIndex = c1122a.f7674G;
            this.mBreadCrumbTitleRes = c1122a.f7619l;
            this.mBreadCrumbTitleText = c1122a.f7620m;
            this.mBreadCrumbShortTitleRes = c1122a.f7621n;
            this.mBreadCrumbShortTitleText = c1122a.f7622o;
            this.mSharedElementSourceNames = c1122a.f7623p;
            this.mSharedElementTargetNames = c1122a.f7624q;
            this.mReorderingAllowed = c1122a.f7625r;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    private void fillInBackStackRecord(@NonNull C1122a c1122a) {
        int i = 0;
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i >= this.mOps.length) {
                c1122a.f7615h = this.mTransition;
                c1122a.f7618k = this.mName;
                c1122a.f7616i = true;
                c1122a.f7619l = this.mBreadCrumbTitleRes;
                c1122a.f7620m = this.mBreadCrumbTitleText;
                c1122a.f7621n = this.mBreadCrumbShortTitleRes;
                c1122a.f7622o = this.mBreadCrumbShortTitleText;
                c1122a.f7623p = this.mSharedElementSourceNames;
                c1122a.f7624q = this.mSharedElementTargetNames;
                c1122a.f7625r = this.mReorderingAllowed;
                return;
            }
            FragmentTransaction.C1117a c1117a = new FragmentTransaction.C1117a();
            int i3 = i + 1;
            c1117a.f7627a = this.mOps[i];
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Instantiate " + c1122a + " op #" + i2 + " base fragment #" + this.mOps[i3]);
            }
            c1117a.f7634h = Lifecycle.State.values()[this.mOldMaxLifecycleStates[i2]];
            c1117a.f7635i = Lifecycle.State.values()[this.mCurrentMaxLifecycleStates[i2]];
            int[] iArr = this.mOps;
            int i4 = i3 + 1;
            if (iArr[i3] == 0) {
                z = false;
            }
            c1117a.f7629c = z;
            int i5 = i4 + 1;
            int i6 = iArr[i4];
            c1117a.f7630d = i6;
            int i7 = i5 + 1;
            int i8 = iArr[i5];
            c1117a.f7631e = i8;
            int i9 = i7 + 1;
            int i10 = iArr[i7];
            c1117a.f7632f = i10;
            int i11 = iArr[i9];
            c1117a.f7633g = i11;
            c1122a.f7611d = i6;
            c1122a.f7612e = i8;
            c1122a.f7613f = i10;
            c1122a.f7614g = i11;
            c1122a.m4774c(c1117a);
            i2++;
            i = i9 + 1;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public C1122a instantiate(@NonNull FragmentManager fragmentManager) {
        C1122a c1122a = new C1122a(fragmentManager);
        fillInBackStackRecord(c1122a);
        c1122a.f7674G = this.mIndex;
        for (int i = 0; i < this.mFragmentWhos.size(); i++) {
            String str = this.mFragmentWhos.get(i);
            if (str != null) {
                c1122a.f7610c.get(i).f7628b = fragmentManager.m4696d0(str);
            }
        }
        c1122a.m4795f(1);
        return c1122a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.mOps);
        parcel.writeStringList(this.mFragmentWhos);
        parcel.writeIntArray(this.mOldMaxLifecycleStates);
        parcel.writeIntArray(this.mCurrentMaxLifecycleStates);
        parcel.writeInt(this.mTransition);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
        parcel.writeStringList(this.mSharedElementSourceNames);
        parcel.writeStringList(this.mSharedElementTargetNames);
        parcel.writeInt(this.mReorderingAllowed ? 1 : 0);
    }

    @NonNull
    public C1122a instantiate(@NonNull FragmentManager fragmentManager, @NonNull Map<String, Fragment> map) {
        C1122a c1122a = new C1122a(fragmentManager);
        fillInBackStackRecord(c1122a);
        for (int i = 0; i < this.mFragmentWhos.size(); i++) {
            String str = this.mFragmentWhos.get(i);
            if (str != null) {
                Fragment fragment = map.get(str);
                if (fragment != null) {
                    c1122a.f7610c.get(i).f7628b = fragment;
                } else {
                    throw new IllegalStateException("Restoring FragmentTransaction " + this.mName + " failed due to missing saved state for Fragment (" + str + MotionUtils.f31762d);
                }
            }
        }
        return c1122a;
    }

    public BackStackRecordState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mFragmentWhos = parcel.createStringArrayList();
        this.mOldMaxLifecycleStates = parcel.createIntArray();
        this.mCurrentMaxLifecycleStates = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        this.mBreadCrumbTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSharedElementSourceNames = parcel.createStringArrayList();
        this.mSharedElementTargetNames = parcel.createStringArrayList();
        this.mReorderingAllowed = parcel.readInt() != 0;
    }
}
