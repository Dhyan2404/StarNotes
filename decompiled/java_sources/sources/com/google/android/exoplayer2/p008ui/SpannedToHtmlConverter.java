package com.google.android.exoplayer2.p008ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.p008ui.SpannedToHtmlConverter;
import com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan;
import com.google.android.exoplayer2.text.span.RubySpan;
import com.google.android.exoplayer2.text.span.TextEmphasisSpan;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableMap;
import com.onegravity.rteditor.utils.Constants;
import com.onyx.android.sdk.base.utils.HtmlUtils;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.pzh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class SpannedToHtmlConverter {

    /* renamed from: a */
    public static final Pattern f27675a = Pattern.compile("(&#13;)?&#10;");

    /* loaded from: classes5.dex */
    public static class HtmlAndCss {
        public final Map<String, String> cssRuleSets;
        public final String html;

        public HtmlAndCss(String str, Map<String, String> map) {
            this.html = str;
            this.cssRuleSets = map;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.SpannedToHtmlConverter$b */
    /* loaded from: classes5.dex */
    public static final class C4972b {

        /* renamed from: e */
        public static final Comparator<C4972b> f27676e = new Comparator() { // from class: com.sunia.HTREnginev2.awm
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m21064e;
                m21064e = SpannedToHtmlConverter.C4972b.m21064e((SpannedToHtmlConverter.C4972b) obj, (SpannedToHtmlConverter.C4972b) obj2);
                return m21064e;
            }
        };

        /* renamed from: f */
        public static final Comparator<C4972b> f27677f = new Comparator() { // from class: com.sunia.HTREnginev2.bwm
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m21065f;
                m21065f = SpannedToHtmlConverter.C4972b.m21065f((SpannedToHtmlConverter.C4972b) obj, (SpannedToHtmlConverter.C4972b) obj2);
                return m21065f;
            }
        };

        /* renamed from: a */
        public final int f27678a;

        /* renamed from: b */
        public final int f27679b;

        /* renamed from: c */
        public final String f27680c;

        /* renamed from: d */
        public final String f27681d;

        /* renamed from: e */
        public static /* synthetic */ int m21064e(C4972b c4972b, C4972b c4972b2) {
            int compare = Integer.compare(c4972b2.f27679b, c4972b.f27679b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = c4972b.f27680c.compareTo(c4972b2.f27680c);
            return compareTo != 0 ? compareTo : c4972b.f27681d.compareTo(c4972b2.f27681d);
        }

        /* renamed from: f */
        public static /* synthetic */ int m21065f(C4972b c4972b, C4972b c4972b2) {
            int compare = Integer.compare(c4972b2.f27678a, c4972b.f27678a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = c4972b2.f27680c.compareTo(c4972b.f27680c);
            return compareTo != 0 ? compareTo : c4972b2.f27681d.compareTo(c4972b.f27681d);
        }

        public C4972b(int i, int i2, String str, String str2) {
            this.f27678a = i;
            this.f27679b = i2;
            this.f27680c = str;
            this.f27681d = str2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.SpannedToHtmlConverter$c */
    /* loaded from: classes5.dex */
    public static final class C4973c {

        /* renamed from: a */
        public final List<C4972b> f27682a = new ArrayList();

        /* renamed from: b */
        public final List<C4972b> f27683b = new ArrayList();
    }

    /* renamed from: a */
    public static HtmlAndCss m21052a(@Nullable CharSequence charSequence, float f) {
        if (charSequence == null) {
            return new HtmlAndCss("", ImmutableMap.m26185of());
        }
        if (!(charSequence instanceof Spanned)) {
            return new HtmlAndCss(m21053b(charSequence), ImmutableMap.m26185of());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet hashSet = new HashSet();
        int i = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap hashMap = new HashMap();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            StringBuilder sb = new StringBuilder(14);
            sb.append("bg_");
            sb.append(intValue);
            hashMap.put(pzh.m56474a(sb.toString()), Util.formatInvariant("background-color:%s;", pzh.m56475b(intValue)));
        }
        SparseArray<C4973c> m21054c = m21054c(spanned, f);
        StringBuilder sb2 = new StringBuilder(spanned.length());
        int i2 = 0;
        while (i < m21054c.size()) {
            int keyAt = m21054c.keyAt(i);
            sb2.append(m21053b(spanned.subSequence(i2, keyAt)));
            C4973c c4973c = m21054c.get(keyAt);
            Collections.sort(c4973c.f27683b, C4972b.f27677f);
            Iterator it3 = c4973c.f27683b.iterator();
            while (it3.hasNext()) {
                sb2.append(((C4972b) it3.next()).f27681d);
            }
            Collections.sort(c4973c.f27682a, C4972b.f27676e);
            Iterator it4 = c4973c.f27682a.iterator();
            while (it4.hasNext()) {
                sb2.append(((C4972b) it4.next()).f27680c);
            }
            i++;
            i2 = keyAt;
        }
        sb2.append(m21053b(spanned.subSequence(i2, spanned.length())));
        return new HtmlAndCss(sb2.toString(), hashMap);
    }

    /* renamed from: b */
    public static String m21053b(CharSequence charSequence) {
        return f27675a.matcher(Html.escapeHtml(charSequence)).replaceAll(Constants.TAG_BR_INVALID);
    }

    /* renamed from: c */
    public static SparseArray<C4973c> m21054c(Spanned spanned, float f) {
        SparseArray<C4973c> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String m21056e = m21056e(obj, f);
            String m21055d = m21055d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (m21056e != null) {
                Assertions.checkNotNull(m21055d);
                C4972b c4972b = new C4972b(spanStart, spanEnd, m21056e, m21055d);
                m21057f(sparseArray, spanStart).f27682a.add(c4972b);
                m21057f(sparseArray, spanEnd).f27683b.add(c4972b);
            }
        }
        return sparseArray;
    }

    @Nullable
    /* renamed from: d */
    public static String m21055d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof HorizontalTextInVerticalContextSpan) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof TextEmphasisSpan)) {
            return HtmlUtils.TAG_SPAN_END;
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return HtmlUtils.TAG_SPAN_END;
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else {
            if (obj instanceof RubySpan) {
                String m21053b = m21053b(((RubySpan) obj).rubyText);
                StringBuilder sb = new StringBuilder(String.valueOf(m21053b).length() + 16);
                sb.append("<rt>");
                sb.append(m21053b);
                sb.append("</rt></ruby>");
                return sb.toString();
            }
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: e */
    public static String m21056e(Object obj, float f) {
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return Util.formatInvariant("<span style='color:%s;'>", pzh.m56475b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return Util.formatInvariant("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof HorizontalTextInVerticalContextSpan) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            return Util.formatInvariant("<span style='font-size:%.2fpx;'>", Float.valueOf(((AbsoluteSizeSpan) obj).getDip() ? r3.getSize() : r3.getSize() / f));
        }
        if (obj instanceof RelativeSizeSpan) {
            return Util.formatInvariant("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return Util.formatInvariant("<span style='font-family:\"%s\";'>", family);
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "<b>";
            }
            if (style == 2) {
                return "<i>";
            }
            if (style != 3) {
                return null;
            }
            return "<b><i>";
        }
        if (!(obj instanceof RubySpan)) {
            if (obj instanceof UnderlineSpan) {
                return "<u>";
            }
            if (!(obj instanceof TextEmphasisSpan)) {
                return null;
            }
            TextEmphasisSpan textEmphasisSpan = (TextEmphasisSpan) obj;
            return Util.formatInvariant("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", m21059h(textEmphasisSpan.markShape, textEmphasisSpan.markFill), m21058g(textEmphasisSpan.position));
        }
        int i = ((RubySpan) obj).position;
        if (i == -1) {
            return "<ruby style='ruby-position:unset;'>";
        }
        if (i == 1) {
            return "<ruby style='ruby-position:over;'>";
        }
        if (i != 2) {
            return null;
        }
        return "<ruby style='ruby-position:under;'>";
    }

    /* renamed from: f */
    public static C4973c m21057f(SparseArray<C4973c> sparseArray, int i) {
        C4973c c4973c = sparseArray.get(i);
        if (c4973c != null) {
            return c4973c;
        }
        C4973c c4973c2 = new C4973c();
        sparseArray.put(i, c4973c2);
        return c4973c2;
    }

    /* renamed from: g */
    public static String m21058g(int i) {
        return i != 2 ? "over right" : "under left";
    }

    /* renamed from: h */
    public static String m21059h(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        if (i2 == 1) {
            sb.append("filled ");
        } else if (i2 == 2) {
            sb.append("open ");
        }
        if (i == 0) {
            sb.append("none");
        } else if (i == 1) {
            sb.append("circle");
        } else if (i == 2) {
            sb.append(gon.f71308x0);
        } else if (i != 3) {
            sb.append("unset");
        } else {
            sb.append(gon.f71310y0);
        }
        return sb.toString();
    }
}
