package net.p110sf.saxon.expr.sort;

import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.CollationElementIterator;
import java.text.CollationKey;
import java.text.Collator;
import java.text.RuleBasedCollator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Properties;
import java.util.Set;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.value.AnyURIValue;

/* loaded from: classes11.dex */
public class UcaCollatorUsingJava implements SubstringMatcher {

    /* renamed from: e */
    public static final String[] f100120e;

    /* renamed from: f */
    public static final Set<String> f100121f;

    /* renamed from: a */
    public final String f100122a;

    /* renamed from: b */
    public RuleBasedCollator f100123b = (RuleBasedCollator) Collator.getInstance();

    /* renamed from: c */
    public InterfaceC18334e f100124c;

    /* renamed from: d */
    public Properties f100125d;

    /* renamed from: net.sf.saxon.expr.sort.UcaCollatorUsingJava$b */
    /* loaded from: classes11.dex */
    public class C18331b implements InterfaceC18334e {
        public C18331b() {
        }

        @Override // net.p110sf.saxon.expr.sort.UcaCollatorUsingJava.InterfaceC18334e
        /* renamed from: a */
        public int mo62945a(int i, int i2) {
            return Integer.compare(i, i2);
        }
    }

    /* renamed from: net.sf.saxon.expr.sort.UcaCollatorUsingJava$c */
    /* loaded from: classes11.dex */
    public class C18332c implements InterfaceC18334e {
        public C18332c() {
        }

        @Override // net.p110sf.saxon.expr.sort.UcaCollatorUsingJava.InterfaceC18334e
        /* renamed from: a */
        public int mo62945a(int i, int i2) {
            return Integer.compare(CollationElementIterator.primaryOrder(i), CollationElementIterator.primaryOrder(i2));
        }
    }

    /* renamed from: net.sf.saxon.expr.sort.UcaCollatorUsingJava$d */
    /* loaded from: classes11.dex */
    public class C18333d implements InterfaceC18334e {
        public C18333d() {
        }

        @Override // net.p110sf.saxon.expr.sort.UcaCollatorUsingJava.InterfaceC18334e
        /* renamed from: a */
        public int mo62945a(int i, int i2) {
            int compare = Integer.compare(CollationElementIterator.primaryOrder(i), CollationElementIterator.primaryOrder(i2));
            return compare == 0 ? Integer.compare(CollationElementIterator.secondaryOrder(i), CollationElementIterator.secondaryOrder(i2)) : compare;
        }
    }

    /* renamed from: net.sf.saxon.expr.sort.UcaCollatorUsingJava$e */
    /* loaded from: classes11.dex */
    public interface InterfaceC18334e {
        /* renamed from: a */
        int mo62945a(int i, int i2);
    }

    /* renamed from: net.sf.saxon.expr.sort.UcaCollatorUsingJava$f */
    /* loaded from: classes11.dex */
    public class C18335f implements InterfaceC18334e {
        public C18335f() {
        }

        @Override // net.p110sf.saxon.expr.sort.UcaCollatorUsingJava.InterfaceC18334e
        /* renamed from: a */
        public int mo62945a(int i, int i2) {
            int compare = Integer.compare(CollationElementIterator.primaryOrder(i), CollationElementIterator.primaryOrder(i2));
            if (compare != 0) {
                return compare;
            }
            int compare2 = Integer.compare(CollationElementIterator.secondaryOrder(i), CollationElementIterator.secondaryOrder(i2));
            return compare2 == 0 ? Integer.compare(CollationElementIterator.tertiaryOrder(i), CollationElementIterator.tertiaryOrder(i2)) : compare2;
        }
    }

    static {
        String[] strArr = {Constants.ELEMNAME_FALLBACK_STRING, "lang", "version", "strength", SVGParser.f16044p, "backwards", "normalization", "maxVariable", "caseLevel", "caseFirst", "numeric", "reorder"};
        f100120e = strArr;
        f100121f = new HashSet(Arrays.asList(strArr));
    }

    public UcaCollatorUsingJava(String str) throws XPathException {
        this.f100122a = str;
        m62943h(m62942g(str));
    }

