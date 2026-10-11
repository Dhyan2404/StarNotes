package com.onyx.android.sdk.base.utils;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ImageSpan;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007J\"\u0010\u000f\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u000bJ*\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0002¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SpanUtils;", "", "", "title", "keyword", "", "bgColor", "", "ignoreCase", "Landroid/text/SpannableString;", "highLightKeyword", "", "texts", "Landroid/graphics/drawable/Drawable;", "drawables", "insertDrawable", "startPos", "a", Constants.CONSTRUCTOR_NAME, "()V", "VerticalImageSpan", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSpanUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpanUtils.kt\ncom/onyx/android/sdk/base/utils/SpanUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,154:1\n1855#2,2:155\n1855#2,2:157\n1864#2,3:159\n*S KotlinDebug\n*F\n+ 1 SpanUtils.kt\ncom/onyx/android/sdk/base/utils/SpanUtils\n*L\n67#1:155,2\n72#1:157,2\n77#1:159,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SpanUtils {

    @NotNull
    public static final SpanUtils INSTANCE = new SpanUtils();

    @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JP\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J2\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SpanUtils$VerticalImageSpan;", "Landroid/text/style/ImageSpan;", ResourceManager.f46830c, "Landroid/graphics/drawable/Drawable;", "(Landroid/graphics/drawable/Drawable;)V", "draw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "text", "", gon.f71290o0, "", "end", "x", "", OneDriverConstants.TOP, "y", "bottom", "paint", "Landroid/graphics/Paint;", "getSize", "fontMetricsInt", "Landroid/graphics/Paint$FontMetricsInt;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class VerticalImageSpan extends ImageSpan {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VerticalImageSpan(@NotNull Drawable drawable) {
            super(drawable);
            Intrinsics.checkNotNullParameter(drawable, "drawable");
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(@NotNull Canvas canvas, @NotNull CharSequence text, int start, int end, float x, int top, int y, int bottom, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(paint, "paint");
            Drawable drawable = getDrawable();
            canvas.save();
            int i = paint.getFontMetricsInt().descent;
            canvas.translate(x, ((y + i) - ((i - r2.ascent) / 2)) - ((drawable.getBounds().bottom - drawable.getBounds().top) / 2));
            drawable.draw(canvas);
            canvas.restore();
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(@NotNull Paint paint, @NotNull CharSequence text, int start, int end, @Nullable Paint.FontMetricsInt fontMetricsInt) {
            Intrinsics.checkNotNullParameter(paint, "paint");
            Intrinsics.checkNotNullParameter(text, "text");
            Rect bounds = getDrawable().getBounds();
            Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
            if (fontMetricsInt != null) {
                Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
                int i = fontMetricsInt2.descent;
                int i2 = fontMetricsInt2.ascent;
                int i3 = i2 + ((i - i2) / 2);
                int i4 = (bounds.bottom - bounds.top) / 2;
                int i5 = i3 - i4;
                fontMetricsInt.ascent = i5;
                fontMetricsInt.top = i5;
                int i6 = i3 + i4;
                fontMetricsInt.bottom = i6;
                fontMetricsInt.descent = i6;
            }
            return bounds.right;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ int m32158b(SpanUtils spanUtils, String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        return spanUtils.m32159a(str, str2, i, z);
    }

    public static /* synthetic */ SpannableString highLightKeyword$default(SpanUtils spanUtils, String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = true;
        }
        return spanUtils.highLightKeyword(str, str2, i, z);
    }

    /* renamed from: a */
    public final int m32159a(String title, String keyword, int startPos, boolean ignoreCase) {
        int indexOf;
        indexOf = StringsKt__StringsKt.indexOf(title, keyword, startPos, ignoreCase);
        return indexOf;
    }

    @NotNull
    public final SpannableString highLightKeyword(@NotNull String title, @NotNull String keyword, int bgColor, boolean ignoreCase) {
        boolean isBlank;
        boolean isBlank2;
        boolean isBlank3;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        SpannableString spannableString = new SpannableString(title);
        isBlank = StringsKt__StringsJVMKt.isBlank(title);
        if (!isBlank) {
            isBlank2 = StringsKt__StringsJVMKt.isBlank(keyword);
            if (!isBlank2) {
                isBlank3 = StringsKt__StringsJVMKt.isBlank(title);
                if (!isBlank3) {
                    int i = 0;
                    while (m32159a(title, keyword, i, ignoreCase) != -1) {
                        int m32159a = m32159a(title, keyword, i, ignoreCase);
                        int m32159a2 = m32159a(title, keyword, m32159a, ignoreCase) + keyword.length();
                        spannableString.setSpan(new BackgroundColorSpan(bgColor), m32159a, keyword.length() + m32159a, 17);
                        i = Math.min(m32159a2, title.length());
                    }
                }
            }
        }
        return spannableString;
    }

    @NotNull
    public final SpannableString insertDrawable(@NotNull List<String> texts, @NotNull List<? extends Drawable> drawables) throws Exception {
        int spanEnd;
        Object first;
        Intrinsics.checkNotNullParameter(texts, "texts");
        Intrinsics.checkNotNullParameter(drawables, "drawables");
        int i = 0;
        boolean z = texts.size() == drawables.size() * 2;
        if (texts.isEmpty() || drawables.isEmpty() || !z) {
            throw new Exception("the count do not match!");
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<T> it2 = texts.iterator();
        while (it2.hasNext()) {
            stringBuffer.append((String) it2.next());
        }
        SpannableString spannableString = new SpannableString(stringBuffer);
        ArrayList arrayList = new ArrayList();
        for (Drawable drawable : drawables) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            arrayList.add(new VerticalImageSpan(drawable));
        }
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            VerticalImageSpan verticalImageSpan = (VerticalImageSpan) obj;
            if (i == 0) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) texts);
                spanEnd = ((String) first).length() - 1;
            } else {
                spanEnd = ((spannableString.getSpanEnd(arrayList.get(i - 1)) + texts.get(i).length()) + texts.get(i2).length()) - 1;
            }
            spannableString.setSpan(verticalImageSpan, spanEnd, spanEnd + 1, 18);
            i = i2;
        }
        return spannableString;
    }
}
