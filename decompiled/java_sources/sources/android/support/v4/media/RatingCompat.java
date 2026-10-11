package android.support.v4.media;

import android.annotation.SuppressLint;
import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes3.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0038a();
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface StarStyle {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Style {
    }

    /* renamed from: android.support.v4.media.RatingCompat$a */
    /* loaded from: classes3.dex */
    public class C0038a implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel p) {
            return new RatingCompat(p.readInt(), p.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int size) {
            return new RatingCompat[size];
        }
    }

    @RequiresApi(19)
    /* renamed from: android.support.v4.media.RatingCompat$b */
    /* loaded from: classes3.dex */
    public static class C0039b {
        @DoNotInline
        /* renamed from: a */
        public static float m90a(Rating rating) {
            return rating.getPercentRating();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m91b(Rating rating) {
            return rating.getRatingStyle();
        }

        @DoNotInline
        /* renamed from: c */
        public static float m92c(Rating rating) {
            return rating.getStarRating();
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m93d(Rating rating) {
            return rating.hasHeart();
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m94e(Rating rating) {
            return rating.isRated();
        }

        @DoNotInline
        /* renamed from: f */
        public static boolean m95f(Rating rating) {
            return rating.isThumbUp();
        }

        @DoNotInline
        /* renamed from: g */
        public static Rating m96g(boolean hasHeart) {
            return Rating.newHeartRating(hasHeart);
        }

        @DoNotInline
        /* renamed from: h */
        public static Rating m97h(float percent) {
            return Rating.newPercentageRating(percent);
        }

        @DoNotInline
        /* renamed from: i */
        public static Rating m98i(int starRatingStyle, float starRating) {
            return Rating.newStarRating(starRatingStyle, starRating);
        }

        @DoNotInline
        /* renamed from: j */
        public static Rating m99j(boolean thumbIsUp) {
            return Rating.newThumbRating(thumbIsUp);
        }

        @DoNotInline
        /* renamed from: k */
        public static Rating m100k(int ratingStyle) {
            return Rating.newUnratedRating(ratingStyle);
        }
    }

    public RatingCompat(int ratingStyle, float rating) {
        this.mRatingStyle = ratingStyle;
        this.mRatingValue = rating;
    }

    public static RatingCompat fromRating(Object ratingObj) {
        RatingCompat ratingCompat = null;
        if (ratingObj != null) {
            Rating rating = (Rating) ratingObj;
            int m91b = C0039b.m91b(rating);
            if (C0039b.m94e(rating)) {
                switch (m91b) {
                    case 1:
                        ratingCompat = newHeartRating(C0039b.m93d(rating));
                        break;
                    case 2:
                        ratingCompat = newThumbRating(C0039b.m95f(rating));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat = newStarRating(m91b, C0039b.m92c(rating));
                        break;
                    case 6:
                        ratingCompat = newPercentageRating(C0039b.m90a(rating));
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompat = newUnratedRating(m91b);
            }
            ratingCompat.mRatingObj = ratingObj;
        }
        return ratingCompat;
    }

    public static RatingCompat newHeartRating(boolean hasHeart) {
        return new RatingCompat(1, hasHeart ? 1.0f : 0.0f);
    }

    public static RatingCompat newPercentageRating(float percent) {
        if (percent >= 0.0f && percent <= 100.0f) {
            return new RatingCompat(6, percent);
        }
        Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public static RatingCompat newStarRating(int starRatingStyle, float starRating) {
        float f;
        if (starRatingStyle == 3) {
            f = 3.0f;
        } else if (starRatingStyle == 4) {
            f = 4.0f;
        } else {
            if (starRatingStyle != 5) {
                Log.e(TAG, "Invalid rating style (" + starRatingStyle + ") for a star rating");
                return null;
            }
            f = 5.0f;
        }
        if (starRating >= 0.0f && starRating <= f) {
            return new RatingCompat(starRatingStyle, starRating);
        }
        Log.e(TAG, "Trying to set out of range star-based rating");
        return null;
    }

    public static RatingCompat newThumbRating(boolean thumbIsUp) {
        return new RatingCompat(2, thumbIsUp ? 1.0f : 0.0f);
    }

    public static RatingCompat newUnratedRating(int ratingStyle) {
        switch (ratingStyle) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(ratingStyle, -1.0f);
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mRatingStyle;
    }

    public float getPercentRating() {
        if (this.mRatingStyle == 6 && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x000c. Please report as an issue. */
    public Object getRating() {
        if (this.mRatingObj == null) {
            if (isRated()) {
                int i = this.mRatingStyle;
                switch (i) {
                    case 1:
                        this.mRatingObj = C0039b.m96g(hasHeart());
                        break;
                    case 2:
                        this.mRatingObj = C0039b.m99j(isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        this.mRatingObj = C0039b.m98i(i, getStarRating());
                        break;
                    case 6:
                        this.mRatingObj = C0039b.m97h(getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                this.mRatingObj = C0039b.m100k(this.mRatingStyle);
            }
        }
        return this.mRatingObj;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public float getStarRating() {
        int i = this.mRatingStyle;
        if ((i == 3 || i == 4 || i == 5) && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public boolean hasHeart() {
        return this.mRatingStyle == 1 && this.mRatingValue == 1.0f;
    }

    public boolean isRated() {
        return this.mRatingValue >= 0.0f;
    }

    public boolean isThumbUp() {
        return this.mRatingStyle == 2 && this.mRatingValue == 1.0f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.mRatingStyle);
        sb.append(" rating=");
        float f = this.mRatingValue;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mRatingStyle);
        dest.writeFloat(this.mRatingValue);
    }
}