    /* renamed from: a */
    public final boolean m62936a(CollationElementIterator collationElementIterator, CollationElementIterator collationElementIterator2, int[] iArr, boolean z) {
        m62941f();
        int next = collationElementIterator2.next();
        if (next == -1) {
            return true;
        }
        while (true) {
            int i = -1;
            while (this.f100124c.mo62945a(i, next) != 0) {
                i = collationElementIterator.next();
                if (i == -1) {
                    return false;
                }
            }
            int offset = collationElementIterator.getOffset();
            if (m62937b(collationElementIterator, collationElementIterator2)) {
                if (!z) {
                    if (iArr != null) {
                        iArr[0] = offset - 1;
                        iArr[1] = collationElementIterator.getOffset();
                    }
                    return true;
                }
                if (collationElementIterator.next() == -1) {
                    return true;
                }
            }
            collationElementIterator.setOffset(offset);
            if (collationElementIterator.getOffset() != offset) {
                collationElementIterator.next();
            }
            collationElementIterator2.reset();
            next = collationElementIterator2.next();
        }
    }

    /* renamed from: b */
    public final boolean m62937b(CollationElementIterator collationElementIterator, CollationElementIterator collationElementIterator2) {
        int next;
        int next2;
        m62941f();
        do {
            next = collationElementIterator2.next();
            if (next == -1) {
                return true;
            }
            next2 = collationElementIterator.next();
            if (next2 == -1) {
                return false;
            }
        } while (this.f100124c.mo62945a(next2, next) == 0);
        return false;
    }

