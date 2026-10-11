package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes3.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new C1113a();
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final boolean mHidden;
    final int mMaxLifecycleState;
    final boolean mRemoving;
    final boolean mRetainInstance;
    final String mTag;
    final int mTargetRequestCode;
    final String mTargetWho;
    final boolean mUserVisibleHint;
    final String mWho;

    /* renamed from: androidx.fragment.app.FragmentState$a */
    /* loaded from: classes3.dex */
    public class C1113a implements Parcelable.Creator<FragmentState> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Fragment fragment) {
        this.mClassName = fragment.getClass().getName();
        this.mWho = fragment.f7404j;
        this.mFromLayout = fragment.f7415s;
        this.mFragmentId = fragment.f7392O;
        this.mContainerId = fragment.f7395Q;
        this.mTag = fragment.f7398Z;
        this.mRetainInstance = fragment.f7417t0;
        this.mRemoving = fragment.f7412q;
        this.mDetached = fragment.f7413q0;
        this.mHidden = fragment.f7406k0;
        this.mMaxLifecycleState = fragment.f7385I0.ordinal();
        this.mTargetWho = fragment.f7408m;
        this.mTargetRequestCode = fragment.f7409n;
        this.mUserVisibleHint = fragment.f7378B0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public Fragment instantiate(@NonNull FragmentFactory fragmentFactory, @NonNull ClassLoader classLoader) {
        Fragment instantiate = fragmentFactory.instantiate(classLoader, this.mClassName);
        instantiate.f7404j = this.mWho;
        instantiate.f7415s = this.mFromLayout;
        instantiate.f7418u = true;
        instantiate.f7392O = this.mFragmentId;
        instantiate.f7395Q = this.mContainerId;
        instantiate.f7398Z = this.mTag;
        instantiate.f7417t0 = this.mRetainInstance;
        instantiate.f7412q = this.mRemoving;
        instantiate.f7413q0 = this.mDetached;
        instantiate.f7406k0 = this.mHidden;
        instantiate.f7385I0 = Lifecycle.State.values()[this.mMaxLifecycleState];
        instantiate.f7408m = this.mTargetWho;
        instantiate.f7409n = this.mTargetRequestCode;
        instantiate.f7378B0 = this.mUserVisibleHint;
        return instantiate;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.mClassName);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")}:");
        if (this.mFromLayout) {
            sb.append(" fromLayout");
        }
        if (this.mContainerId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mContainerId));
        }
        String str = this.mTag;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        if (this.mRetainInstance) {
            sb.append(" retainInstance");
        }
        if (this.mRemoving) {
            sb.append(" removing");
        }
        if (this.mDetached) {
            sb.append(" detached");
        }
        if (this.mHidden) {
            sb.append(" hidden");
        }
        if (this.mTargetWho != null) {
            sb.append(" targetWho=");
            sb.append(this.mTargetWho);
            sb.append(" targetRequestCode=");
            sb.append(this.mTargetRequestCode);
        }
        if (this.mUserVisibleHint) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClassName);
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mFromLayout ? 1 : 0);
        parcel.writeInt(this.mFragmentId);
        parcel.writeInt(this.mContainerId);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.mRetainInstance ? 1 : 0);
        parcel.writeInt(this.mRemoving ? 1 : 0);
        parcel.writeInt(this.mDetached ? 1 : 0);
        parcel.writeInt(this.mHidden ? 1 : 0);
        parcel.writeInt(this.mMaxLifecycleState);
        parcel.writeString(this.mTargetWho);
        parcel.writeInt(this.mTargetRequestCode);
        parcel.writeInt(this.mUserVisibleHint ? 1 : 0);
    }

    public FragmentState(Parcel parcel) {
        this.mClassName = parcel.readString();
        this.mWho = parcel.readString();
        this.mFromLayout = parcel.readInt() != 0;
        this.mFragmentId = parcel.readInt();
        this.mContainerId = parcel.readInt();
        this.mTag = parcel.readString();
        this.mRetainInstance = parcel.readInt() != 0;
        this.mRemoving = parcel.readInt() != 0;
        this.mDetached = parcel.readInt() != 0;
        this.mHidden = parcel.readInt() != 0;
        this.mMaxLifecycleState = parcel.readInt();
        this.mTargetWho = parcel.readString();
        this.mTargetRequestCode = parcel.readInt();
        this.mUserVisibleHint = parcel.readInt() != 0;
    }
}
