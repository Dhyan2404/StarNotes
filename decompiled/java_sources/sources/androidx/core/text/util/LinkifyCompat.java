package androidx.core.text.util;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.net.MailTo;
import androidx.core.text.util.LinkifyCompat;
import androidx.core.util.PatternsCompat;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class LinkifyCompat {

    /* renamed from: a */
    public static final String[] f5695a = new String[0];

    /* renamed from: b */
    public static final Comparator<C0748b> f5696b = new Comparator() { // from class: com.sunia.HTREnginev2.pzi
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m3238g;
            m3238g = LinkifyCompat.m3238g((LinkifyCompat.C0748b) obj, (LinkifyCompat.C0748b) obj2);
            return m3238g;
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface LinkifyMask {
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.text.util.LinkifyCompat$a */
    /* loaded from: classes3.dex */
    public static class C0747a {
        @DoNotInline
        /* renamed from: a */
        public static void m3242a(TextView textView, Pattern pattern, String str, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            Linkify.addLinks(textView, pattern, str, strArr, matchFilter, transformFilter);
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m3243b(Spannable spannable, Pattern pattern, String str, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            return Linkify.addLinks(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
    }

    /* renamed from: androidx.core.text.util.LinkifyCompat$b */
    /* loaded from: classes3.dex */
    public static class C0748b {

        /* renamed from: a */
        public URLSpan f5697a;

        /* renamed from: b */
        public String f5698b;

        /* renamed from: c */
        public int f5699c;

        /* renamed from: d */
        public int f5700d;
    }

    public static boolean addLinks(@NonNull Spannable spannable, int i) {
        if (m3241j()) {
            return Linkify.addLinks(spannable, i);
        }
        if (i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        if ((i & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            m3236e(arrayList, spannable, PatternsCompat.AUTOLINK_WEB_URL, new String[]{CommonConstant.SCHEME_HTTP, CommonConstant.SCHEME_HTTPS, "rtsp://"}, Linkify.sUrlMatchFilter, null);
        }
        if ((i & 2) != 0) {
            m3236e(arrayList, spannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{MailTo.MAILTO_SCHEME}, null, null);
        }
        if ((i & 8) != 0) {
            m3237f(arrayList, spannable);
        }
        m3240i(arrayList, spannable);
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C0748b c0748b = (C0748b) it2.next();
            if (c0748b.f5697a == null) {
                m3234c(c0748b.f5698b, c0748b.f5699c, c0748b.f5700d, spannable);
            }
        }
        return true;
    }

    /* renamed from: b */
    public static void m3233b(@NonNull TextView textView) {
        if ((textView.getMovementMethod() instanceof LinkMovementMethod) || !textView.getLinksClickable()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: c */
    public static void m3234c(String str, int i, int i2, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i, i2, 33);
    }

    /* renamed from: d */
    public static String m3235d(String str) {
        return WebView.findAddress(str);
    }

    /* renamed from: e */
    public static void m3236e(ArrayList<C0748b> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            String group = matcher.group(0);
            if (matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) {
                if (group != null) {
                    C0748b c0748b = new C0748b();
                    c0748b.f5698b = m3239h(group, strArr, matcher, transformFilter);
                    c0748b.f5699c = start;
                    c0748b.f5700d = end;
                    arrayList.add(c0748b);
                }
            }
        }
    }

    /* renamed from: f */
    public static void m3237f(ArrayList<C0748b> arrayList, Spannable spannable) {
        int indexOf;
        String obj = spannable.toString();
        int i = 0;
        while (true) {
            try {
                String m3235d = m3235d(obj);
                if (m3235d != null && (indexOf = obj.indexOf(m3235d)) >= 0) {
                    C0748b c0748b = new C0748b();
                    int length = m3235d.length() + indexOf;
                    c0748b.f5699c = indexOf + i;
                    i += length;
                    c0748b.f5700d = i;
                    obj = obj.substring(length);
                    try {
                        c0748b.f5698b = "geo:0,0?q=" + URLEncoder.encode(m3235d, "UTF-8");
                        arrayList.add(c0748b);
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                return;
            } catch (UnsupportedOperationException unused2) {
                return;
            }
        }
    }

    /* renamed from: g */
    public static /* synthetic */ int m3238g(C0748b c0748b, C0748b c0748b2) {
        int i = c0748b.f5699c;
        int i2 = c0748b2.f5699c;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        return Integer.compare(c0748b2.f5700d, c0748b.f5700d);
    }

    /* renamed from: h */
    public static String m3239h(@NonNull String str, @NonNull String[] strArr, Matcher matcher, @Nullable Linkify.TransformFilter transformFilter) {
        boolean z;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            String str2 = strArr[i];
            if (str.regionMatches(true, 0, str2, 0, str2.length())) {
                z = true;
                if (!str.regionMatches(false, 0, str2, 0, str2.length())) {
                    str = str2 + str.substring(str2.length());
                }
            } else {
                i++;
            }
        }
        if (z || strArr.length <= 0) {
            return str;
        }
        return strArr[0] + str;
    }

    /* renamed from: i */
    public static void m3240i(ArrayList<C0748b> arrayList, Spannable spannable) {
        int i;
        int i2 = 0;
        for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
            C0748b c0748b = new C0748b();
            c0748b.f5697a = uRLSpan;
            c0748b.f5699c = spannable.getSpanStart(uRLSpan);
            c0748b.f5700d = spannable.getSpanEnd(uRLSpan);
            arrayList.add(c0748b);
        }
        Collections.sort(arrayList, f5696b);
        int size = arrayList.size();
        while (i2 < size - 1) {
            C0748b c0748b2 = arrayList.get(i2);
            int i3 = i2 + 1;
            C0748b c0748b3 = arrayList.get(i3);
            int i4 = c0748b2.f5699c;
            int i5 = c0748b3.f5699c;
            if (i4 <= i5 && (i = c0748b2.f5700d) > i5) {
                int i6 = c0748b3.f5700d;
                int i7 = (i6 > i && i - i4 <= i6 - i5) ? i - i4 < i6 - i5 ? i2 : -1 : i3;
                if (i7 != -1) {
                    Object obj = arrayList.get(i7).f5697a;
                    if (obj != null) {
                        spannable.removeSpan(obj);
                    }
                    arrayList.remove(i7);
                    size--;
                }
            }
            i2 = i3;
        }
    }

    /* renamed from: j */
    public static boolean m3241j() {
        return true;
    }

    public static boolean addLinks(@NonNull TextView textView, int i) {
        if (m3241j()) {
            return Linkify.addLinks(textView, i);
        }
        if (i == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (addLinks((Spannable) text, i)) {
                m3233b(textView);
                return true;
            }
        } else {
            SpannableString valueOf = SpannableString.valueOf(text);
            if (addLinks(valueOf, i)) {
                m3233b(textView);
                textView.setText(valueOf);
                return true;
            }
        }
        return false;
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str) {
        if (m3241j()) {
            Linkify.addLinks(textView, pattern, str);
        } else {
            addLinks(textView, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (m3241j()) {
            Linkify.addLinks(textView, pattern, str, matchFilter, transformFilter);
        } else {
            addLinks(textView, pattern, str, (String[]) null, matchFilter, transformFilter);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (m3241j()) {
            C0747a.m3242a(textView, pattern, str, strArr, matchFilter, transformFilter);
            return;
        }
        SpannableString valueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(valueOf, pattern, str, strArr, matchFilter, transformFilter)) {
            textView.setText(valueOf);
            m3233b(textView);
        }
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str) {
        if (m3241j()) {
            return Linkify.addLinks(spannable, pattern, str);
        }
        return addLinks(spannable, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (m3241j()) {
            return Linkify.addLinks(spannable, pattern, str, matchFilter, transformFilter);
        }
        return addLinks(spannable, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (m3241j()) {
            return C0747a.m3243b(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
        if (str == null) {
            str = "";
        }
        if (strArr == null || strArr.length < 1) {
            strArr = f5695a;
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str.toLowerCase(Locale.ROOT);
        int i = 0;
        while (i < strArr.length) {
            String str2 = strArr[i];
            i++;
            strArr2[i] = str2 == null ? "" : str2.toLowerCase(Locale.ROOT);
        }
        Matcher matcher = pattern.matcher(spannable);
        boolean z = false;
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            String group = matcher.group(0);
            if ((matchFilter != null ? matchFilter.acceptMatch(spannable, start, end) : true) && group != null) {
                m3234c(m3239h(group, strArr2, matcher, transformFilter), start, end, spannable);
                z = true;
            }
        }
        return z;
    }
}