    /* renamed from: c */
    public final void m62938c(String str) throws XPathException {
        throw new XPathException("Error in UCA Collation URI " + this.f100122a + ": " + str, "FOCH0002");
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return this.f100123b.compare(unicodeString.toString(), unicodeString2.toString());
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return this.f100123b.compare(unicodeString.toString(), unicodeString2.toString()) == 0;
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean contains(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator ruleBasedCollator = getRuleBasedCollator();
        return m62936a(ruleBasedCollator.getCollationElementIterator(unicodeString.toString()), ruleBasedCollator.getCollationElementIterator(unicodeString2.toString()), null, false);
    }

    /* renamed from: d */
    public final void m62939d(String str, String str2) throws XPathException {
        m62938c("value of " + str + " must be " + str2);
    }

    /* renamed from: e */
    public final void m62940e(String str, String str2, String str3) throws XPathException {
        m62938c("value of " + str + " must be " + str2 + ", requested was:" + str3);
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean endsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator ruleBasedCollator = getRuleBasedCollator();
        return m62936a(ruleBasedCollator.getCollationElementIterator(unicodeString.toString()), ruleBasedCollator.getCollationElementIterator(unicodeString2.toString()), null, true);
    }

    /* renamed from: f */
    public final void m62941f() {
        if (this.f100124c == null) {
            int strength = getStrength();
            if (strength == 0) {
                this.f100124c = new C18332c();
                return;
            }
            if (strength == 1) {
                this.f100124c = new C18333d();
            } else if (strength != 2) {
                this.f100124c = new C18331b();
            } else {
                this.f100124c = new C18335f();
            }
        }
    }

    /* renamed from: g */
    public final Properties m62942g(String str) throws XPathException {
        try {
            URI uri = new URI(str);
            ArrayList arrayList = new ArrayList();
            Properties properties = new Properties();
            String decode = AnyURIValue.decode(uri.getRawQuery());
            if (decode != null && !decode.isEmpty()) {
                for (String str2 : decode.split(AndroidTreeView.f47214k)) {
                    String[] split = str2.split("=");
                    if (!f100121f.contains(split[0])) {
                        arrayList.add(split[0]);
                    }
                    properties.setProperty(split[0], split[1]);
                }
            }
            String property = properties.getProperty(Constants.ELEMNAME_FALLBACK_STRING);
            if (property != null && property.equals(SVGParser.f16048t) && !arrayList.isEmpty()) {
                StringBuilder sb = new StringBuilder(arrayList.size() > 1 ? "unknown parameters:" : "unknown parameter:");
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    sb.append((String) it2.next());
                    sb.append(" ");
                }
                m62938c(sb.toString());
            }
            return properties;
        } catch (URISyntaxException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        return new CollationMatchKey(this.f100123b.getCollationKey(unicodeString.toString()));
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public String getCollationURI() {
        return this.f100122a;
    }

    public CollationKey getJavaCollationKey(String str) {
        return this.f100123b.getCollationKey(str);
    }

    public Properties getProperties() {
        return this.f100125d;
    }

    public RuleBasedCollator getRuleBasedCollator() {
        return this.f100123b;
    }

    public int getStrength() {
        return this.f100123b.getStrength();
    }

    /* renamed from: h */
    public final void m62943h(Properties properties) throws XPathException {
        this.f100125d = properties;
        String property = properties.getProperty(Constants.ELEMNAME_FALLBACK_STRING);
        if (property != null) {
            if (property.equals(SVGParser.f16048t)) {
                m62938c("fallback=no is not supported in Saxon-HE");
            } else if (!property.equals("yes")) {
                m62939d(Constants.ELEMNAME_FALLBACK_STRING, "yes|no");
            }
        }
        String property2 = properties.getProperty("lang");
        if (property2 != null && !property2.isEmpty()) {
            if (StringConverter.StringToLanguage.INSTANCE.validate(StringView.tidy(property2)) != null) {
                m62939d("lang", "a valid language code");
            }
            String[] split = property2.split("-");
            this.f100123b = (RuleBasedCollator) Collator.getInstance(new Locale(split[0], split.length > 1 ? split[1] : "", split.length > 2 ? split[2] : ""));
        }
        String property3 = properties.getProperty("strength");
        if (property3 != null) {
            char c = 65535;
            switch (property3.hashCode()) {
                case -1624642178:
                    if (property3.equals("quaternary")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1174796206:
                    if (property3.equals("tertiary")) {
                        c = 1;
                        break;
                    }
                    break;
                case -817598092:
                    if (property3.equals("secondary")) {
                        c = 2;
                        break;
                    }
                    break;
                case -314765822:
                    if (property3.equals("primary")) {
                        c = 3;
                        break;
                    }
                    break;
                case 49:
                    if (property3.equals("1")) {
                        c = 4;
                        break;
                    }
                    break;
                case 50:
                    if (property3.equals("2")) {
                        c = 5;
                        break;
                    }
                    break;
                case 51:
                    if (property3.equals("3")) {
                        c = 6;
                        break;
                    }
                    break;
                case 52:
                    if (property3.equals("4")) {
                        c = 7;
                        break;
                    }
                    break;
                case 53:
                    if (property3.equals("5")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 86336693:
                    if (property3.equals("identical")) {
                        c = '\t';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 7:
                    setStrength(3);
                    break;
                case 1:
                case 6:
                    setStrength(2);
                    break;
                case 2:
                case 5:
                    setStrength(1);
                    break;
                case 3:
                case 4:
                    setStrength(0);
                    break;
                case '\b':
                case '\t':
                    setStrength(3);
                    break;
            }
        }
        String property4 = properties.getProperty("normalization");
        if (property4 != null) {
            if (property4.equals("yes")) {
                this.f100123b.setDecomposition(1);
            } else if (property4.equals(SVGParser.f16048t)) {
                this.f100123b.setDecomposition(0);
            }
        }
    }

    public int hashCode() {
        return this.f100123b.hashCode();
    }

    /* renamed from: i */
    public final String m62944i(int i) {
        return "" + CollationElementIterator.primaryOrder(i) + "/" + ((int) CollationElementIterator.secondaryOrder(i)) + "/" + ((int) CollationElementIterator.tertiaryOrder(i));
    }

    public void setStrength(int i) {
        this.f100123b.setStrength(i);
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean startsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator ruleBasedCollator = getRuleBasedCollator();
        return m62937b(ruleBasedCollator.getCollationElementIterator(unicodeString.toString()), ruleBasedCollator.getCollationElementIterator(unicodeString2.toString()));
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringAfter(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator ruleBasedCollator = getRuleBasedCollator();
        return m62936a(ruleBasedCollator.getCollationElementIterator(unicodeString.toString()), ruleBasedCollator.getCollationElementIterator(unicodeString2.toString()), new int[2], false) ? unicodeString.substring(r0[1]) : EmptyUnicodeString.getInstance();
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringBefore(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator ruleBasedCollator = getRuleBasedCollator();
        return m62936a(ruleBasedCollator.getCollationElementIterator(unicodeString.toString()), ruleBasedCollator.getCollationElementIterator(unicodeString2.toString()), new int[2], false) ? unicodeString.prefix(r0[0]) : EmptyUnicodeString.getInstance();
    }
}
