package androidx.core.os;

import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes3.dex */
public final class ParcelableCompat {

    /* renamed from: androidx.core.os.ParcelableCompat$a */
    /* loaded from: classes3.dex */
    public static class C0713a<T> implements Parcelable.ClassLoaderCreator<T> {

        /* renamed from: a */
        public final ParcelableCompatCreatorCallbacks<T> f5545a;

        public C0713a(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
            this.f5545a = parcelableCompatCreatorCallbacks;
        }

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return this.f5545a.createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i) {
            return this.f5545a.newArray(i);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return this.f5545a.createFromParcel(parcel, classLoader);
        }
    }

    @Deprecated
    public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return new C0713a(parcelableCompatCreatorCallbacks);
    }
}
