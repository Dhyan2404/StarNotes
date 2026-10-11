package org.apache.commons.lang3.time;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class FastDateParser implements DateParser, Serializable {
    private static final long serialVersionUID = 3;
    private final int century;
    private final Locale locale;
    private final String pattern;
    private transient List<C18987m> patterns;
    private final int startYear;
    private final TimeZone timeZone;
    static final Locale JAPANESE_IMPERIAL = new Locale(OcrValues.LANG_JAPANESE, "JP", "JP");
    private static final Comparator<String> LONGER_FIRST_LOWERCASE = new C18975a();
    private static final ConcurrentMap<Locale, AbstractC18986l>[] caches = new ConcurrentMap[17];
    private static final AbstractC18986l ABBREVIATED_YEAR_STRATEGY = new C18976b(1);
    private static final AbstractC18986l NUMBER_MONTH_STRATEGY = new C18977c(2);
    private static final AbstractC18986l LITERAL_YEAR_STRATEGY = new C18984j(1);
    private static final AbstractC18986l WEEK_OF_YEAR_STRATEGY = new C18984j(3);
    private static final AbstractC18986l WEEK_OF_MONTH_STRATEGY = new C18984j(4);
    private static final AbstractC18986l DAY_OF_YEAR_STRATEGY = new C18984j(6);
    private static final AbstractC18986l DAY_OF_MONTH_STRATEGY = new C18984j(5);
    private static final AbstractC18986l DAY_OF_WEEK_STRATEGY = new C18978d(7);
    private static final AbstractC18986l DAY_OF_WEEK_IN_MONTH_STRATEGY = new C18984j(8);
    private static final AbstractC18986l HOUR_OF_DAY_STRATEGY = new C18984j(11);
    private static final AbstractC18986l HOUR24_OF_DAY_STRATEGY = new C18979e(11);
    private static final AbstractC18986l HOUR12_STRATEGY = new C18980f(10);
    private static final AbstractC18986l HOUR_STRATEGY = new C18984j(10);
    private static final AbstractC18986l MINUTE_STRATEGY = new C18984j(12);
    private static final AbstractC18986l SECOND_STRATEGY = new C18984j(13);
    private static final AbstractC18986l MILLISECOND_STRATEGY = new C18984j(14);

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$a */
    /* loaded from: classes12.dex */
    public static class C18975a implements Comparator<String> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str2.compareTo(str);
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$b */
    /* loaded from: classes12.dex */
    public static class C18976b extends C18984j {
        public C18976b(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.C18984j
        /* renamed from: c */
        public int mo67399c(FastDateParser fastDateParser, int i) {
            return i < 100 ? fastDateParser.adjustYear(i) : i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$c */
    /* loaded from: classes12.dex */
    public static class C18977c extends C18984j {
        public C18977c(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.C18984j
        /* renamed from: c */
        public int mo67399c(FastDateParser fastDateParser, int i) {
            return i - 1;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$d */
    /* loaded from: classes12.dex */
    public static class C18978d extends C18984j {
        public C18978d(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.C18984j
        /* renamed from: c */
        public int mo67399c(FastDateParser fastDateParser, int i) {
            if (i != 7) {
                return 1 + i;
            }
            return 1;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$e */
    /* loaded from: classes12.dex */
    public static class C18979e extends C18984j {
        public C18979e(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.C18984j
        /* renamed from: c */
        public int mo67399c(FastDateParser fastDateParser, int i) {
            if (i == 24) {
                return 0;
            }
            return i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$f */
    /* loaded from: classes12.dex */
    public static class C18980f extends C18984j {
        public C18980f(int i) {
            super(i);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.C18984j
        /* renamed from: c */
        public int mo67399c(FastDateParser fastDateParser, int i) {
            if (i == 12) {
                return 0;
            }
            return i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$g */
    /* loaded from: classes12.dex */
    public static class C18981g extends AbstractC18985k {

        /* renamed from: b */
        public final int f107635b;

        /* renamed from: c */
        public final Locale f107636c;

        /* renamed from: d */
        public final Map<String, Integer> f107637d;

        public C18981g(int i, Calendar calendar, Locale locale) {
            super(null);
            this.f107635b = i;
            this.f107636c = locale;
            StringBuilder sb = new StringBuilder();
            sb.append("((?iu)");
            this.f107637d = FastDateParser.appendDisplayNames(calendar, locale, i, sb);
            sb.setLength(sb.length() - 1);
            sb.append(MotionUtils.f31762d);
            m67406d(sb);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18985k
        /* renamed from: e */
        public void mo67400e(FastDateParser fastDateParser, Calendar calendar, String str) {
            calendar.set(this.f107635b, this.f107637d.get(str.toLowerCase(this.f107636c)).intValue());
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$h */
    /* loaded from: classes12.dex */
    public static class C18982h extends AbstractC18986l {

        /* renamed from: a */
        public final String f107638a;

        public C18982h(String str) {
            super(null);
            this.f107638a = str;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18986l
        /* renamed from: a */
        public boolean mo67401a() {
            return false;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18986l
        /* renamed from: b */
        public boolean mo67402b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i) {
            for (int i2 = 0; i2 < this.f107638a.length(); i2++) {
                int index = parsePosition.getIndex() + i2;
                if (index == str.length()) {
                    parsePosition.setErrorIndex(index);
                    return false;
                }
                if (this.f107638a.charAt(i2) != str.charAt(index)) {
                    parsePosition.setErrorIndex(index);
                    return false;
                }
            }
            parsePosition.setIndex(this.f107638a.length() + parsePosition.getIndex());
            return true;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$i */
    /* loaded from: classes12.dex */
    public static class C18983i extends AbstractC18985k {

        /* renamed from: b */
        public static final AbstractC18986l f107639b = new C18983i("(Z|(?:[+-]\\d{2}))");

        /* renamed from: c */
        public static final AbstractC18986l f107640c = new C18983i("(Z|(?:[+-]\\d{2}\\d{2}))");

        /* renamed from: d */
        public static final AbstractC18986l f107641d = new C18983i("(Z|(?:[+-]\\d{2}(?::)\\d{2}))");

        public C18983i(String str) {
            super(null);
            m67405c(str);
        }

        /* renamed from: g */
        public static AbstractC18986l m67404g(int i) {
            if (i == 1) {
                return f107639b;
            }
            if (i == 2) {
                return f107640c;
            }
            if (i == 3) {
                return f107641d;
            }
            throw new IllegalArgumentException("invalid number of X");
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18985k
        /* renamed from: e */
        public void mo67400e(FastDateParser fastDateParser, Calendar calendar, String str) {
            calendar.setTimeZone(FastTimeZone.getGmtTimeZone(str));
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$j */
    /* loaded from: classes12.dex */
    public static class C18984j extends AbstractC18986l {

        /* renamed from: a */
        public final int f107642a;

        public C18984j(int i) {
            super(null);
            this.f107642a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18986l
        /* renamed from: a */
        public boolean mo67401a() {
            return true;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18986l
        /* renamed from: b */
        public boolean mo67402b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i) {
            int index = parsePosition.getIndex();
            int length = str.length();
            if (i == 0) {
                while (index < length && Character.isWhitespace(str.charAt(index))) {
                    index++;
                }
                parsePosition.setIndex(index);
            } else {
                int i2 = i + index;
                if (length > i2) {
                    length = i2;
                }
            }
            while (index < length && Character.isDigit(str.charAt(index))) {
                index++;
            }
            if (parsePosition.getIndex() == index) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            int parseInt = Integer.parseInt(str.substring(parsePosition.getIndex(), index));
            parsePosition.setIndex(index);
            calendar.set(this.f107642a, mo67399c(fastDateParser, parseInt));
            return true;
        }

        /* renamed from: c */
        public int mo67399c(FastDateParser fastDateParser, int i) {
            return i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$k */
    /* loaded from: classes12.dex */
    public static abstract class AbstractC18985k extends AbstractC18986l {

        /* renamed from: a */
        public Pattern f107643a;

        public AbstractC18985k() {
            super(null);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18986l
        /* renamed from: a */
        public boolean mo67401a() {
            return false;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18986l
        /* renamed from: b */
        public boolean mo67402b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i) {
            Matcher matcher = this.f107643a.matcher(str.substring(parsePosition.getIndex()));
            if (!matcher.lookingAt()) {
                parsePosition.setErrorIndex(parsePosition.getIndex());
                return false;
            }
            parsePosition.setIndex(parsePosition.getIndex() + matcher.end(1));
            mo67400e(fastDateParser, calendar, matcher.group(1));
            return true;
        }

        /* renamed from: c */
        public void m67405c(String str) {
            this.f107643a = Pattern.compile(str);
        }

        /* renamed from: d */
        public void m67406d(StringBuilder sb) {
            m67405c(sb.toString());
        }

        /* renamed from: e */
        public abstract void mo67400e(FastDateParser fastDateParser, Calendar calendar, String str);

        public /* synthetic */ AbstractC18985k(C18975a c18975a) {
            this();
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$l */
    /* loaded from: classes12.dex */
    public static abstract class AbstractC18986l {
        public AbstractC18986l() {
        }

        /* renamed from: a */
        public boolean mo67401a() {
            return false;
        }

        /* renamed from: b */
        public abstract boolean mo67402b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i);

        public /* synthetic */ AbstractC18986l(C18975a c18975a) {
            this();
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$m */
    /* loaded from: classes12.dex */
    public static class C18987m {

        /* renamed from: a */
        public final AbstractC18986l f107644a;

        /* renamed from: b */
        public final int f107645b;

        public C18987m(AbstractC18986l abstractC18986l, int i) {
            this.f107644a = abstractC18986l;
            this.f107645b = i;
        }

        /* renamed from: a */
        public int m67407a(ListIterator<C18987m> listIterator) {
            if (!this.f107644a.mo67401a() || !listIterator.hasNext()) {
                return 0;
            }
            AbstractC18986l abstractC18986l = listIterator.next().f107644a;
            listIterator.previous();
            if (abstractC18986l.mo67401a()) {
                return this.f107645b;
            }
            return 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$n */
    /* loaded from: classes12.dex */
    public class C18988n {

        /* renamed from: a */
        public final Calendar f107646a;

        /* renamed from: b */
        public int f107647b;

        public C18988n(Calendar calendar) {
            this.f107646a = calendar;
        }

        /* renamed from: a */
        public C18987m m67408a() {
            if (this.f107647b >= FastDateParser.this.pattern.length()) {
                return null;
            }
            char charAt = FastDateParser.this.pattern.charAt(this.f107647b);
            return FastDateParser.isFormatLetter(charAt) ? m67409b(charAt) : m67410c();
        }

        /* renamed from: b */
        public final C18987m m67409b(char c) {
            int i = this.f107647b;
            do {
                int i2 = this.f107647b + 1;
                this.f107647b = i2;
                if (i2 >= FastDateParser.this.pattern.length()) {
                    break;
                }
            } while (FastDateParser.this.pattern.charAt(this.f107647b) == c);
            int i3 = this.f107647b - i;
            return new C18987m(FastDateParser.this.getStrategy(c, i3, this.f107646a), i3);
        }

        /* renamed from: c */
        public final C18987m m67410c() {
            StringBuilder sb = new StringBuilder();
            boolean z = false;
            while (this.f107647b < FastDateParser.this.pattern.length()) {
                char charAt = FastDateParser.this.pattern.charAt(this.f107647b);
                if (!z && FastDateParser.isFormatLetter(charAt)) {
                    break;
                }
                if (charAt == '\'') {
                    int i = this.f107647b + 1;
                    this.f107647b = i;
                    if (i == FastDateParser.this.pattern.length() || FastDateParser.this.pattern.charAt(this.f107647b) != '\'') {
                        z = !z;
                    }
                }
                this.f107647b++;
                sb.append(charAt);
            }
            if (z) {
                throw new IllegalArgumentException("Unterminated quote");
            }
            String sb2 = sb.toString();
            return new C18987m(new C18982h(sb2), sb2.length());
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$o */
    /* loaded from: classes12.dex */
    public static class C18989o extends AbstractC18985k {

        /* renamed from: d */
        public static final String f107649d = "[+-]\\d{4}";

        /* renamed from: e */
        public static final String f107650e = "GMT[+-]\\d{1,2}:\\d{2}";

        /* renamed from: f */
        public static final int f107651f = 0;

        /* renamed from: b */
        public final Locale f107652b;

        /* renamed from: c */
        public final Map<String, a> f107653c;

        /* renamed from: org.apache.commons.lang3.time.FastDateParser$o$a */
        /* loaded from: classes12.dex */
        public static class a {

            /* renamed from: a */
            public TimeZone f107654a;

            /* renamed from: b */
            public int f107655b;

            public a(TimeZone timeZone, boolean z) {
                this.f107654a = timeZone;
                this.f107655b = z ? timeZone.getDSTSavings() : 0;
            }
        }

        public C18989o(Locale locale) {
            super(null);
            this.f107653c = new HashMap();
            this.f107652b = locale;
            StringBuilder sb = new StringBuilder();
            sb.append("((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}");
            TreeSet<String> treeSet = new TreeSet(FastDateParser.LONGER_FIRST_LOWERCASE);
            for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
                String str = strArr[0];
                if (!str.equalsIgnoreCase(TimeZones.GMT_ID)) {
                    TimeZone timeZone = TimeZone.getTimeZone(str);
                    a aVar = new a(timeZone, false);
                    a aVar2 = aVar;
                    for (int i = 1; i < strArr.length; i++) {
                        if (i == 3) {
                            aVar2 = new a(timeZone, true);
                        } else if (i == 5) {
                            aVar2 = aVar;
                        }
                        String str2 = strArr[i];
                        if (str2 != null) {
                            String lowerCase = str2.toLowerCase(locale);
                            if (treeSet.add(lowerCase)) {
                                this.f107653c.put(lowerCase, aVar2);
                            }
                        }
                    }
                }
            }
            for (String str3 : treeSet) {
                sb.append('|');
                FastDateParser.simpleQuote(sb, str3);
            }
            sb.append(MotionUtils.f31762d);
            m67406d(sb);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.AbstractC18985k
        /* renamed from: e */
        public void mo67400e(FastDateParser fastDateParser, Calendar calendar, String str) {
            TimeZone gmtTimeZone = FastTimeZone.getGmtTimeZone(str);
            if (gmtTimeZone != null) {
                calendar.setTimeZone(gmtTimeZone);
                return;
            }
            a aVar = this.f107653c.get(str.toLowerCase(this.f107652b));
            calendar.set(16, aVar.f107655b);
            calendar.set(15, aVar.f107654a.getRawOffset());
        }
    }

    public FastDateParser(String str, TimeZone timeZone, Locale locale) {
        this(str, timeZone, locale, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int adjustYear(int i) {
        int i2 = this.century + i;
        return i >= this.startYear ? i2 : i2 + 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, Integer> appendDisplayNames(Calendar calendar, Locale locale, int i, StringBuilder sb) {
        HashMap hashMap = new HashMap();
        Map<String, Integer> displayNames = calendar.getDisplayNames(i, 0, locale);
        TreeSet treeSet = new TreeSet(LONGER_FIRST_LOWERCASE);
        for (Map.Entry<String, Integer> entry : displayNames.entrySet()) {
            String lowerCase = entry.getKey().toLowerCase(locale);
            if (treeSet.add(lowerCase)) {
                hashMap.put(lowerCase, entry.getValue());
            }
        }
        Iterator it2 = treeSet.iterator();
        while (it2.hasNext()) {
            simpleQuote(sb, (String) it2.next()).append('|');
        }
        return hashMap;
    }

    private static ConcurrentMap<Locale, AbstractC18986l> getCache(int i) {
        ConcurrentMap<Locale, AbstractC18986l> concurrentMap;
        ConcurrentMap<Locale, AbstractC18986l>[] concurrentMapArr = caches;
        synchronized (concurrentMapArr) {
            if (concurrentMapArr[i] == null) {
                concurrentMapArr[i] = new ConcurrentHashMap(3);
            }
            concurrentMap = concurrentMapArr[i];
        }
        return concurrentMap;
    }

    private AbstractC18986l getLocaleSpecificStrategy(int i, Calendar calendar) {
        ConcurrentMap<Locale, AbstractC18986l> cache = getCache(i);
        AbstractC18986l abstractC18986l = cache.get(this.locale);
        if (abstractC18986l == null) {
            abstractC18986l = i == 15 ? new C18989o(this.locale) : new C18981g(i, calendar, this.locale);
            AbstractC18986l putIfAbsent = cache.putIfAbsent(this.locale, abstractC18986l);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
        }
        return abstractC18986l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0009. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x000c. Please report as an issue. */
    public AbstractC18986l getStrategy(char c, int i, Calendar calendar) {
        if (c != 'y') {
            if (c != 'z') {
                switch (c) {
                    case 'D':
                        return DAY_OF_YEAR_STRATEGY;
                    case 'E':
                        return getLocaleSpecificStrategy(7, calendar);
                    case 'F':
                        return DAY_OF_WEEK_IN_MONTH_STRATEGY;
                    case 'G':
                        return getLocaleSpecificStrategy(0, calendar);
                    case 'H':
                        return HOUR_OF_DAY_STRATEGY;
                    default:
                        switch (c) {
                            case 'K':
                                return HOUR_STRATEGY;
                            case 'M':
                                return i >= 3 ? getLocaleSpecificStrategy(2, calendar) : NUMBER_MONTH_STRATEGY;
                            case 'S':
                                return MILLISECOND_STRATEGY;
                            case 'a':
                                return getLocaleSpecificStrategy(9, calendar);
                            case 'd':
                                return DAY_OF_MONTH_STRATEGY;
                            case 'h':
                                return HOUR12_STRATEGY;
                            case 'k':
                                return HOUR24_OF_DAY_STRATEGY;
                            case 'm':
                                return MINUTE_STRATEGY;
                            case 's':
                                return SECOND_STRATEGY;
                            case 'u':
                                return DAY_OF_WEEK_STRATEGY;
                            case 'w':
                                return WEEK_OF_YEAR_STRATEGY;
                            default:
                                switch (c) {
                                    case 'W':
                                        return WEEK_OF_MONTH_STRATEGY;
                                    case 'X':
                                        return C18983i.m67404g(i);
                                    case 'Y':
                                        break;
                                    case 'Z':
                                        if (i == 2) {
                                            return C18983i.f107641d;
                                        }
                                        break;
                                    default:
                                        throw new IllegalArgumentException("Format '" + c + "' not supported");
                                }
                        }
                }
            }
            return getLocaleSpecificStrategy(15, calendar);
        }
        return i > 2 ? LITERAL_YEAR_STRATEGY : ABBREVIATED_YEAR_STRATEGY;
    }

    private void init(Calendar calendar) {
        this.patterns = new ArrayList();
        C18988n c18988n = new C18988n(calendar);
        while (true) {
            C18987m m67408a = c18988n.m67408a();
            if (m67408a == null) {
                return;
            } else {
                this.patterns.add(m67408a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isFormatLetter(char c) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(Calendar.getInstance(this.timeZone, this.locale));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static StringBuilder simpleQuote(StringBuilder sb, String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '$' && charAt != '.' && charAt != '?' && charAt != '^' && charAt != '[' && charAt != '\\' && charAt != '{' && charAt != '|') {
                switch (charAt) {
                }
                sb.append(charAt);
            }
            sb.append('\\');
            sb.append(charAt);
        }
        return sb;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDateParser)) {
            return false;
        }
        FastDateParser fastDateParser = (FastDateParser) obj;
        return this.pattern.equals(fastDateParser.pattern) && this.timeZone.equals(fastDateParser.timeZone) && this.locale.equals(fastDateParser.locale);
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.locale;
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.pattern;
    }

    @Override // org.apache.commons.lang3.time.DateParser, org.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public int hashCode() {
        return this.pattern.hashCode() + ((this.timeZone.hashCode() + (this.locale.hashCode() * 13)) * 13);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Date parse(String str) throws ParseException {
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = parse(str, parsePosition);
        if (parse != null) {
            return parse;
        }
        if (this.locale.equals(JAPANESE_IMPERIAL)) {
            throw new ParseException("(The " + this.locale + " locale does not support dates before 1868 AD)\nUnparseable date: \"" + str, parsePosition.getErrorIndex());
        }
        throw new ParseException("Unparseable date: " + str, parsePosition.getErrorIndex());
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Object parseObject(String str) throws ParseException {
        return parse(str);
    }

    public String toString() {
        return "FastDateParser[" + this.pattern + "," + this.locale + "," + this.timeZone.getID() + IteratorUtils.f104924b;
    }

    public FastDateParser(String str, TimeZone timeZone, Locale locale, Date date) {
        int i;
        this.pattern = str;
        this.timeZone = timeZone;
        this.locale = locale;
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        if (date != null) {
            calendar.setTime(date);
            i = calendar.get(1);
        } else if (locale.equals(JAPANESE_IMPERIAL)) {
            i = 0;
        } else {
            calendar.setTime(new Date());
            i = calendar.get(1) - 80;
        }
        int i2 = (i / 100) * 100;
        this.century = i2;
        this.startYear = i - i2;
        init(calendar);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Object parseObject(String str, ParsePosition parsePosition) {
        return parse(str, parsePosition);
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public Date parse(String str, ParsePosition parsePosition) {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        calendar.clear();
        if (parse(str, parsePosition, calendar)) {
            return calendar.getTime();
        }
        return null;
    }

    @Override // org.apache.commons.lang3.time.DateParser
    public boolean parse(String str, ParsePosition parsePosition, Calendar calendar) {
        ListIterator<C18987m> listIterator = this.patterns.listIterator();
        while (listIterator.hasNext()) {
            C18987m next = listIterator.next();
            if (!next.f107644a.mo67402b(this, calendar, str, parsePosition, next.m67407a(listIterator))) {
                return false;
            }
        }
        return true;
    }
}
