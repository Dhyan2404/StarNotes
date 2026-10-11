package com.onyx.android.sdk.matisse.internal.entity;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.loader.AlbumLoader;

/* loaded from: classes7.dex */
public class Album implements Parcelable {
    public static final String ALBUM_NAME_ALL = "All";
    private long mCount;
    private final Uri mCoverUri;
    private final String mDisplayName;
    private final String mId;
    public static final Parcelable.Creator<Album> CREATOR = new C7456a();
    public static final String ALBUM_ID_ALL = String.valueOf(-1);

    /* renamed from: com.onyx.android.sdk.matisse.internal.entity.Album$a */
    /* loaded from: classes7.dex */
    public class C7456a implements Parcelable.Creator<Album> {
        @Override // android.os.Parcelable.Creator
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Album createFromParcel(Parcel parcel) {
            return new Album(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Album[] newArray(int i) {
            return new Album[i];
        }
    }

    public /* synthetic */ Album(Parcel parcel, C7456a c7456a) {
        this(parcel);
    }

    public static Album valueOf(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndexOrThrow("uri"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow(AlbumLoader.f42718z));
        if (string == null) {
            string = "";
        }
        return new Album(string2, Uri.parse(string), cursor.getString(cursor.getColumnIndexOrThrow(AlbumLoader.f42705A)), cursor.getLong(cursor.getColumnIndexOrThrow("count")));
    }

    public void addCaptureCount() {
        this.mCount++;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getCount() {
        return this.mCount;
    }

    public Uri getCoverUri() {
        return this.mCoverUri;
    }

    public String getDisplayName(Context context) {
        return isAll() ? context.getString(C7453R.string.album_name_all) : this.mDisplayName;
    }

    public String getId() {
        return this.mId;
    }

    public boolean isAll() {
        return ALBUM_ID_ALL.equals(this.mId);
    }

    public boolean isEmpty() {
        return this.mCount == 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mId);
        parcel.writeParcelable(this.mCoverUri, 0);
        parcel.writeString(this.mDisplayName);
        parcel.writeLong(this.mCount);
    }

    public Album(String str, Uri uri, String str2, long j) {
        this.mId = str;
        this.mCoverUri = uri;
        this.mDisplayName = str2;
        this.mCount = j;
    }

    private Album(Parcel parcel) {
        this.mId = parcel.readString();
        this.mCoverUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mDisplayName = parcel.readString();
        this.mCount = parcel.readLong();
    }
}
