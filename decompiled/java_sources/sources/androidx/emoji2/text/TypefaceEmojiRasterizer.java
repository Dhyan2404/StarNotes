package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@AnyThread
@RequiresApi(19)
/* loaded from: classes3.dex */
public class TypefaceEmojiRasterizer {

    /* renamed from: d */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int f7005d = 0;

    /* renamed from: e */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int f7006e = 1;

    /* renamed from: f */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int f7007f = 2;

    /* renamed from: g */
    public static final ThreadLocal<MetadataItem> f7008g = new ThreadLocal<>();

    /* renamed from: a */
    public final int f7009a;

    /* renamed from: b */
    @NonNull
    public final MetadataRepo f7010b;

    /* renamed from: c */
    public volatile int f7011c = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public @interface HasGlyph {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public TypefaceEmojiRasterizer(@NonNull MetadataRepo metadataRepo, @IntRange(from = 0) int i) {
        this.f7010b = metadataRepo;
        this.f7009a = i;
    }

    /* renamed from: a */
    public final MetadataItem m4264a() {
        ThreadLocal<MetadataItem> threadLocal = f7008g;
        MetadataItem metadataItem = threadLocal.get();
        if (metadataItem == null) {
            metadataItem = new MetadataItem();
            threadLocal.set(metadataItem);
        }
        this.f7010b.getMetadataList().list(metadataItem, this.f7009a);
        return metadataItem;
    }

    public void draw(@NonNull Canvas canvas, float f, float f2, @NonNull Paint paint) {
        Typeface m4250d = this.f7010b.m4250d();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(m4250d);
        canvas.drawText(this.f7010b.getEmojiCharArray(), this.f7009a * 2, 2, f, f2, paint);
        paint.setTypeface(typeface);
    }

    public int getCodepointAt(int i) {
        return m4264a().codepoints(i);
    }

    public int getCodepointsLength() {
        return m4264a().codepointsLength();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public short getCompatAdded() {
        return m4264a().compatAdded();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int getHasGlyph() {
        return this.f7011c & 3;
    }

    public int getHeight() {
        return m4264a().height();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int getId() {
        return m4264a().m4362id();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public short getSdkAdded() {
        return m4264a().sdkAdded();
    }

    @NonNull
    public Typeface getTypeface() {
        return this.f7010b.m4250d();
    }

    public int getWidth() {
        return m4264a().width();
    }

    public boolean isDefaultEmoji() {
        return m4264a().emojiStyle();
    }

    public boolean isPreferredSystemRender() {
        return (this.f7011c & 4) > 0;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public void resetHasGlyphCache() {
        if (isPreferredSystemRender()) {
            this.f7011c = 4;
        } else {
            this.f7011c = 0;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setExclusion(boolean z) {
        int hasGlyph = getHasGlyph();
        if (z) {
            this.f7011c = hasGlyph | 4;
        } else {
            this.f7011c = hasGlyph;
        }
    }

    @SuppressLint({"KotlinPropertyAccess"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setHasGlyph(boolean z) {
        int i = this.f7011c & 4;
        this.f7011c = z ? i | 2 : i | 1;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(getId()));
        sb.append(", codepoints:");
        int codepointsLength = getCodepointsLength();
        for (int i = 0; i < codepointsLength; i++) {
            sb.append(Integer.toHexString(getCodepointAt(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
