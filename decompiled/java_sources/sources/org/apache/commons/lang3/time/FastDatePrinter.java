package org.apache.commons.lang3.time;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes12.dex */
public class FastDatePrinter implements DatePrinter, Serializable {
    public static final int FULL = 0;
    public static final int LONG = 1;
    private static final int MAX_DIGITS = 10;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final ConcurrentMap<C18998i, String> cTimeZoneDisplayCache = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient InterfaceC18995f[] mRules;
    private final TimeZone mTimeZone;

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$a */
    /* loaded from: classes12.dex */
    public static class C18990a implements InterfaceC18995f {

        /* renamed from: a */
        public final char f107656a;

        public C18990a(char c) {
            this.f107656a = c;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 1;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.f107656a);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$b */
    /* loaded from: classes12.dex */
    public static class C18991b implements InterfaceC18993d {

        /* renamed from: a */
        public final InterfaceC18993d f107657a;

        public C18991b(InterfaceC18993d interfaceC18993d) {
            this.f107657a = interfaceC18993d;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public void mo67413a(Appendable appendable, int i) throws IOException {
            this.f107657a.mo67413a(appendable, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107657a.mo67411b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            int i = calendar.get(7);
            this.f107657a.mo67413a(appendable, i != 1 ? i - 1 : 7);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$c */
    /* loaded from: classes12.dex */
    public static class C18992c implements InterfaceC18995f {

        /* renamed from: b */
        public static final C18992c f107658b = new C18992c(3);

        /* renamed from: c */
        public static final C18992c f107659c = new C18992c(5);

        /* renamed from: d */
        public static final C18992c f107660d = new C18992c(6);

        /* renamed from: a */
        public final int f107661a;

        public C18992c(int i) {
            this.f107661a = i;
        }

        /* renamed from: d */
        public static C18992c m67414d(int i) {
            if (i == 1) {
                return f107658b;
            }
            if (i == 2) {
                return f107659c;
            }
            if (i == 3) {
                return f107660d;
            }
            throw new IllegalArgumentException("invalid number of X");
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107661a;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            int i = calendar.get(15) + calendar.get(16);
            if (i == 0) {
                appendable.append(Constants.HASIDCALL_INDEX_SIG);
                return;
            }
            if (i < 0) {
                appendable.append('-');
                i = -i;
            } else {
                appendable.append(PhoneNumberUtil.f36455s);
            }
            int i2 = i / 3600000;
            FastDatePrinter.appendDigits(appendable, i2);
            int i3 = this.f107661a;
            if (i3 < 5) {
                return;
            }
            if (i3 == 6) {
                appendable.append(':');
            }
            FastDatePrinter.appendDigits(appendable, (i / 60000) - (i2 * 60));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$d */
    /* loaded from: classes12.dex */
    public interface InterfaceC18993d extends InterfaceC18995f {
        /* renamed from: a */
        void mo67413a(Appendable appendable, int i) throws IOException;
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$e */
    /* loaded from: classes12.dex */
    public static class C18994e implements InterfaceC18993d {

        /* renamed from: a */
        public final int f107662a;

        /* renamed from: b */
        public final int f107663b;

        public C18994e(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.f107662a = i;
            this.f107663b = i2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public final void mo67413a(Appendable appendable, int i) throws IOException {
            FastDatePrinter.appendFullDigits(appendable, i, this.f107663b);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107663b;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            mo67413a(appendable, calendar.get(this.f107662a));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$f */
    /* loaded from: classes12.dex */
    public interface InterfaceC18995f {
        /* renamed from: b */
        int mo67411b();

        /* renamed from: c */
        void mo67412c(Appendable appendable, Calendar calendar) throws IOException;
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$g */
    /* loaded from: classes12.dex */
    public static class C18996g implements InterfaceC18995f {

        /* renamed from: a */
        public final String f107664a;

        public C18996g(String str) {
            this.f107664a = str;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107664a.length();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.f107664a);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$h */
    /* loaded from: classes12.dex */
    public static class C18997h implements InterfaceC18995f {

        /* renamed from: a */
        public final int f107665a;

        /* renamed from: b */
        public final String[] f107666b;

        public C18997h(int i, String[] strArr) {
            this.f107665a = i;
            this.f107666b = strArr;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            int length = this.f107666b.length;
            int i = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i;
                }
                int length2 = this.f107666b[length].length();
                if (length2 > i) {
                    i = length2;
                }
            }
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.f107666b[calendar.get(this.f107665a)]);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$i */
    /* loaded from: classes12.dex */
    public static class C18998i {

        /* renamed from: a */
        public final TimeZone f107667a;

        /* renamed from: b */
        public final int f107668b;

        /* renamed from: c */
        public final Locale f107669c;

        public C18998i(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.f107667a = timeZone;
            if (z) {
                this.f107668b = Integer.MIN_VALUE | i;
            } else {
                this.f107668b = i;
            }
            this.f107669c = locale;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C18998i)) {
                return false;
            }
            C18998i c18998i = (C18998i) obj;
            return this.f107667a.equals(c18998i.f107667a) && this.f107668b == c18998i.f107668b && this.f107669c.equals(c18998i.f107669c);
        }

        public int hashCode() {
            return (((this.f107668b * 31) + this.f107669c.hashCode()) * 31) + this.f107667a.hashCode();
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$j */
    /* loaded from: classes12.dex */
    public static class C18999j implements InterfaceC18995f {

        /* renamed from: a */
        public final Locale f107670a;

        /* renamed from: b */
        public final int f107671b;

        /* renamed from: c */
        public final String f107672c;

        /* renamed from: d */
        public final String f107673d;

        public C18999j(TimeZone timeZone, Locale locale, int i) {
            this.f107670a = locale;
            this.f107671b = i;
            this.f107672c = FastDatePrinter.getTimeZoneDisplay(timeZone, false, i, locale);
            this.f107673d = FastDatePrinter.getTimeZoneDisplay(timeZone, true, i, locale);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return Math.max(this.f107672c.length(), this.f107673d.length());
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            TimeZone timeZone = calendar.getTimeZone();
            if (calendar.get(16) != 0) {
                appendable.append(FastDatePrinter.getTimeZoneDisplay(timeZone, true, this.f107671b, this.f107670a));
            } else {
                appendable.append(FastDatePrinter.getTimeZoneDisplay(timeZone, false, this.f107671b, this.f107670a));
            }
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$k */
    /* loaded from: classes12.dex */
    public static class C19000k implements InterfaceC18995f {

        /* renamed from: b */
        public static final C19000k f107674b = new C19000k(true);

        /* renamed from: c */
        public static final C19000k f107675c = new C19000k(false);

        /* renamed from: a */
        public final boolean f107676a;

        public C19000k(boolean z) {
            this.f107676a = z;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 5;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                appendable.append('-');
                i = -i;
            } else {
                appendable.append(PhoneNumberUtil.f36455s);
            }
            int i2 = i / 3600000;
            FastDatePrinter.appendDigits(appendable, i2);
            if (this.f107676a) {
                appendable.append(':');
            }
            FastDatePrinter.appendDigits(appendable, (i / 60000) - (i2 * 60));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$l */
    /* loaded from: classes12.dex */
    public static class C19001l implements InterfaceC18993d {

        /* renamed from: a */
        public final InterfaceC18993d f107677a;

        public C19001l(InterfaceC18993d interfaceC18993d) {
            this.f107677a = interfaceC18993d;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public void mo67413a(Appendable appendable, int i) throws IOException {
            this.f107677a.mo67413a(appendable, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107677a.mo67411b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            int i = calendar.get(10);
            if (i == 0) {
                i = calendar.getLeastMaximum(10) + 1;
            }
            this.f107677a.mo67413a(appendable, i);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$m */
    /* loaded from: classes12.dex */
    public static class C19002m implements InterfaceC18993d {

        /* renamed from: a */
        public final InterfaceC18993d f107678a;

        public C19002m(InterfaceC18993d interfaceC18993d) {
            this.f107678a = interfaceC18993d;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public void mo67413a(Appendable appendable, int i) throws IOException {
            this.f107678a.mo67413a(appendable, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107678a.mo67411b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            int i = calendar.get(11);
            if (i == 0) {
                i = calendar.getMaximum(11) + 1;
            }
            this.f107678a.mo67413a(appendable, i);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$n */
    /* loaded from: classes12.dex */
    public static class C19003n implements InterfaceC18993d {

        /* renamed from: a */
        public static final C19003n f107679a = new C19003n();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public final void mo67413a(Appendable appendable, int i) throws IOException {
            FastDatePrinter.appendDigits(appendable, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            mo67413a(appendable, calendar.get(2) + 1);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$o */
    /* loaded from: classes12.dex */
    public static class C19004o implements InterfaceC18993d {

        /* renamed from: a */
        public final int f107680a;

        public C19004o(int i) {
            this.f107680a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public final void mo67413a(Appendable appendable, int i) throws IOException {
            if (i < 100) {
                FastDatePrinter.appendDigits(appendable, i);
            } else {
                FastDatePrinter.appendFullDigits(appendable, i, 2);
            }
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            mo67413a(appendable, calendar.get(this.f107680a));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$p */
    /* loaded from: classes12.dex */
    public static class C19005p implements InterfaceC18993d {

        /* renamed from: a */
        public static final C19005p f107681a = new C19005p();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public final void mo67413a(Appendable appendable, int i) throws IOException {
            FastDatePrinter.appendDigits(appendable, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            mo67413a(appendable, calendar.get(1) % 100);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$q */
    /* loaded from: classes12.dex */
    public static class C19006q implements InterfaceC18993d {

        /* renamed from: a */
        public static final C19006q f107682a = new C19006q();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public final void mo67413a(Appendable appendable, int i) throws IOException {
            if (i < 10) {
                appendable.append((char) (i + 48));
            } else {
                FastDatePrinter.appendDigits(appendable, i);
            }
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            mo67413a(appendable, calendar.get(2) + 1);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$r */
    /* loaded from: classes12.dex */
    public static class C19007r implements InterfaceC18993d {

        /* renamed from: a */
        public final int f107683a;

        public C19007r(int i) {
            this.f107683a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public final void mo67413a(Appendable appendable, int i) throws IOException {
            if (i < 10) {
                appendable.append((char) (i + 48));
            } else if (i < 100) {
                FastDatePrinter.appendDigits(appendable, i);
            } else {
                FastDatePrinter.appendFullDigits(appendable, i, 1);
            }
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            mo67413a(appendable, calendar.get(this.f107683a));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDatePrinter$s */
    /* loaded from: classes12.dex */
    public static class C19008s implements InterfaceC18993d {

        /* renamed from: a */
        public final InterfaceC18993d f107684a;

        public C19008s(InterfaceC18993d interfaceC18993d) {
            this.f107684a = interfaceC18993d;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18993d
        /* renamed from: a */
        public void mo67413a(Appendable appendable, int i) throws IOException {
            this.f107684a.mo67413a(appendable, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: b */
        public int mo67411b() {
            return this.f107684a.mo67411b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.InterfaceC18995f
        /* renamed from: c */
        public void mo67412c(Appendable appendable, Calendar calendar) throws IOException {
            this.f107684a.mo67413a(appendable, calendar.getWeekYear());
        }
    }

    public FastDatePrinter(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendDigits(Appendable appendable, int i) throws IOException {
        appendable.append((char) ((i / 10) + 48));
        appendable.append((char) ((i % 10) + 48));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendFullDigits(Appendable appendable, int i, int i2) throws IOException {
        if (i < 10000) {
            int i3 = i < 1000 ? i < 100 ? i < 10 ? 1 : 2 : 3 : 4;
            for (int i4 = i2 - i3; i4 > 0; i4--) {
                appendable.append('0');
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            return;
                        }
                        appendable.append((char) ((i / 1000) + 48));
                        i %= 1000;
                    }
                    if (i >= 100) {
                        appendable.append((char) ((i / 100) + 48));
                        i %= 100;
                    } else {
                        appendable.append('0');
                    }
                }
                if (i >= 10) {
                    appendable.append((char) ((i / 10) + 48));
                    i %= 10;
                } else {
                    appendable.append('0');
                }
            }
            appendable.append((char) (i + 48));
            return;
        }
        char[] cArr = new char[10];
        int i5 = 0;
        while (i != 0) {
            cArr[i5] = (char) ((i % 10) + 48);
            i /= 10;
            i5++;
        }
        while (i5 < i2) {
            appendable.append('0');
            i2--;
        }
        while (true) {
            i5--;
            if (i5 < 0) {
                return;
            } else {
                appendable.append(cArr[i5]);
            }
        }
    }

    private String applyRulesToString(Calendar calendar) {
        return ((StringBuilder) applyRules(calendar, (Calendar) new StringBuilder(this.mMaxLengthEstimate))).toString();
    }

    public static String getTimeZoneDisplay(TimeZone timeZone, boolean z, int i, Locale locale) {
        C18998i c18998i = new C18998i(timeZone, z, i, locale);
        ConcurrentMap<C18998i, String> concurrentMap = cTimeZoneDisplayCache;
        String str = concurrentMap.get(c18998i);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z, i, locale);
        String putIfAbsent = concurrentMap.putIfAbsent(c18998i, displayName);
        return putIfAbsent != null ? putIfAbsent : displayName;
    }

    private void init() {
        List<InterfaceC18995f> parsePattern = parsePattern();
        InterfaceC18995f[] interfaceC18995fArr = (InterfaceC18995f[]) parsePattern.toArray(new InterfaceC18995f[parsePattern.size()]);
        this.mRules = interfaceC18995fArr;
        int length = interfaceC18995fArr.length;
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                this.mMaxLengthEstimate = i;
                return;
            }
            i += this.mRules[length].mo67411b();
        }
    }

    private Calendar newCalendar() {
        return Calendar.getInstance(this.mTimeZone, this.mLocale);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init();
    }

    @Deprecated
    public StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        return (StringBuffer) applyRules(calendar, (Calendar) stringBuffer);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        return this.mPattern.equals(fastDatePrinter.mPattern) && this.mTimeZone.equals(fastDatePrinter.mTimeZone) && this.mLocale.equals(fastDatePrinter.mLocale);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    @Deprecated
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unknown class: ");
        sb.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.mPattern;
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public int hashCode() {
        return this.mPattern.hashCode() + ((this.mTimeZone.hashCode() + (this.mLocale.hashCode() * 13)) * 13);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0053. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0056. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0059. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v21, types: [org.apache.commons.lang3.time.FastDatePrinter$h] */
    /* JADX WARN: Type inference failed for: r9v10, types: [org.apache.commons.lang3.time.FastDatePrinter$g] */
    /* JADX WARN: Type inference failed for: r9v11, types: [org.apache.commons.lang3.time.FastDatePrinter$a] */
    /* JADX WARN: Type inference failed for: r9v13, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v15, types: [org.apache.commons.lang3.time.FastDatePrinter$q] */
    /* JADX WARN: Type inference failed for: r9v16, types: [org.apache.commons.lang3.time.FastDatePrinter$n] */
    /* JADX WARN: Type inference failed for: r9v17, types: [org.apache.commons.lang3.time.FastDatePrinter$h] */
    /* JADX WARN: Type inference failed for: r9v18, types: [org.apache.commons.lang3.time.FastDatePrinter$h] */
    /* JADX WARN: Type inference failed for: r9v20, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v21, types: [org.apache.commons.lang3.time.FastDatePrinter$h] */
    /* JADX WARN: Type inference failed for: r9v23, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v24, types: [org.apache.commons.lang3.time.FastDatePrinter$l] */
    /* JADX WARN: Type inference failed for: r9v25, types: [org.apache.commons.lang3.time.FastDatePrinter$m] */
    /* JADX WARN: Type inference failed for: r9v27, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v29, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v30, types: [org.apache.commons.lang3.time.FastDatePrinter$b] */
    /* JADX WARN: Type inference failed for: r9v32, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v36, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v41, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v42, types: [org.apache.commons.lang3.time.FastDatePrinter$h] */
    /* JADX WARN: Type inference failed for: r9v44, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v45, types: [org.apache.commons.lang3.time.FastDatePrinter$d] */
    /* JADX WARN: Type inference failed for: r9v46, types: [org.apache.commons.lang3.time.FastDatePrinter$c] */
    /* JADX WARN: Type inference failed for: r9v49, types: [org.apache.commons.lang3.time.FastDatePrinter$k] */
    /* JADX WARN: Type inference failed for: r9v5, types: [org.apache.commons.lang3.time.FastDatePrinter$j] */
    /* JADX WARN: Type inference failed for: r9v50, types: [org.apache.commons.lang3.time.FastDatePrinter$c] */
    /* JADX WARN: Type inference failed for: r9v51, types: [org.apache.commons.lang3.time.FastDatePrinter$k] */
    /* JADX WARN: Type inference failed for: r9v6, types: [org.apache.commons.lang3.time.FastDatePrinter$j] */
    public List<InterfaceC18995f> parsePattern() {
        InterfaceC18993d interfaceC18993d;
        ?? c18990a;
        InterfaceC18993d interfaceC18993d2;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int[] iArr = new int[1];
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            iArr[i] = i2;
            String parseToken = parseToken(this.mPattern, iArr);
            int i3 = iArr[i];
            int length2 = parseToken.length();
            if (length2 == 0) {
                return arrayList;
            }
            char charAt = parseToken.charAt(i);
            if (charAt != 'y') {
                if (charAt != 'z') {
                    switch (charAt) {
                        case '\'':
                            String substring = parseToken.substring(1);
                            c18990a = substring.length() == 1 ? new C18990a(substring.charAt(0)) : new C18996g(substring);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'K':
                            c18990a = selectNumberRule(10, length2);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'M':
                            c18990a = length2 >= 4 ? new C18997h(2, months) : length2 == 3 ? new C18997h(2, shortMonths) : length2 == 2 ? C19003n.f107679a : C19006q.f107682a;
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'S':
                            c18990a = selectNumberRule(14, length2);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'a':
                            c18990a = new C18997h(9, amPmStrings);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'd':
                            c18990a = selectNumberRule(5, length2);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'h':
                            c18990a = new C19001l(selectNumberRule(10, length2));
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'k':
                            c18990a = new C19002m(selectNumberRule(11, length2));
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'm':
                            c18990a = selectNumberRule(12, length2);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 's':
                            c18990a = selectNumberRule(13, length2);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'u':
                            c18990a = new C18991b(selectNumberRule(7, length2));
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        case 'w':
                            c18990a = selectNumberRule(3, length2);
                            interfaceC18993d2 = c18990a;
                            interfaceC18993d = interfaceC18993d2;
                            i = 0;
                            break;
                        default:
                            switch (charAt) {
                                case 'D':
                                    c18990a = selectNumberRule(6, length2);
                                    interfaceC18993d2 = c18990a;
                                    interfaceC18993d = interfaceC18993d2;
                                    i = 0;
                                    break;
                                case 'E':
                                    interfaceC18993d2 = new C18997h(7, length2 < 4 ? shortWeekdays : weekdays);
                                    interfaceC18993d = interfaceC18993d2;
                                    i = 0;
                                    break;
                                case 'F':
                                    c18990a = selectNumberRule(8, length2);
                                    interfaceC18993d2 = c18990a;
                                    interfaceC18993d = interfaceC18993d2;
                                    i = 0;
                                    break;
                                case 'G':
                                    i = 0;
                                    interfaceC18993d = new C18997h(0, eras);
                                    break;
                                case 'H':
                                    c18990a = selectNumberRule(11, length2);
                                    interfaceC18993d2 = c18990a;
                                    interfaceC18993d = interfaceC18993d2;
                                    i = 0;
                                    break;
                                default:
                                    switch (charAt) {
                                        case 'W':
                                            c18990a = selectNumberRule(4, length2);
                                            interfaceC18993d2 = c18990a;
                                            interfaceC18993d = interfaceC18993d2;
                                            i = 0;
                                            break;
                                        case 'X':
                                            c18990a = C18992c.m67414d(length2);
                                            interfaceC18993d2 = c18990a;
                                            interfaceC18993d = interfaceC18993d2;
                                            i = 0;
                                            break;
                                        case 'Y':
                                            break;
                                        case 'Z':
                                            c18990a = length2 == 1 ? C19000k.f107675c : length2 == 2 ? C18992c.f107660d : C19000k.f107674b;
                                            interfaceC18993d2 = c18990a;
                                            interfaceC18993d = interfaceC18993d2;
                                            i = 0;
                                            break;
                                        default:
                                            throw new IllegalArgumentException("Illegal pattern component: " + parseToken);
                                    }
                            }
                    }
                } else if (length2 >= 4) {
                    interfaceC18993d = new C18999j(this.mTimeZone, this.mLocale, 1);
                    i = 0;
                } else {
                    interfaceC18993d = new C18999j(this.mTimeZone, this.mLocale, 0);
                    i = 0;
                }
                arrayList.add(interfaceC18993d);
                i2 = i3 + 1;
            }
            i = 0;
            if (length2 == 2) {
                interfaceC18993d = C19005p.f107681a;
            } else {
                if (length2 < 4) {
                    length2 = 4;
                }
                interfaceC18993d = selectNumberRule(1, length2);
            }
            if (charAt == 'Y') {
                interfaceC18993d = new C19008s(interfaceC18993d);
            }
            arrayList.add(interfaceC18993d);
            i2 = i3 + 1;
        }
        return arrayList;
    }

    public String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i = iArr[0];
        int length = str.length();
        char charAt = str.charAt(i);
        if ((charAt >= 'A' && charAt <= 'Z') || (charAt >= 'a' && charAt <= 'z')) {
            sb.append(charAt);
            while (true) {
                int i2 = i + 1;
                if (i2 >= length || str.charAt(i2) != charAt) {
                    break;
                }
                sb.append(charAt);
                i = i2;
            }
        } else {
            sb.append(Chars.QUOTE);
            boolean z = false;
            while (i < length) {
                char charAt2 = str.charAt(i);
                if (charAt2 != '\'') {
                    if (!z && ((charAt2 >= 'A' && charAt2 <= 'Z') || (charAt2 >= 'a' && charAt2 <= 'z'))) {
                        i--;
                        break;
                    }
                    sb.append(charAt2);
                } else {
                    int i3 = i + 1;
                    if (i3 >= length || str.charAt(i3) != '\'') {
                        z = !z;
                    } else {
                        sb.append(charAt2);
                        i = i3;
                    }
                }
                i++;
            }
        }
        iArr[0] = i;
        return sb.toString();
    }

    public InterfaceC18993d selectNumberRule(int i, int i2) {
        return i2 != 1 ? i2 != 2 ? new C18994e(i, i2) : new C19004o(i) : new C19007r(i);
    }

    public String toString() {
        return "FastDatePrinter[" + this.mPattern + "," + this.mLocale + "," + this.mTimeZone.getID() + IteratorUtils.f104924b;
    }

    private <B extends Appendable> B applyRules(Calendar calendar, B b) {
        try {
            for (InterfaceC18995f interfaceC18995f : this.mRules) {
                interfaceC18995f.mo67412c(b, calendar);
            }
        } catch (IOException e) {
            ExceptionUtils.rethrow(e);
        }
        return b;
    }

    public String format(Object obj) {
        if (obj instanceof Date) {
            return format((Date) obj);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unknown class: ");
        sb.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(long j) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j);
        return applyRulesToString(newCalendar);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Date date) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return applyRulesToString(newCalendar);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Calendar calendar) {
        return ((StringBuilder) format(calendar, (Calendar) new StringBuilder(this.mMaxLengthEstimate))).toString();
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(long j, StringBuffer stringBuffer) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j);
        return (StringBuffer) applyRules(newCalendar, (Calendar) stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return (StringBuffer) applyRules(newCalendar, (Calendar) stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return format(calendar.getTime(), stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public <B extends Appendable> B format(long j, B b) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j);
        return (B) applyRules(newCalendar, (Calendar) b);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public <B extends Appendable> B format(Date date, B b) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return (B) applyRules(newCalendar, (Calendar) b);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public <B extends Appendable> B format(Calendar calendar, B b) {
        if (!calendar.getTimeZone().equals(this.mTimeZone)) {
            calendar = (Calendar) calendar.clone();
            calendar.setTimeZone(this.mTimeZone);
        }
        return (B) applyRules(calendar, (Calendar) b);
    }
}
