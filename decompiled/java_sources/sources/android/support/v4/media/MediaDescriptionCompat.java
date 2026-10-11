package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes3.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0034a();

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
    public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
    public static final long STATUS_DOWNLOADED = 2;
    public static final long STATUS_DOWNLOADING = 1;
    public static final long STATUS_NOT_DOWNLOADED = 0;
    private static final String TAG = "MediaDescriptionCompat";
    private final CharSequence mDescription;
    private MediaDescription mDescriptionFwk;
    private final Bundle mExtras;
    private final Bitmap mIcon;
    private final Uri mIconUri;
    private final String mMediaId;
    private final Uri mMediaUri;
    private final CharSequence mSubtitle;
    private final CharSequence mTitle;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f163a;

        /* renamed from: b */
        public CharSequence f164b;

        /* renamed from: c */
        public CharSequence f165c;

        /* renamed from: d */
        public CharSequence f166d;

        /* renamed from: e */
        public Bitmap f167e;

        /* renamed from: f */
        public Uri f168f;

        /* renamed from: g */
        public Bundle f169g;

        /* renamed from: h */
        public Uri f170h;

        public MediaDescriptionCompat build() {
            return new MediaDescriptionCompat(this.f163a, this.f164b, this.f165c, this.f166d, this.f167e, this.f168f, this.f169g, this.f170h);
        }

        public Builder setDescription(@Nullable CharSequence description) {
            this.f166d = description;
            return this;
        }

        public Builder setExtras(@Nullable Bundle extras) {
            this.f169g = extras;
            return this;
        }

        public Builder setIconBitmap(@Nullable Bitmap icon) {
            this.f167e = icon;
            return this;
        }

        public Builder setIconUri(@Nullable Uri iconUri) {
            this.f168f = iconUri;
            return this;
        }

        public Builder setMediaId(@Nullable String mediaId) {
            this.f163a = mediaId;
            return this;
        }

        public Builder setMediaUri(@Nullable Uri mediaUri) {
            this.f170h = mediaUri;
            return this;
        }

        public Builder setSubtitle(@Nullable CharSequence subtitle) {
            this.f165c = subtitle;
            return this;
        }

        public Builder setTitle(@Nullable CharSequence title) {
            this.f164b = title;
            return this;
        }
    }

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes3.dex */
    public class C0034a implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel in) {
            return MediaDescriptionCompat.fromMediaDescription(MediaDescription.CREATOR.createFromParcel(in));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int size) {
            return new MediaDescriptionCompat[size];
        }
    }

    @RequiresApi(21)
    /* renamed from: android.support.v4.media.MediaDescriptionCompat$b */
    /* loaded from: classes3.dex */
    public static class C0035b {
        @DoNotInline
        /* renamed from: a */
        public static MediaDescription m67a(MediaDescription.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        /* renamed from: b */
        public static MediaDescription.Builder m68b() {
            return new MediaDescription.Builder();
        }

        @Nullable
        @DoNotInline
        /* renamed from: c */
        public static CharSequence m69c(MediaDescription description) {
            return description.getDescription();
        }

        @Nullable
        @DoNotInline
        /* renamed from: d */
        public static Bundle m70d(MediaDescription description) {
            return description.getExtras();
        }

        @Nullable
        @DoNotInline
        /* renamed from: e */
        public static Bitmap m71e(MediaDescription description) {
            return description.getIconBitmap();
        }

        @Nullable
        @DoNotInline
        /* renamed from: f */
        public static Uri m72f(MediaDescription description) {
            return description.getIconUri();
        }

        @Nullable
        @DoNotInline
        /* renamed from: g */
        public static String m73g(MediaDescription description) {
            return description.getMediaId();
        }

        @Nullable
        @DoNotInline
        /* renamed from: h */
        public static CharSequence m74h(MediaDescription description) {
            return description.getSubtitle();
        }

        @Nullable
        @DoNotInline
        /* renamed from: i */
        public static CharSequence m75i(MediaDescription description) {
            return description.getTitle();
        }

        @DoNotInline
        /* renamed from: j */
        public static void m76j(MediaDescription.Builder builder, @Nullable CharSequence description) {
            builder.setDescription(description);
        }

        @DoNotInline
        /* renamed from: k */
        public static void m77k(MediaDescription.Builder builder, @Nullable Bundle extras) {
            builder.setExtras(extras);
        }

        @DoNotInline
        /* renamed from: l */
        public static void m78l(MediaDescription.Builder builder, @Nullable Bitmap icon) {
            builder.setIconBitmap(icon);
        }

        @DoNotInline
        /* renamed from: m */
        public static void m79m(MediaDescription.Builder builder, @Nullable Uri iconUri) {
            builder.setIconUri(iconUri);
        }

        @DoNotInline
        /* renamed from: n */
        public static void m80n(MediaDescription.Builder builder, @Nullable String mediaId) {
            builder.setMediaId(mediaId);
        }

        @DoNotInline
        /* renamed from: o */
        public static void m81o(MediaDescription.Builder builder, @Nullable CharSequence subtitle) {
            builder.setSubtitle(subtitle);
        }

        @DoNotInline
        /* renamed from: p */
        public static void m82p(MediaDescription.Builder builder, @Nullable CharSequence title) {
            builder.setTitle(title);
        }
    }

    @RequiresApi(23)
    /* renamed from: android.support.v4.media.MediaDescriptionCompat$c */
    /* loaded from: classes3.dex */
    public static class C0036c {
        @Nullable
        @DoNotInline
        /* renamed from: a */
        public static Uri m83a(MediaDescription description) {
            return description.getMediaUri();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m84b(MediaDescription.Builder builder, @Nullable Uri mediaUri) {
            builder.setMediaUri(mediaUri);
        }
    }

    public MediaDescriptionCompat(String mediaId, CharSequence title, CharSequence subtitle, CharSequence description, Bitmap icon, Uri iconUri, Bundle extras, Uri mediaUri) {
        this.mMediaId = mediaId;
        this.mTitle = title;
        this.mSubtitle = subtitle;
        this.mDescription = description;
        this.mIcon = icon;
        this.mIconUri = iconUri;
        this.mExtras = extras;
        this.mMediaUri = mediaUri;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaDescriptionCompat fromMediaDescription(java.lang.Object r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L79
            android.support.v4.media.MediaDescriptionCompat$Builder r1 = new android.support.v4.media.MediaDescriptionCompat$Builder
            r1.<init>()
            android.media.MediaDescription r8 = (android.media.MediaDescription) r8
            java.lang.String r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m73g(r8)
            r1.setMediaId(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m75i(r8)
            r1.setTitle(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m74h(r8)
            r1.setSubtitle(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m69c(r8)
            r1.setDescription(r2)
            android.graphics.Bitmap r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m71e(r8)
            r1.setIconBitmap(r2)
            android.net.Uri r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m72f(r8)
            r1.setIconUri(r2)
            android.os.Bundle r2 = android.support.v4.media.MediaDescriptionCompat.C0035b.m70d(r8)
            if (r2 == 0) goto L3e
            android.os.Bundle r2 = android.support.v4.media.session.MediaSessionCompat.unparcelWithClassLoader(r2)
        L3e:
            java.lang.String r3 = "android.support.v4.media.description.MEDIA_URI"
            if (r2 == 0) goto L49
            android.os.Parcelable r4 = r2.getParcelable(r3)
            android.net.Uri r4 = (android.net.Uri) r4
            goto L4a
        L49:
            r4 = r0
        L4a:
            if (r4 == 0) goto L62
            java.lang.String r5 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r6 = r2.containsKey(r5)
            if (r6 == 0) goto L5c
            int r6 = r2.size()
            r7 = 2
            if (r6 != r7) goto L5c
            goto L63
        L5c:
            r2.remove(r3)
            r2.remove(r5)
        L62:
            r0 = r2
        L63:
            r1.setExtras(r0)
            if (r4 == 0) goto L6c
            r1.setMediaUri(r4)
            goto L73
        L6c:
            android.net.Uri r0 = android.support.v4.media.MediaDescriptionCompat.C0036c.m83a(r8)
            r1.setMediaUri(r0)
        L73:
            android.support.v4.media.MediaDescriptionCompat r0 = r1.build()
            r0.mDescriptionFwk = r8
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.fromMediaDescription(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.mDescription;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Nullable
    public Bitmap getIconBitmap() {
        return this.mIcon;
    }

    @Nullable
    public Uri getIconUri() {
        return this.mIconUri;
    }

    public Object getMediaDescription() {
        MediaDescription mediaDescription = this.mDescriptionFwk;
        if (mediaDescription != null) {
            return mediaDescription;
        }
        MediaDescription.Builder m68b = C0035b.m68b();
        C0035b.m80n(m68b, this.mMediaId);
        C0035b.m82p(m68b, this.mTitle);
        C0035b.m81o(m68b, this.mSubtitle);
        C0035b.m76j(m68b, this.mDescription);
        C0035b.m78l(m68b, this.mIcon);
        C0035b.m79m(m68b, this.mIconUri);
        C0035b.m77k(m68b, this.mExtras);
        C0036c.m84b(m68b, this.mMediaUri);
        MediaDescription m67a = C0035b.m67a(m68b);
        this.mDescriptionFwk = m67a;
        return m67a;
    }

    @Nullable
    public String getMediaId() {
        return this.mMediaId;
    }

    @Nullable
    public Uri getMediaUri() {
        return this.mMediaUri;
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.mTitle;
    }

    public String toString() {
        return ((Object) this.mTitle) + ", " + ((Object) this.mSubtitle) + ", " + ((Object) this.mDescription);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        ((MediaDescription) getMediaDescription()).writeToParcel(dest, flags);
    }

    public MediaDescriptionCompat(Parcel in) {
        this.mMediaId = in.readString();
        this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        this.mSubtitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        this.mDescription = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.mIcon = (Bitmap) in.readParcelable(classLoader);
        this.mIconUri = (Uri) in.readParcelable(classLoader);
        this.mExtras = in.readBundle(classLoader);
        this.mMediaUri = (Uri) in.readParcelable(classLoader);
    }
}
