package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Objects;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
public final class MediaMetadata implements Bundleable {
    public static final int FOLDER_TYPE_ALBUMS = 2;
    public static final int FOLDER_TYPE_ARTISTS = 3;
    public static final int FOLDER_TYPE_GENRES = 4;
    public static final int FOLDER_TYPE_MIXED = 0;
    public static final int FOLDER_TYPE_NONE = -1;
    public static final int FOLDER_TYPE_PLAYLISTS = 5;
    public static final int FOLDER_TYPE_TITLES = 1;
    public static final int FOLDER_TYPE_YEARS = 6;

    /* renamed from: J */
    public static final int f22542J = 22;

    /* renamed from: O */
    public static final int f22543O = 23;
    public static final int PICTURE_TYPE_ARTIST_PERFORMER = 8;
    public static final int PICTURE_TYPE_A_BRIGHT_COLORED_FISH = 17;
    public static final int PICTURE_TYPE_BACK_COVER = 4;
    public static final int PICTURE_TYPE_BAND_ARTIST_LOGO = 19;
    public static final int PICTURE_TYPE_BAND_ORCHESTRA = 10;
    public static final int PICTURE_TYPE_COMPOSER = 11;
    public static final int PICTURE_TYPE_CONDUCTOR = 9;
    public static final int PICTURE_TYPE_DURING_PERFORMANCE = 15;
    public static final int PICTURE_TYPE_DURING_RECORDING = 14;
    public static final int PICTURE_TYPE_FILE_ICON = 1;
    public static final int PICTURE_TYPE_FILE_ICON_OTHER = 2;
    public static final int PICTURE_TYPE_FRONT_COVER = 3;
    public static final int PICTURE_TYPE_ILLUSTRATION = 18;
    public static final int PICTURE_TYPE_LEAD_ARTIST_PERFORMER = 7;
    public static final int PICTURE_TYPE_LEAFLET_PAGE = 5;
    public static final int PICTURE_TYPE_LYRICIST = 12;
    public static final int PICTURE_TYPE_MEDIA = 6;
    public static final int PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE = 16;
    public static final int PICTURE_TYPE_OTHER = 0;
    public static final int PICTURE_TYPE_PUBLISHER_STUDIO_LOGO = 20;
    public static final int PICTURE_TYPE_RECORDING_LOCATION = 13;

    /* renamed from: Q */
    public static final int f22544Q = 24;

    /* renamed from: Z */
    public static final int f22545Z = 25;

    /* renamed from: e */
    public static final int f22546e = 0;

    /* renamed from: f */
    public static final int f22547f = 1;

    /* renamed from: g */
    public static final int f22548g = 2;

    /* renamed from: h */
    public static final int f22549h = 3;

    /* renamed from: i */
    public static final int f22550i = 4;

    /* renamed from: j */
    public static final int f22551j = 5;

    /* renamed from: k */
    public static final int f22552k = 6;

    /* renamed from: k0 */
    public static final int f22553k0 = 26;

    /* renamed from: l */
    public static final int f22554l = 7;

    /* renamed from: m */
    public static final int f22555m = 8;

    /* renamed from: n */
    public static final int f22556n = 9;

    /* renamed from: o */
    public static final int f22557o = 10;

    /* renamed from: p */
    public static final int f22558p = 11;

    /* renamed from: q */
    public static final int f22559q = 12;

    /* renamed from: q0 */
    public static final int f22560q0 = 27;

    /* renamed from: r */
    public static final int f22561r = 13;

    /* renamed from: s */
    public static final int f22562s = 14;

    /* renamed from: t */
    public static final int f22563t = 15;

    /* renamed from: t0 */
    public static final int f22564t0 = 28;

    /* renamed from: u */
    public static final int f22565u = 16;

    /* renamed from: u0 */
    public static final int f22566u0 = 29;

    /* renamed from: v */
    public static final int f22567v = 17;

