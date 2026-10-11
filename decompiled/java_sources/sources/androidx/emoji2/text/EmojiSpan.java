package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

@RequiresApi(19)
/* loaded from: classes3.dex */
public abstract class EmojiSpan extends ReplacementSpan {

    /* renamed from: f */
    @NonNull
    public final TypefaceEmojiRasterizer f6973f;

    /* renamed from: e */
    public final Paint.FontMetricsInt f6972e = new Paint.FontMetricsInt();

    /* renamed from: g */
    public short f6974g = -1;

    /* renamed from: h */
    public short f6975h = -1;

    /* renamed from: i */
    public float f6976i = 1.0f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public EmojiSpan(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.checkNotNull(typefaceEmojiRasterizer, "rasterizer cannot be null");
        this.f6973f = typefaceEmojiRasterizer;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: a */
    public final float m4238a() {
        return this.f6976i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: b */
    public final int m4239b() {
        return this.f6974g;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public final int getHeight() {
        return this.f6975h;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public final int getId() {
        return getTypefaceRasterizer().getId();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i, int i2, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f6972e);
        Paint.FontMetricsInt fontMetricsInt2 = this.f6972e;
        this.f6976i = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f6973f.getHeight();
        this.f6975h = (short) (this.f6973f.getHeight() * this.f6976i);
        short width = (short) (this.f6973f.getWidth() * this.f6976i);
        this.f6974g = width;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f6972e;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return width;
    }

    @NonNull
    public final TypefaceEmojiRasterizer getTypefaceRasterizer() {
        return this.f6973f;
    }
}
