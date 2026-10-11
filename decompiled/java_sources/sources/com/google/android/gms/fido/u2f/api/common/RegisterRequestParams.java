package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@SafeParcelable.Class(creator = "RegisterRequestParamsCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes5.dex */
public class RegisterRequestParams extends RequestParams {

    @NonNull
    public static final Parcelable.Creator<RegisterRequestParams> CREATOR = new zzh();
    public static final int MAX_DISPLAY_HINT_LENGTH = 80;

    @SafeParcelable.Field(getter = "getRequestId", m22176id = 2)
    private final Integer zza;

    @SafeParcelable.Field(getter = "getTimeoutSeconds", m22176id = 3)
    private final Double zzb;

    @SafeParcelable.Field(getter = "getAppId", m22176id = 4)
    private final Uri zzc;

    @SafeParcelable.Field(getter = "getRegisterRequests", m22176id = 5)
    private final List zzd;

    @SafeParcelable.Field(getter = "getRegisteredKeys", m22176id = 6)
    private final List zze;

    @SafeParcelable.Field(getter = "getChannelIdValue", m22176id = 7)
    private final ChannelIdValue zzf;

    @SafeParcelable.Field(getter = "getDisplayHint", m22176id = 8)
    private final String zzg;
    private Set zzh;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public Integer f29605a;

        /* renamed from: b */
        public Double f29606b;

        /* renamed from: c */
        public Uri f29607c;

        /* renamed from: d */
        public List f29608d;

        /* renamed from: e */
        public List f29609e;

        /* renamed from: f */
        public ChannelIdValue f29610f;

        /* renamed from: g */
        public String f29611g;

        @NonNull
        public RegisterRequestParams build() {
            return new RegisterRequestParams(this.f29605a, this.f29606b, this.f29607c, this.f29608d, this.f29609e, this.f29610f, this.f29611g);
        }

        @NonNull
        public Builder setAppId(@NonNull Uri uri) {
            this.f29607c = uri;
            return this;
        }

        @NonNull
        public Builder setChannelIdValue(@NonNull ChannelIdValue channelIdValue) {
            this.f29610f = channelIdValue;
            return this;
        }

        @NonNull
        public Builder setDisplayHint(@NonNull String str) {
            this.f29611g = str;
            return this;
        }

        @NonNull
        public Builder setRegisterRequests(@NonNull List<RegisterRequest> list) {
            this.f29608d = list;
            return this;
        }

        @NonNull
        public Builder setRegisteredKeys(@NonNull List<RegisteredKey> list) {
            this.f29609e = list;
            return this;
        }

        @NonNull
        public Builder setRequestId(@NonNull Integer num) {
            this.f29605a = num;
            return this;
        }

        @NonNull
        public Builder setTimeoutSeconds(@NonNull Double d) {
            this.f29606b = d;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public RegisterRequestParams(@SafeParcelable.Param(m22177id = 2) Integer num, @SafeParcelable.Param(m22177id = 3) Double d, @SafeParcelable.Param(m22177id = 4) Uri uri, @SafeParcelable.Param(m22177id = 5) List list, @SafeParcelable.Param(m22177id = 6) List list2, @SafeParcelable.Param(m22177id = 7) ChannelIdValue channelIdValue, @SafeParcelable.Param(m22177id = 8) String str) {
        this.zza = num;
        this.zzb = d;
        this.zzc = uri;
        Preconditions.checkArgument((list == null || list.isEmpty()) ? false : true, "empty list of register requests is provided");
        this.zzd = list;
        this.zze = list2;
        this.zzf = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            RegisterRequest registerRequest = (RegisterRequest) it2.next();
            Preconditions.checkArgument((uri == null && registerRequest.getAppId() == null) ? false : true, "register request has null appId and no request appId is provided");
            if (registerRequest.getAppId() != null) {
                hashSet.add(Uri.parse(registerRequest.getAppId()));
            }
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            RegisteredKey registeredKey = (RegisteredKey) it3.next();
            Preconditions.checkArgument((uri == null && registeredKey.getAppId() == null) ? false : true, "registered key has null appId and no request appId is provided");
            if (registeredKey.getAppId() != null) {
                hashSet.add(Uri.parse(registeredKey.getAppId()));
            }
        }
        this.zzh = hashSet;
        Preconditions.checkArgument(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.zzg = str;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        List list2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequestParams)) {
            return false;
        }
        RegisterRequestParams registerRequestParams = (RegisterRequestParams) obj;
        return Objects.equal(this.zza, registerRequestParams.zza) && Objects.equal(this.zzb, registerRequestParams.zzb) && Objects.equal(this.zzc, registerRequestParams.zzc) && Objects.equal(this.zzd, registerRequestParams.zzd) && (((list = this.zze) == null && registerRequestParams.zze == null) || (list != null && (list2 = registerRequestParams.zze) != null && list.containsAll(list2) && registerRequestParams.zze.containsAll(this.zze))) && Objects.equal(this.zzf, registerRequestParams.zzf) && Objects.equal(this.zzg, registerRequestParams.zzg);
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public Set<Uri> getAllAppIds() {
        return this.zzh;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public Uri getAppId() {
        return this.zzc;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public ChannelIdValue getChannelIdValue() {
        return this.zzf;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public String getDisplayHint() {
        return this.zzg;
    }

    @NonNull
    public List<RegisterRequest> getRegisterRequests() {
        return this.zzd;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public List<RegisteredKey> getRegisteredKeys() {
        return this.zze;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public Integer getRequestId() {
        return this.zza;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    @NonNull
    public Double getTimeoutSeconds() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzc, this.zzb, this.zzd, this.zze, this.zzf, this.zzg);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerObject(parcel, 2, getRequestId(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getAppId(), i, false);
        SafeParcelWriter.writeTypedList(parcel, 5, getRegisterRequests(), false);
        SafeParcelWriter.writeTypedList(parcel, 6, getRegisteredKeys(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getChannelIdValue(), i, false);
        SafeParcelWriter.writeString(parcel, 8, getDisplayHint(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