    /* renamed from: v0 */
    public static final int f22568v0 = 30;

    /* renamed from: w */
    public static final int f22569w = 18;

    /* renamed from: w0 */
    public static final int f22570w0 = 1000;

    /* renamed from: x */
    public static final int f22571x = 19;

    /* renamed from: y */
    public static final int f22572y = 20;

    /* renamed from: z */
    public static final int f22573z = 21;

    @Nullable
    public final CharSequence albumArtist;

    @Nullable
    public final CharSequence albumTitle;

    @Nullable
    public final CharSequence artist;

    @Nullable
    public final byte[] artworkData;

    @Nullable
    public final Integer artworkDataType;

    @Nullable
    public final Uri artworkUri;

    @Nullable
    public final CharSequence compilation;

    @Nullable
    public final CharSequence composer;

    @Nullable
    public final CharSequence conductor;

    @Nullable
    public final CharSequence description;

    @Nullable
    public final Integer discNumber;

    @Nullable
    public final CharSequence displayTitle;

    @Nullable
    public final Bundle extras;

    @Nullable
    public final Integer folderType;

    @Nullable
    public final CharSequence genre;

    @Nullable
    public final Boolean isPlayable;

    @Nullable
    public final Uri mediaUri;

    @Nullable
    public final Rating overallRating;

    @Nullable
    public final Integer recordingDay;

    @Nullable
    public final Integer recordingMonth;

    @Nullable
    public final Integer recordingYear;

    @Nullable
    public final Integer releaseDay;

    @Nullable
    public final Integer releaseMonth;

    @Nullable
    public final Integer releaseYear;

    @Nullable
    public final CharSequence station;

    @Nullable
    public final CharSequence subtitle;

    @Nullable
    public final CharSequence title;

    @Nullable
    public final Integer totalDiscCount;

    @Nullable
    public final Integer totalTrackCount;

    @Nullable
    public final Integer trackNumber;

    @Nullable
    public final Rating userRating;

    @Nullable
    public final CharSequence writer;

