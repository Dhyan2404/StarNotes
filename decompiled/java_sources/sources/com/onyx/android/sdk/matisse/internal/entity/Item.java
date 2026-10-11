package com.onyx.android.sdk.matisse.internal.entity;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import com.onyx.android.sdk.matisse.MimeType;

/* loaded from: classes7.dex */
public class Item implements Parcelable {
    public static final Parcelable.Creator<Item> CREATOR = new C7457a();
    public static final String ITEM_DISPLAY_NAME_CAPTURE = "Capture";
    public static final long ITEM_ID_CAPTURE = -1;
    public final long duration;

    /* renamed from: id */
    public final long f42703id;
    public final String mimeType;
    public final long size;
    public final Uri uri;

    /* renamed from: com.onyx.android.sdk.matisse.internal.entity.Item$a */
    /* loaded from: classes7.dex */
    public class C7457a implements Parcelable.Creator<Item> {
        @Override // android.os.Parcelable.Creator
        @Nullable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Item createFromParcel(Parcel parcel) {
            return new Item(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Item[] newArray(int i) {
            return new Item[i];
        }
    }

    public /* synthetic */ Item(Parcel parcel, C7457a c7457a) {
        this(parcel);
    }

    public static Item valueOf(Cursor cursor) {
        try {
            return new Item(cursor.getLong(cursor.getColumnIndexOrThrow("_id")), cursor.getString(cursor.getColumnIndexOrThrow(DefaultDownloadIndex.f24934i)), cursor.getLong(cursor.getColumnIndexOrThrow("_size")), cursor.getLong(cursor.getColumnIndexOrThrow("duration")));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Item)) {
            return false;
        }
        Item item = (Item) obj;
        if (this.f42703id != item.f42703id) {
            return false;
        }
        String str = this.mimeType;
        if ((str == null || !str.equals(item.mimeType)) && !(this.mimeType == null && item.mimeType == null)) {
            return false;
        }
        Uri uri = this.uri;
        return ((uri != null && uri.equals(item.uri)) || (this.uri == null && item.uri == null)) && this.size == item.size && this.duration == item.duration;
    }

    public Uri getContentUri() {
        return this.uri;
    }

    public int hashCode() {
        int hashCode = Long.valueOf(this.f42703id).hashCode() + 31;
        String str = this.mimeType;
        if (str != null) {
            hashCode = (hashCode * 31) + str.hashCode();
        }
        return (((((hashCode * 31) + this.uri.hashCode()) * 31) + Long.valueOf(this.size).hashCode()) * 31) + Long.valueOf(this.duration).hashCode();
    }

    public boolean isCapture() {
        return this.f42703id == -1;
    }

    public boolean isGif() {
        return MimeType.isGif(this.mimeType);
    }

    public boolean isImage() {
        return MimeType.isImage(this.mimeType);
    }

    public boolean isVideo() {
        return MimeType.isVideo(this.mimeType);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f42703id);
        parcel.writeString(this.mimeType);
        parcel.writeParcelable(this.uri, 0);
        parcel.writeLong(this.size);
        parcel.writeLong(this.duration);
    }

    private Item(long j, String str, long j2, long j3) {
        Uri contentUri;
        this.f42703id = j;
        this.mimeType = str;
        if (isImage()) {
            contentUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        } else if (isVideo()) {
            contentUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        } else {
            contentUri = MediaStore.Files.getContentUri("external");
        }
        this.uri = ContentUris.withAppendedId(contentUri, j);
        this.size = j2;
        this.duration = j3;
    }

    private Item(Parcel parcel) {
        this.f42703id = parcel.readLong();
        this.mimeType = parcel.readString();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.size = parcel.readLong();
        this.duration = parcel.readLong();
    }
}
