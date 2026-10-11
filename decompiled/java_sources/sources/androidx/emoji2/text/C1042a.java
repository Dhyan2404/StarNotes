package androidx.emoji2.text;

import android.text.TextPaint;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PaintCompat;
import androidx.emoji2.text.EmojiCompat;

@AnyThread
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: androidx.emoji2.text.a */
/* loaded from: classes3.dex */
public class C1042a implements EmojiCompat.GlyphChecker {

    /* renamed from: b */
    public static final int f7014b = 10;

    /* renamed from: c */
    public static final ThreadLocal<StringBuilder> f7015c = new ThreadLocal<>();

    /* renamed from: a */
    public final TextPaint f7016a;

    public C1042a() {
        TextPaint textPaint = new TextPaint();
        this.f7016a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    /* renamed from: a */
    public static StringBuilder m4268a() {
        ThreadLocal<StringBuilder> threadLocal = f7015c;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        return threadLocal.get();
    }

    @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
    public boolean hasGlyph(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        StringBuilder m4268a = m4268a();
        m4268a.setLength(0);
        while (i < i2) {
            m4268a.append(charSequence.charAt(i));
            i++;
        }
        return PaintCompat.hasGlyph(this.f7016a, m4268a.toString());
    }
}
