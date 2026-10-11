package com.oplus.ipemanager.sdk;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0001\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\bH\u0016j\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/oplus/ipemanager/sdk/IpeFeature;", "", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Ljava/lang/String;ILandroid/os/Parcel;)V", "(Ljava/lang/String;I)V", "describeContents", "", "writeToParcel", "", "flags", "DEMO_MODE", "FUNCTION_VIBRATION", "FEEDBACK_VIBRATION", "CREATOR", "com.oplus.ocs.ipe_sdk_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public enum IpeFeature implements Parcelable {
    DEMO_MODE,
    FUNCTION_VIBRATION,
    FEEDBACK_VIBRATION;


    /* renamed from: CREATOR, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(0);

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/oplus/ipemanager/sdk/IpeFeature$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/oplus/ipemanager/sdk/IpeFeature;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/oplus/ipemanager/sdk/IpeFeature;", "com.oplus.ocs.ipe_sdk_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
    /* renamed from: com.oplus.ipemanager.sdk.IpeFeature$a, reason: from kotlin metadata */
    /* loaded from: classes9.dex */
    public static final class Companion implements Parcelable.Creator<IpeFeature> {
        public /* synthetic */ Companion(byte b) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ IpeFeature createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return IpeFeature.values()[parcel.readInt()];
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ IpeFeature[] newArray(int i) {
            return new IpeFeature[i];
        }

        private Companion() {
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NotNull Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(ordinal());
    }

    IpeFeature(Parcel parcel) {
        this();
    }
}
