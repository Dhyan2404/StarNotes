package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@SafeParcelable.Class(creator = "ModuleInstallStatusUpdateCreator")
/* loaded from: classes5.dex */
public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new zae();

    @SafeParcelable.Field(getter = "getSessionId", m22176id = 1)
    private final int zaa;

    @InstallState
    @SafeParcelable.Field(getter = "getInstallState", m22176id = 2)
    private final int zab;

    @Nullable
    @SafeParcelable.Field(getter = "getBytesDownloaded", m22176id = 3)
    private final Long zac;

    @Nullable
    @SafeParcelable.Field(getter = "getTotalBytesToDownload", m22176id = 4)
    private final Long zad;

    @SafeParcelable.Field(getter = "getErrorCode", m22176id = 5)
    private final int zae;

    @Nullable
    private final ProgressInfo zaf;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface InstallState {
        public static final int STATE_CANCELED = 3;
        public static final int STATE_COMPLETED = 4;
        public static final int STATE_DOWNLOADING = 2;
        public static final int STATE_DOWNLOAD_PAUSED = 7;
        public static final int STATE_FAILED = 5;
        public static final int STATE_INSTALLING = 6;
        public static final int STATE_PENDING = 1;
        public static final int STATE_UNKNOWN = 0;
    }

    /* loaded from: classes5.dex */
    public static class ProgressInfo {

        /* renamed from: a */
        public final long f29437a;

        /* renamed from: b */
        public final long f29438b;

        public ProgressInfo(long j, long j2) {
            Preconditions.checkNotZero(j2);
            this.f29437a = j;
            this.f29438b = j2;
        }

        public long getBytesDownloaded() {
            return this.f29437a;
        }

        public long getTotalBytesToDownload() {
            return this.f29438b;
        }
    }

    @SafeParcelable.Constructor
    @KeepForSdk
    public ModuleInstallStatusUpdate(@SafeParcelable.Param(m22177id = 1) int i, @SafeParcelable.Param(m22177id = 2) @InstallState int i2, @Nullable @SafeParcelable.Param(m22177id = 3) Long l, @Nullable @SafeParcelable.Param(m22177id = 4) Long l2, @SafeParcelable.Param(m22177id = 5) int i3) {
        this.zaa = i;
        this.zab = i2;
        this.zac = l;
        this.zad = l2;
        this.zae = i3;
        this.zaf = (l == null || l2 == null || l2.longValue() == 0) ? null : new ProgressInfo(l.longValue(), l2.longValue());
    }

    public int getErrorCode() {
        return this.zae;
    }

    @InstallState
    public int getInstallState() {
        return this.zab;
    }

    @Nullable
    public ProgressInfo getProgressInfo() {
        return this.zaf;
    }

    public int getSessionId() {
        return this.zaa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getSessionId());
        SafeParcelWriter.writeInt(parcel, 2, getInstallState());
        SafeParcelWriter.writeLongObject(parcel, 3, this.zac, false);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zad, false);
        SafeParcelWriter.writeInt(parcel, 5, getErrorCode());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
