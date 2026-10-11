package com.sunia.HTREnginev2;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import com.google.android.material.C5139R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes6.dex */
public class kve {
    /* renamed from: a */
    public static Pair<String, String> m55328a(@Nullable Long l, @Nullable Long l2) {
        return m55329b(l, l2, null);
    }

    /* renamed from: b */
    public static Pair<String, String> m55329b(@Nullable Long l, @Nullable Long l2, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l == null && l2 == null) {
            return Pair.create(null, null);
        }
        if (l == null) {
            return Pair.create(null, m55331d(l2.longValue(), simpleDateFormat));
        }
        if (l2 == null) {
            return Pair.create(m55331d(l.longValue(), simpleDateFormat), null);
        }
        Calendar m58536v = yyn.m58536v();
        Calendar m58538x = yyn.m58538x();
        m58538x.setTimeInMillis(l.longValue());
        Calendar m58538x2 = yyn.m58538x();
        m58538x2.setTimeInMillis(l2.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l.longValue())), simpleDateFormat.format(new Date(l2.longValue())));
        }
        return m58538x.get(1) == m58538x2.get(1) ? m58538x.get(1) == m58536v.get(1) ? Pair.create(m55334g(l.longValue(), Locale.getDefault()), m55334g(l2.longValue(), Locale.getDefault())) : Pair.create(m55334g(l.longValue(), Locale.getDefault()), m55341n(l2.longValue(), Locale.getDefault())) : Pair.create(m55341n(l.longValue(), Locale.getDefault()), m55341n(l2.longValue(), Locale.getDefault()));
    }

    /* renamed from: c */
    public static String m55330c(long j) {
        return m55331d(j, null);
    }

    /* renamed from: d */
    public static String m55331d(long j, @Nullable SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j)) : m55344q(j) ? m55333f(j) : m55340m(j);
    }

    /* renamed from: e */
    public static String m55332e(Context context, long j, boolean z, boolean z2, boolean z3) {
        String m55337j = m55337j(j);
        if (z) {
            m55337j = String.format(context.getString(C5139R.string.mtrl_picker_today_description), m55337j);
        }
        return z2 ? String.format(context.getString(C5139R.string.mtrl_picker_start_date_description), m55337j) : z3 ? String.format(context.getString(C5139R.string.mtrl_picker_end_date_description), m55337j) : m55337j;
    }

    /* renamed from: f */
    public static String m55333f(long j) {
        return m55334g(j, Locale.getDefault());
    }

    /* renamed from: g */
    public static String m55334g(long j, Locale locale) {
        return yyn.m58517c(locale).format(new Date(j));
    }

    /* renamed from: h */
    public static String m55335h(long j) {
        return m55336i(j, Locale.getDefault());
    }

    /* renamed from: i */
    public static String m55336i(long j, Locale locale) {
        return yyn.m58530p(locale).format(new Date(j));
    }

    /* renamed from: j */
    public static String m55337j(long j) {
        return m55344q(j) ? m55335h(j) : m55342o(j);
    }

    /* renamed from: k */
    public static String m55338k(Context context, int i) {
        return yyn.m58536v().get(1) == i ? String.format(context.getString(C5139R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i)) : String.format(context.getString(C5139R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i));
    }

    /* renamed from: l */
    public static String m55339l(long j) {
        return yyn.m58511A(Locale.getDefault()).format(new Date(j));
    }

    /* renamed from: m */
    public static String m55340m(long j) {
        return m55341n(j, Locale.getDefault());
    }

    /* renamed from: n */
    public static String m55341n(long j, Locale locale) {
        return yyn.m58540z(locale).format(new Date(j));
    }

    /* renamed from: o */
    public static String m55342o(long j) {
        return m55343p(j, Locale.getDefault());
    }

    /* renamed from: p */
    public static String m55343p(long j, Locale locale) {
        return yyn.m58512B(locale).format(new Date(j));
    }

    /* renamed from: q */
    public static boolean m55344q(long j) {
        Calendar m58536v = yyn.m58536v();
        Calendar m58538x = yyn.m58538x();
        m58538x.setTimeInMillis(j);
        return m58536v.get(1) == m58538x.get(1);
    }
}
