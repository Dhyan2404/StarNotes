package com.onyx.android.sdk.note.common.utils;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UnderlineSpan;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u0019\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 ;2\u00020\u0001:\u0001;BE\u0012\b\u00100\u001a\u0004\u0018\u00010/\u0012\b\u00102\u001a\u0004\u0018\u000101\u0012\u0006\u00103\u001a\u00020\u0007\u0012\b\u00105\u001a\u0004\u0018\u000104\u0012\u0006\u00106\u001a\u00020\u0010\u0012\u0006\u00107\u001a\u00020\u0010\u0012\u0006\u00108\u001a\u00020\r¢\u0006\u0004\b9\u0010:J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0007J \u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J\u0018\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u000bH\u0002J\u0010\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 H\u0002J\b\u0010#\u001a\u00020\u0010H\u0002J\b\u0010$\u001a\u00020\u0010H\u0002J\b\u0010%\u001a\u00020\u0010H\u0002J\u0010\u0010&\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0003\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010'\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002R\u0016\u0010)\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010(R\u0016\u0010*\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010(R\u0016\u0010+\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010(R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010-¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;", "Landroid/text/StaticLayout;", "Landroid/graphics/Canvas;", "c", "", "draw", IStyleSheet.CLASS_CANVAS, "", "firstLine", "lastLine", "drawText", "", "ch", "", "needRotate", "line", "", "getLineHeight", TypedValues.CycleType.S_WAVE_OFFSET, "getCursorPosition", gon.f71290o0, "end", "b", "a", C4921e.f26537n, "m", C4921e.f26528e, "lineStart", "lineEnd", "j", GoogleApiAvailabilityLight.f29016b, C6997f.f39671c, "", "chars", C6998g.f39679a, "i", "d", "e", "l", C6999h.f39688c, "F", "descentPosX", "baselinePosX", "mTextPosY", "Landroid/graphics/Paint$Align;", "Landroid/graphics/Paint$Align;", "textStartAlign", "", "source", "Landroid/text/TextPaint;", "paint", "width", "Landroid/text/Layout$Alignment;", "align", "spacingmult", "spacingadd", "includepad", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StaticVerticalLayout extends StaticLayout {

    /* renamed from: e */
    @NotNull
    public static final Set<Character> f43826e;

    /* renamed from: a, reason: from kotlin metadata */
    public float descentPosX;

    /* renamed from: b, reason: from kotlin metadata */
    public float baselinePosX;

    /* renamed from: c, reason: from kotlin metadata */
    public float mTextPosY;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Paint.Align textStartAlign;

    static {
        HashSet hashSet = new HashSet();
        f43826e = hashSet;
        hashSet.add((char) 12304);
        hashSet.add((char) 12305);
        hashSet.add('[');
        hashSet.add(']');
        hashSet.add('(');
        hashSet.add(')');
        hashSet.add((char) 65288);
        hashSet.add((char) 65289);
        hashSet.add('{');
        hashSet.add('}');
        hashSet.add('<');
        hashSet.add('>');
        hashSet.add((char) 12298);
        hashSet.add((char) 12299);
        hashSet.add(':');
        hashSet.add(';');
        hashSet.add(',');
        hashSet.add('/');
        hashSet.add('?');
        hashSet.add(Character.valueOf(PublicSuffixDatabase.f103895g));
    }

    public StaticVerticalLayout(@Nullable CharSequence charSequence, @Nullable TextPaint textPaint, int i, @Nullable Layout.Alignment alignment, float f, float f2, boolean z) {
        super(charSequence, textPaint, i, alignment, f, f2, z);
        this.textStartAlign = Paint.Align.RIGHT;
    }

    /* renamed from: a */
    public final void m34057a(Canvas canvas, char ch) {
        canvas.save();
        canvas.translate(0.0f, -m34062f(ch));
        canvas.rotate(90.0f, this.baselinePosX, this.mTextPosY);
        canvas.drawText(String.valueOf(ch), this.baselinePosX, this.mTextPosY, getPaint());
        canvas.restore();
    }

    /* renamed from: b */
    public final void m34058b(Canvas canvas, int start, int end) {
        char[] cArr = new char[2];
        float f = this.descentPosX;
        int i = start;
        while (i < end) {
            int codePointAt = Character.codePointAt(getText(), i);
            if (codePointAt > 65535) {
                cArr[0] = getText().charAt(i);
                int i2 = i + 1;
                cArr[1] = getText().charAt(i2);
                this.mTextPosY = m34063g(cArr) + getSecondaryHorizontal(i);
                canvas.drawText(new String(cArr), this.descentPosX, this.mTextPosY, getPaint());
                i = i2 + 1;
            } else {
                char c = (char) codePointAt;
                this.mTextPosY = m34062f(c) + getSecondaryHorizontal(i);
                if (needRotate(c)) {
                    m34057a(canvas, c);
                } else {
                    canvas.drawText(String.valueOf(c), this.descentPosX, this.mTextPosY, getPaint());
                }
                i++;
            }
        }
        if (!m34070n(start, end) || m34066j(start, end)) {
            return;
        }
        canvas.drawLine(f, 0.0f, this.descentPosX, this.mTextPosY, getPaint());
    }

    /* renamed from: c */
    public final boolean m34059c(char ch) {
        return (m34067k(ch) || m34069m(ch) || m34071o(ch)) ? false : true;
    }

    /* renamed from: d */
    public final float m34060d() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        Intrinsics.checkNotNullExpressionValue(fontMetrics, "getFontMetrics(...)");
        return Math.abs(0.0f - fontMetrics.ascent);
    }

    @Override // android.text.Layout
    public void draw(@Nullable Canvas c) {
        super.draw(c);
    }

    public final void drawText(@NotNull Canvas canvas, int firstLine, int lastLine) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.mTextPosY = 0.0f;
        this.baselinePosX = this.textStartAlign == Paint.Align.LEFT ? 0.0f : -m34060d();
        this.descentPosX = this.textStartAlign != Paint.Align.LEFT ? -m34061e() : 0.0f;
        int lineCount = getLineCount();
        while (firstLine < lineCount) {
            m34058b(canvas, getLineStart(firstLine), getLineEnd(firstLine));
            if (this.textStartAlign == Paint.Align.LEFT) {
                this.baselinePosX += getLineHeight(firstLine);
                this.descentPosX += getLineHeight(firstLine);
            } else {
                this.baselinePosX -= getLineHeight(firstLine);
                this.descentPosX -= getLineHeight(firstLine);
            }
            firstLine++;
        }
    }

    /* renamed from: e */
    public final float m34061e() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        Intrinsics.checkNotNullExpressionValue(fontMetrics, "getFontMetrics(...)");
        return fontMetrics.descent - fontMetrics.ascent;
    }

    /* renamed from: f */
    public final int m34062f(char c) {
        float[] fArr = new float[1];
        getPaint().getTextWidths(String.valueOf(c), fArr);
        return (int) fArr[0];
    }

    /* renamed from: g */
    public final int m34063g(char[] chars) {
        if (chars.length == 0) {
            return 0;
        }
        Rect rect = new Rect();
        getPaint().getTextBounds(chars, 0, chars.length, rect);
        return rect.height();
    }

    public final float getCursorPosition(int offset) {
        return (offset >= 1 && m34068l(offset) && m34059c(m34064h(offset))) ? getSecondaryHorizontal(offset - 1) + m34065i() : getPrimaryHorizontal(offset);
    }

    public final float getLineHeight(int line) {
        return getLineBottom(line) - getLineTop(line);
    }

    /* renamed from: h */
    public final char m34064h(int offset) {
        return getText().charAt(getLineEnd(getLineForOffset(offset)) - 1);
    }

    /* renamed from: i */
    public final float m34065i() {
        Intrinsics.checkNotNullExpressionValue(getPaint().getFontMetrics(), "getFontMetrics(...)");
        return (float) Math.ceil(r2.bottom - r2.top);
    }

    /* renamed from: j */
    public final boolean m34066j(int lineStart, int lineEnd) {
        return lineEnd - lineStart <= 1;
    }

    /* renamed from: k */
    public final boolean m34067k(char ch) {
        return StringUtils.isAlpha(String.valueOf(ch));
    }

    /* renamed from: l */
    public final boolean m34068l(int offset) {
        int lineEnd = getLineEnd(getLineForOffset(offset));
        if (m34064h(offset) == '\n') {
            if (offset != lineEnd - 1) {
                return false;
            }
        } else if (offset != lineEnd) {
            return false;
        }
        return true;
    }

    /* renamed from: m */
    public final boolean m34069m(char ch) {
        return CharUtils.isAsciiNumeric(ch);
    }

    /* renamed from: n */
    public final boolean m34070n(int start, int end) {
        CharSequence text = getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        if (text instanceof Spanned) {
            Spanned spanned = (Spanned) text;
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(start, spanned.nextSpanTransition(start, end, CharacterStyle.class), CharacterStyle.class);
            for (CharacterStyle characterStyle : characterStyleArr) {
                if (characterStyle instanceof UnderlineSpan) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean needRotate(char ch) {
        return m34067k(ch) || m34069m(ch) || m34071o(ch);
    }

    /* renamed from: o */
    public final boolean m34071o(char ch) {
        return f43826e.contains(Character.valueOf(ch));
    }
}