    @Nullable
    @Deprecated
    public final Integer year;
    public static final MediaMetadata EMPTY = new Builder().build();
    public static final Bundleable.Creator<MediaMetadata> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.sij
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            MediaMetadata m17905b;
            m17905b = MediaMetadata.m17905b(bundle);
            return m17905b;
        }
    };

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: A */
        @Nullable
        public Integer f22574A;

        /* renamed from: B */
        @Nullable
        public Integer f22575B;

        /* renamed from: C */
        @Nullable
        public CharSequence f22576C;

        /* renamed from: D */
        @Nullable
        public CharSequence f22577D;

        /* renamed from: E */
        @Nullable
        public CharSequence f22578E;

        /* renamed from: F */
        @Nullable
        public Bundle f22579F;

        /* renamed from: a */
        @Nullable
        public CharSequence f22580a;

        /* renamed from: b */
        @Nullable
        public CharSequence f22581b;

        /* renamed from: c */
        @Nullable
        public CharSequence f22582c;

        /* renamed from: d */
        @Nullable
        public CharSequence f22583d;

        /* renamed from: e */
        @Nullable
        public CharSequence f22584e;

        /* renamed from: f */
        @Nullable
        public CharSequence f22585f;

        /* renamed from: g */
        @Nullable
        public CharSequence f22586g;

        /* renamed from: h */
        @Nullable
        public Uri f22587h;

        /* renamed from: i */
        @Nullable
        public Rating f22588i;

        /* renamed from: j */
        @Nullable
        public Rating f22589j;

        /* renamed from: k */
        @Nullable
        public byte[] f22590k;

        /* renamed from: l */
        @Nullable
        public Integer f22591l;

        /* renamed from: m */
        @Nullable
        public Uri f22592m;

        /* renamed from: n */
        @Nullable
        public Integer f22593n;

        /* renamed from: o */
        @Nullable
        public Integer f22594o;

        /* renamed from: p */
        @Nullable
        public Integer f22595p;

        /* renamed from: q */
        @Nullable
        public Boolean f22596q;

        /* renamed from: r */
        @Nullable
        public Integer f22597r;

        /* renamed from: s */
        @Nullable
        public Integer f22598s;

        /* renamed from: t */
        @Nullable
        public Integer f22599t;

        /* renamed from: u */
        @Nullable
        public Integer f22600u;

        /* renamed from: v */
        @Nullable
        public Integer f22601v;

        /* renamed from: w */
        @Nullable
        public Integer f22602w;

        /* renamed from: x */
        @Nullable
        public CharSequence f22603x;

        /* renamed from: y */
        @Nullable
        public CharSequence f22604y;

        /* renamed from: z */
        @Nullable
        public CharSequence f22605z;

        public MediaMetadata build() {
            return new MediaMetadata(this);
        }

        public Builder maybeSetArtworkData(byte[] bArr, int i) {
            if (this.f22590k == null || Util.areEqual(Integer.valueOf(i), 3) || !Util.areEqual(this.f22591l, 3)) {
                this.f22590k = (byte[]) bArr.clone();
                this.f22591l = Integer.valueOf(i);
            }
            return this;
        }

        public Builder populate(@Nullable MediaMetadata mediaMetadata) {
            if (mediaMetadata == null) {
                return this;
            }
            CharSequence charSequence = mediaMetadata.title;
            if (charSequence != null) {
                setTitle(charSequence);
            }
            CharSequence charSequence2 = mediaMetadata.artist;
            if (charSequence2 != null) {
                setArtist(charSequence2);
            }
            CharSequence charSequence3 = mediaMetadata.albumTitle;
            if (charSequence3 != null) {
                setAlbumTitle(charSequence3);
            }
            CharSequence charSequence4 = mediaMetadata.albumArtist;
            if (charSequence4 != null) {
                setAlbumArtist(charSequence4);
            }
            CharSequence charSequence5 = mediaMetadata.displayTitle;
            if (charSequence5 != null) {
                setDisplayTitle(charSequence5);
            }
            CharSequence charSequence6 = mediaMetadata.subtitle;
            if (charSequence6 != null) {
                setSubtitle(charSequence6);
            }
            CharSequence charSequence7 = mediaMetadata.description;
            if (charSequence7 != null) {
                setDescription(charSequence7);
            }
            Uri uri = mediaMetadata.mediaUri;
            if (uri != null) {
                setMediaUri(uri);
            }
            Rating rating = mediaMetadata.userRating;
            if (rating != null) {
                setUserRating(rating);
            }
            Rating rating2 = mediaMetadata.overallRating;
            if (rating2 != null) {
                setOverallRating(rating2);
            }
            byte[] bArr = mediaMetadata.artworkData;
            if (bArr != null) {
                setArtworkData(bArr, mediaMetadata.artworkDataType);
            }
            Uri uri2 = mediaMetadata.artworkUri;
            if (uri2 != null) {
                setArtworkUri(uri2);
            }
            Integer num = mediaMetadata.trackNumber;
            if (num != null) {
                setTrackNumber(num);
            }
            Integer num2 = mediaMetadata.totalTrackCount;
            if (num2 != null) {
                setTotalTrackCount(num2);
            }
            Integer num3 = mediaMetadata.folderType;
            if (num3 != null) {
                setFolderType(num3);
            }
            Boolean bool = mediaMetadata.isPlayable;
            if (bool != null) {
                setIsPlayable(bool);
            }
            Integer num4 = mediaMetadata.year;
            if (num4 != null) {
                setRecordingYear(num4);
            }
            Integer num5 = mediaMetadata.recordingYear;
            if (num5 != null) {
                setRecordingYear(num5);
            }
            Integer num6 = mediaMetadata.recordingMonth;
            if (num6 != null) {
                setRecordingMonth(num6);
            }
            Integer num7 = mediaMetadata.recordingDay;
            if (num7 != null) {
                setRecordingDay(num7);
            }
            Integer num8 = mediaMetadata.releaseYear;
            if (num8 != null) {
                setReleaseYear(num8);
            }
            Integer num9 = mediaMetadata.releaseMonth;
            if (num9 != null) {
                setReleaseMonth(num9);
            }
            Integer num10 = mediaMetadata.releaseDay;
            if (num10 != null) {
                setReleaseDay(num10);
            }
            CharSequence charSequence8 = mediaMetadata.writer;
            if (charSequence8 != null) {
                setWriter(charSequence8);
            }
            CharSequence charSequence9 = mediaMetadata.composer;
            if (charSequence9 != null) {
                setComposer(charSequence9);
            }
            CharSequence charSequence10 = mediaMetadata.conductor;
            if (charSequence10 != null) {
                setConductor(charSequence10);
            }
            Integer num11 = mediaMetadata.discNumber;
            if (num11 != null) {
                setDiscNumber(num11);
            }
            Integer num12 = mediaMetadata.totalDiscCount;
            if (num12 != null) {
                setTotalDiscCount(num12);
            }
            CharSequence charSequence11 = mediaMetadata.genre;
            if (charSequence11 != null) {
                setGenre(charSequence11);
            }
            CharSequence charSequence12 = mediaMetadata.compilation;
            if (charSequence12 != null) {
                setCompilation(charSequence12);
            }
            CharSequence charSequence13 = mediaMetadata.station;
            if (charSequence13 != null) {
                setStation(charSequence13);
            }
            Bundle bundle = mediaMetadata.extras;
            if (bundle != null) {
                setExtras(bundle);
            }
            return this;
        }

        public Builder populateFromMetadata(Metadata metadata) {
            for (int i = 0; i < metadata.length(); i++) {
                metadata.get(i).populateMediaMetadata(this);
            }
            return this;
        }

        public Builder setAlbumArtist(@Nullable CharSequence charSequence) {
            this.f22583d = charSequence;
            return this;
        }

        public Builder setAlbumTitle(@Nullable CharSequence charSequence) {
            this.f22582c = charSequence;
            return this;
        }

        public Builder setArtist(@Nullable CharSequence charSequence) {
            this.f22581b = charSequence;
            return this;
        }

        @Deprecated
        public Builder setArtworkData(@Nullable byte[] bArr) {
            return setArtworkData(bArr, null);
        }

        public Builder setArtworkUri(@Nullable Uri uri) {
            this.f22592m = uri;
            return this;
        }

        public Builder setCompilation(@Nullable CharSequence charSequence) {
            this.f22577D = charSequence;
            return this;
        }

        public Builder setComposer(@Nullable CharSequence charSequence) {
            this.f22604y = charSequence;
            return this;
        }

        public Builder setConductor(@Nullable CharSequence charSequence) {
            this.f22605z = charSequence;
            return this;
        }

        public Builder setDescription(@Nullable CharSequence charSequence) {
            this.f22586g = charSequence;
            return this;
        }

        public Builder setDiscNumber(@Nullable Integer num) {
            this.f22574A = num;
            return this;
        }

        public Builder setDisplayTitle(@Nullable CharSequence charSequence) {
            this.f22584e = charSequence;
            return this;
        }

        public Builder setExtras(@Nullable Bundle bundle) {
            this.f22579F = bundle;
            return this;
        }

        public Builder setFolderType(@Nullable Integer num) {
            this.f22595p = num;
            return this;
        }

        public Builder setGenre(@Nullable CharSequence charSequence) {
            this.f22576C = charSequence;
            return this;
        }

        public Builder setIsPlayable(@Nullable Boolean bool) {
            this.f22596q = bool;
            return this;
        }

        public Builder setMediaUri(@Nullable Uri uri) {
            this.f22587h = uri;
            return this;
        }

        public Builder setOverallRating(@Nullable Rating rating) {
            this.f22589j = rating;
            return this;
        }

        public Builder setRecordingDay(@IntRange(from = 1, m281to = 31) @Nullable Integer num) {
            this.f22599t = num;
            return this;
        }

        public Builder setRecordingMonth(@IntRange(from = 1, m281to = 12) @Nullable Integer num) {
            this.f22598s = num;
            return this;
        }

        public Builder setRecordingYear(@Nullable Integer num) {
            this.f22597r = num;
            return this;
        }

        public Builder setReleaseDay(@IntRange(from = 1, m281to = 31) @Nullable Integer num) {
            this.f22602w = num;
            return this;
        }

        public Builder setReleaseMonth(@IntRange(from = 1, m281to = 12) @Nullable Integer num) {
            this.f22601v = num;
            return this;
        }

        public Builder setReleaseYear(@Nullable Integer num) {
            this.f22600u = num;
            return this;
        }

        public Builder setStation(@Nullable CharSequence charSequence) {
            this.f22578E = charSequence;
            return this;
        }

        public Builder setSubtitle(@Nullable CharSequence charSequence) {
            this.f22585f = charSequence;
            return this;
        }

        public Builder setTitle(@Nullable CharSequence charSequence) {
            this.f22580a = charSequence;
            return this;
        }

        public Builder setTotalDiscCount(@Nullable Integer num) {
            this.f22575B = num;
            return this;
        }

        public Builder setTotalTrackCount(@Nullable Integer num) {
            this.f22594o = num;
            return this;
        }

        public Builder setTrackNumber(@Nullable Integer num) {
            this.f22593n = num;
            return this;
        }

        public Builder setUserRating(@Nullable Rating rating) {
            this.f22588i = rating;
            return this;
        }

        public Builder setWriter(@Nullable CharSequence charSequence) {
            this.f22603x = charSequence;
            return this;
        }

        @Deprecated
        public Builder setYear(@Nullable Integer num) {
            return setRecordingYear(num);
        }

        public Builder() {
        }

        public Builder setArtworkData(@Nullable byte[] bArr, @Nullable Integer num) {
            this.f22590k = bArr == null ? null : (byte[]) bArr.clone();
            this.f22591l = num;
            return this;
        }

        public Builder(MediaMetadata mediaMetadata) {
            this.f22580a = mediaMetadata.title;
            this.f22581b = mediaMetadata.artist;
            this.f22582c = mediaMetadata.albumTitle;
            this.f22583d = mediaMetadata.albumArtist;
            this.f22584e = mediaMetadata.displayTitle;
            this.f22585f = mediaMetadata.subtitle;
            this.f22586g = mediaMetadata.description;
            this.f22587h = mediaMetadata.mediaUri;
            this.f22588i = mediaMetadata.userRating;
            this.f22589j = mediaMetadata.overallRating;
            this.f22590k = mediaMetadata.artworkData;
            this.f22591l = mediaMetadata.artworkDataType;
            this.f22592m = mediaMetadata.artworkUri;
            this.f22593n = mediaMetadata.trackNumber;
            this.f22594o = mediaMetadata.totalTrackCount;
            this.f22595p = mediaMetadata.folderType;
            this.f22596q = mediaMetadata.isPlayable;
            this.f22597r = mediaMetadata.recordingYear;
            this.f22598s = mediaMetadata.recordingMonth;
            this.f22599t = mediaMetadata.recordingDay;
            this.f22600u = mediaMetadata.releaseYear;
            this.f22601v = mediaMetadata.releaseMonth;
            this.f22602w = mediaMetadata.releaseDay;
            this.f22603x = mediaMetadata.writer;
            this.f22604y = mediaMetadata.composer;
            this.f22605z = mediaMetadata.conductor;
            this.f22574A = mediaMetadata.discNumber;
            this.f22575B = mediaMetadata.totalDiscCount;
            this.f22576C = mediaMetadata.genre;
            this.f22577D = mediaMetadata.compilation;
            this.f22578E = mediaMetadata.station;
            this.f22579F = mediaMetadata.extras;
        }

        public Builder populateFromMetadata(List<Metadata> list) {
            for (int i = 0; i < list.size(); i++) {
                Metadata metadata = list.get(i);
                for (int i2 = 0; i2 < metadata.length(); i2++) {
                    metadata.get(i2).populateMediaMetadata(this);
                }
            }
            return this;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface FolderType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface PictureType {
    }

    /* renamed from: b */
    public static MediaMetadata m17905b(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        Builder builder = new Builder();
        builder.setTitle(bundle.getCharSequence(m17906c(0))).setArtist(bundle.getCharSequence(m17906c(1))).setAlbumTitle(bundle.getCharSequence(m17906c(2))).setAlbumArtist(bundle.getCharSequence(m17906c(3))).setDisplayTitle(bundle.getCharSequence(m17906c(4))).setSubtitle(bundle.getCharSequence(m17906c(5))).setDescription(bundle.getCharSequence(m17906c(6))).setMediaUri((Uri) bundle.getParcelable(m17906c(7))).setArtworkData(bundle.getByteArray(m17906c(10)), bundle.containsKey(m17906c(29)) ? Integer.valueOf(bundle.getInt(m17906c(29))) : null).setArtworkUri((Uri) bundle.getParcelable(m17906c(11))).setWriter(bundle.getCharSequence(m17906c(22))).setComposer(bundle.getCharSequence(m17906c(23))).setConductor(bundle.getCharSequence(m17906c(24))).setGenre(bundle.getCharSequence(m17906c(27))).setCompilation(bundle.getCharSequence(m17906c(28))).setStation(bundle.getCharSequence(m17906c(30))).setExtras(bundle.getBundle(m17906c(1000)));
        if (bundle.containsKey(m17906c(8)) && (bundle3 = bundle.getBundle(m17906c(8))) != null) {
            builder.setUserRating(Rating.CREATOR.fromBundle(bundle3));
        }
        if (bundle.containsKey(m17906c(9)) && (bundle2 = bundle.getBundle(m17906c(9))) != null) {
            builder.setOverallRating(Rating.CREATOR.fromBundle(bundle2));
        }
        if (bundle.containsKey(m17906c(12))) {
            builder.setTrackNumber(Integer.valueOf(bundle.getInt(m17906c(12))));
        }
        if (bundle.containsKey(m17906c(13))) {
            builder.setTotalTrackCount(Integer.valueOf(bundle.getInt(m17906c(13))));
        }
        if (bundle.containsKey(m17906c(14))) {
            builder.setFolderType(Integer.valueOf(bundle.getInt(m17906c(14))));
        }
        if (bundle.containsKey(m17906c(15))) {
            builder.setIsPlayable(Boolean.valueOf(bundle.getBoolean(m17906c(15))));
        }
        if (bundle.containsKey(m17906c(16))) {
            builder.setRecordingYear(Integer.valueOf(bundle.getInt(m17906c(16))));
        }
        if (bundle.containsKey(m17906c(17))) {
            builder.setRecordingMonth(Integer.valueOf(bundle.getInt(m17906c(17))));
        }
        if (bundle.containsKey(m17906c(18))) {
            builder.setRecordingDay(Integer.valueOf(bundle.getInt(m17906c(18))));
        }
        if (bundle.containsKey(m17906c(19))) {
            builder.setReleaseYear(Integer.valueOf(bundle.getInt(m17906c(19))));
        }
        if (bundle.containsKey(m17906c(20))) {
            builder.setReleaseMonth(Integer.valueOf(bundle.getInt(m17906c(20))));
        }
        if (bundle.containsKey(m17906c(21))) {
            builder.setReleaseDay(Integer.valueOf(bundle.getInt(m17906c(21))));
        }
        if (bundle.containsKey(m17906c(25))) {
            builder.setDiscNumber(Integer.valueOf(bundle.getInt(m17906c(25))));
        }
        if (bundle.containsKey(m17906c(26))) {
            builder.setTotalDiscCount(Integer.valueOf(bundle.getInt(m17906c(26))));
        }
        return builder.build();
    }

    /* renamed from: c */
    public static String m17906c(int i) {
        return Integer.toString(i, 36);
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MediaMetadata.class != obj.getClass()) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return Util.areEqual(this.title, mediaMetadata.title) && Util.areEqual(this.artist, mediaMetadata.artist) && Util.areEqual(this.albumTitle, mediaMetadata.albumTitle) && Util.areEqual(this.albumArtist, mediaMetadata.albumArtist) && Util.areEqual(this.displayTitle, mediaMetadata.displayTitle) && Util.areEqual(this.subtitle, mediaMetadata.subtitle) && Util.areEqual(this.description, mediaMetadata.description) && Util.areEqual(this.mediaUri, mediaMetadata.mediaUri) && Util.areEqual(this.userRating, mediaMetadata.userRating) && Util.areEqual(this.overallRating, mediaMetadata.overallRating) && Arrays.equals(this.artworkData, mediaMetadata.artworkData) && Util.areEqual(this.artworkDataType, mediaMetadata.artworkDataType) && Util.areEqual(this.artworkUri, mediaMetadata.artworkUri) && Util.areEqual(this.trackNumber, mediaMetadata.trackNumber) && Util.areEqual(this.totalTrackCount, mediaMetadata.totalTrackCount) && Util.areEqual(this.folderType, mediaMetadata.folderType) && Util.areEqual(this.isPlayable, mediaMetadata.isPlayable) && Util.areEqual(this.recordingYear, mediaMetadata.recordingYear) && Util.areEqual(this.recordingMonth, mediaMetadata.recordingMonth) && Util.areEqual(this.recordingDay, mediaMetadata.recordingDay) && Util.areEqual(this.releaseYear, mediaMetadata.releaseYear) && Util.areEqual(this.releaseMonth, mediaMetadata.releaseMonth) && Util.areEqual(this.releaseDay, mediaMetadata.releaseDay) && Util.areEqual(this.writer, mediaMetadata.writer) && Util.areEqual(this.composer, mediaMetadata.composer) && Util.areEqual(this.conductor, mediaMetadata.conductor) && Util.areEqual(this.discNumber, mediaMetadata.discNumber) && Util.areEqual(this.totalDiscCount, mediaMetadata.totalDiscCount) && Util.areEqual(this.genre, mediaMetadata.genre) && Util.areEqual(this.compilation, mediaMetadata.compilation) && Util.areEqual(this.station, mediaMetadata.station);
    }

    public int hashCode() {
        return Objects.hashCode(this.title, this.artist, this.albumTitle, this.albumArtist, this.displayTitle, this.subtitle, this.description, this.mediaUri, this.userRating, this.overallRating, Integer.valueOf(Arrays.hashCode(this.artworkData)), this.artworkDataType, this.artworkUri, this.trackNumber, this.totalTrackCount, this.folderType, this.isPlayable, this.recordingYear, this.recordingMonth, this.recordingDay, this.releaseYear, this.releaseMonth, this.releaseDay, this.writer, this.composer, this.conductor, this.discNumber, this.totalDiscCount, this.genre, this.compilation, this.station);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(m17906c(0), this.title);
        bundle.putCharSequence(m17906c(1), this.artist);
        bundle.putCharSequence(m17906c(2), this.albumTitle);
        bundle.putCharSequence(m17906c(3), this.albumArtist);
        bundle.putCharSequence(m17906c(4), this.displayTitle);
        bundle.putCharSequence(m17906c(5), this.subtitle);
        bundle.putCharSequence(m17906c(6), this.description);
        bundle.putParcelable(m17906c(7), this.mediaUri);
        bundle.putByteArray(m17906c(10), this.artworkData);
        bundle.putParcelable(m17906c(11), this.artworkUri);
        bundle.putCharSequence(m17906c(22), this.writer);
        bundle.putCharSequence(m17906c(23), this.composer);
        bundle.putCharSequence(m17906c(24), this.conductor);
        bundle.putCharSequence(m17906c(27), this.genre);
        bundle.putCharSequence(m17906c(28), this.compilation);
        bundle.putCharSequence(m17906c(30), this.station);
        if (this.userRating != null) {
            bundle.putBundle(m17906c(8), this.userRating.toBundle());
        }
        if (this.overallRating != null) {
            bundle.putBundle(m17906c(9), this.overallRating.toBundle());
        }
        if (this.trackNumber != null) {
            bundle.putInt(m17906c(12), this.trackNumber.intValue());
        }
        if (this.totalTrackCount != null) {
            bundle.putInt(m17906c(13), this.totalTrackCount.intValue());
        }
        if (this.folderType != null) {
            bundle.putInt(m17906c(14), this.folderType.intValue());
        }
        if (this.isPlayable != null) {
            bundle.putBoolean(m17906c(15), this.isPlayable.booleanValue());
        }
        if (this.recordingYear != null) {
            bundle.putInt(m17906c(16), this.recordingYear.intValue());
        }
        if (this.recordingMonth != null) {
            bundle.putInt(m17906c(17), this.recordingMonth.intValue());
        }
        if (this.recordingDay != null) {
            bundle.putInt(m17906c(18), this.recordingDay.intValue());
        }
        if (this.releaseYear != null) {
            bundle.putInt(m17906c(19), this.releaseYear.intValue());
        }
        if (this.releaseMonth != null) {
            bundle.putInt(m17906c(20), this.releaseMonth.intValue());
        }
        if (this.releaseDay != null) {
            bundle.putInt(m17906c(21), this.releaseDay.intValue());
        }
        if (this.discNumber != null) {
            bundle.putInt(m17906c(25), this.discNumber.intValue());
        }
        if (this.totalDiscCount != null) {
            bundle.putInt(m17906c(26), this.totalDiscCount.intValue());
        }
        if (this.artworkDataType != null) {
            bundle.putInt(m17906c(29), this.artworkDataType.intValue());
        }
        if (this.extras != null) {
            bundle.putBundle(m17906c(1000), this.extras);
        }
        return bundle;
    }

    public MediaMetadata(Builder builder) {
        this.title = builder.f22580a;
        this.artist = builder.f22581b;
        this.albumTitle = builder.f22582c;
        this.albumArtist = builder.f22583d;
        this.displayTitle = builder.f22584e;
        this.subtitle = builder.f22585f;
        this.description = builder.f22586g;
        this.mediaUri = builder.f22587h;
        this.userRating = builder.f22588i;
        this.overallRating = builder.f22589j;
        this.artworkData = builder.f22590k;
        this.artworkDataType = builder.f22591l;
        this.artworkUri = builder.f22592m;
        this.trackNumber = builder.f22593n;
        this.totalTrackCount = builder.f22594o;
        this.folderType = builder.f22595p;
        this.isPlayable = builder.f22596q;
        this.year = builder.f22597r;
        this.recordingYear = builder.f22597r;
        this.recordingMonth = builder.f22598s;
        this.recordingDay = builder.f22599t;
        this.releaseYear = builder.f22600u;
        this.releaseMonth = builder.f22601v;
        this.releaseDay = builder.f22602w;
        this.writer = builder.f22603x;
        this.composer = builder.f22604y;
        this.conductor = builder.f22605z;
        this.discNumber = builder.f22574A;
        this.totalDiscCount = builder.f22575B;
        this.genre = builder.f22576C;
        this.compilation = builder.f22577D;
        this.station = builder.f22578E;
        this.extras = builder.f22579F;
    }
}
