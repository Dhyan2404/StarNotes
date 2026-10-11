package com.onyx.android.sdk.reader.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\"\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tJ\b\u0010\f\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u000e\u001a\u00020\tJ\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\tH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;", "Landroid/os/Parcelable;", "()V", "in", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "nature", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "word", BaiduYunConstant.CREATE, "describeContents", "getNature", "getOffset", "getWord", "setNature", "setOffset", "setWord", "writeToParcel", "", "dest", "flags", "CREATOR", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SegmentOutputData implements Parcelable {

    /* renamed from: CREATOR, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String nature;
    private int offset;

    @Nullable
    private String word;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/SegmentOutputData$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* renamed from: com.onyx.android.sdk.reader.impl.SegmentOutputData$CREATOR, reason: from kotlin metadata */
    /* loaded from: classes8.dex */
    public static final class Companion implements Parcelable.Creator<SegmentOutputData> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public SegmentOutputData createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SegmentOutputData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public SegmentOutputData[] newArray(int size) {
            return new SegmentOutputData[size];
        }
    }

    public SegmentOutputData() {
    }

    @NotNull
    public final SegmentOutputData create(@Nullable String word, @Nullable String nature, int offset) {
        return new SegmentOutputData().setWord(word).setNature(nature).setOffset(offset);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public final String getNature() {
        return this.nature;
    }

    public final int getOffset() {
        return this.offset;
    }

    @Nullable
    public final String getWord() {
        return this.word;
    }

    @NotNull
    public final SegmentOutputData setNature(@Nullable String nature) {
        this.nature = nature;
        return this;
    }

    @NotNull
    public final SegmentOutputData setOffset(int offset) {
        this.offset = offset;
        return this;
    }

    @NotNull
    public final SegmentOutputData setWord(@Nullable String word) {
        this.word = word;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.word);
        dest.writeString(this.nature);
        dest.writeInt(this.offset);
    }

    public SegmentOutputData(@NotNull Parcel in) {
        Intrinsics.checkNotNullParameter(in, "in");
        this.word = in.readString();
        this.nature = in.readString();
        this.offset = in.readInt();
    }
}
