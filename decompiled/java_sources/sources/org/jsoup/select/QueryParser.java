package org.jsoup.select;

import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.TokenQueue;
import org.jsoup.select.AbstractC20370a;
import org.jsoup.select.AbstractC20371b;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Selector;

/* loaded from: classes13.dex */
public class QueryParser {

    /* renamed from: d */
    public static final String[] f114436d = {",", ">", "+", "~", " "};

    /* renamed from: e */
    public static final String[] f114437e = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: f */
    public static final Pattern f114438f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: g */
    public static final Pattern f114439g = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: a */
    public TokenQueue f114440a;

    /* renamed from: b */
    public String f114441b;

    /* renamed from: c */
    public List<Evaluator> f114442c = new ArrayList();

    public QueryParser(String str) {
        Validate.notEmpty(str);
        String trim = str.trim();
        this.f114441b = trim;
        this.f114440a = new TokenQueue(trim);
    }

    public static Evaluator parse(String str) {
        try {
            return new QueryParser(str).m71447s();
        } catch (IllegalArgumentException e) {
            throw new Selector.SelectorParseException(e.getMessage(), new Object[0]);
        }
    }

    /* renamed from: a */
    public final String m71429a() {
        String str;
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        while (!this.f114440a.isEmpty()) {
            if (this.f114440a.matches(MotionUtils.f31761c)) {
                borrowBuilder.append(MotionUtils.f31761c);
                borrowBuilder.append(this.f114440a.chompBalanced('(', ')'));
                str = MotionUtils.f31762d;
            } else if (this.f114440a.matches(IteratorUtils.f104923a)) {
                borrowBuilder.append(IteratorUtils.f104923a);
                borrowBuilder.append(this.f114440a.chompBalanced('[', ']'));
                str = IteratorUtils.f104924b;
            } else {
                if (this.f114440a.matchesAny(f114436d)) {
                    break;
                }
                borrowBuilder.append(this.f114440a.consume());
            }
            borrowBuilder.append(str);
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m71430b(char r11) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.m71430b(char):void");
    }

    /* renamed from: c */
    public final void m71431c(boolean z) {
        this.f114440a.consume(z ? ":containsOwn" : ":contains");
        String unescape = TokenQueue.unescape(this.f114440a.chompBalanced('(', ')'));
        Validate.notEmpty(unescape, ":contains(text) query must not be empty");
        this.f114442c.add(z ? new Evaluator.ContainsOwnText(unescape) : new Evaluator.ContainsText(unescape));
    }

    /* renamed from: d */
    public final void m71432d(boolean z, boolean z2) {
        String normalize = Normalizer.normalize(this.f114440a.chompTo(MotionUtils.f31762d));
        Matcher matcher = f114438f.matcher(normalize);
        Matcher matcher2 = f114439g.matcher(normalize);
        int i = 2;
        int i2 = 1;
        if (!"odd".equals(normalize)) {
            if ("even".equals(normalize)) {
                i2 = 0;
            } else if (matcher.matches()) {
                int parseInt = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                i2 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
                i = parseInt;
            } else {
                if (!matcher2.matches()) {
                    throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", normalize);
                }
                i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i = 0;
            }
        }
        this.f114442c.add(z2 ? z ? new Evaluator.IsNthLastOfType(i, i2) : new Evaluator.IsNthOfType(i, i2) : z ? new Evaluator.IsNthLastChild(i, i2) : new Evaluator.IsNthChild(i, i2));
    }

    /* renamed from: e */
    public final void m71433e() {
        List<Evaluator> list;
        Evaluator matchText;
        if (this.f114440a.matchChomp("#")) {
            m71435g();
            return;
        }
        if (this.f114440a.matchChomp(".")) {
            m71436h();
            return;
        }
        if (this.f114440a.matchesWord() || this.f114440a.matches("*|")) {
            m71437i();
            return;
        }
        if (this.f114440a.matches(IteratorUtils.f104923a)) {
            m71438j();
            return;
        }
        if (this.f114440a.matchChomp("*")) {
            m71439k();
            return;
        }
        if (this.f114440a.matchChomp(":lt(")) {
            m71440l();
            return;
        }
        if (this.f114440a.matchChomp(":gt(")) {
            m71441m();
            return;
        }
        if (this.f114440a.matchChomp(":eq(")) {
            m71442n();
            return;
        }
        if (this.f114440a.matches(":has(")) {
            m71444p();
            return;
        }
        if (this.f114440a.matches(":contains(")) {
            m71431c(false);
            return;
        }
        if (this.f114440a.matches(":containsOwn(")) {
            m71431c(true);
            return;
        }
        if (this.f114440a.matches(":containsData(")) {
            m71445q();
            return;
        }
        if (this.f114440a.matches(":matches(")) {
            m71434f(false);
            return;
        }
        if (this.f114440a.matches(":matchesOwn(")) {
            m71434f(true);
            return;
        }
        if (this.f114440a.matches(":not(")) {
            m71446r();
            return;
        }
        if (this.f114440a.matchChomp(":nth-child(")) {
            m71432d(false, false);
            return;
        }
        if (this.f114440a.matchChomp(":nth-last-child(")) {
            m71432d(true, false);
            return;
        }
        if (this.f114440a.matchChomp(":nth-of-type(")) {
            m71432d(false, true);
            return;
        }
        if (this.f114440a.matchChomp(":nth-last-of-type(")) {
            m71432d(true, true);
            return;
        }
        if (this.f114440a.matchChomp(":first-child")) {
            list = this.f114442c;
            matchText = new Evaluator.IsFirstChild();
        } else if (this.f114440a.matchChomp(":last-child")) {
            list = this.f114442c;
            matchText = new Evaluator.IsLastChild();
        } else if (this.f114440a.matchChomp(":first-of-type")) {
            list = this.f114442c;
            matchText = new Evaluator.IsFirstOfType();
        } else if (this.f114440a.matchChomp(":last-of-type")) {
            list = this.f114442c;
            matchText = new Evaluator.IsLastOfType();
        } else if (this.f114440a.matchChomp(":only-child")) {
            list = this.f114442c;
            matchText = new Evaluator.IsOnlyChild();
        } else if (this.f114440a.matchChomp(":only-of-type")) {
            list = this.f114442c;
            matchText = new Evaluator.IsOnlyOfType();
        } else if (this.f114440a.matchChomp(":empty")) {
            list = this.f114442c;
            matchText = new Evaluator.IsEmpty();
        } else if (this.f114440a.matchChomp(":root")) {
            list = this.f114442c;
            matchText = new Evaluator.IsRoot();
        } else {
            if (!this.f114440a.matchChomp(":matchText")) {
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f114441b, this.f114440a.remainder());
            }
            list = this.f114442c;
            matchText = new Evaluator.MatchText();
        }
        list.add(matchText);
    }

    /* renamed from: f */
    public final void m71434f(boolean z) {
        this.f114440a.consume(z ? ":matchesOwn" : ":matches");
        String chompBalanced = this.f114440a.chompBalanced('(', ')');
        Validate.notEmpty(chompBalanced, ":matches(regex) query must not be empty");
        this.f114442c.add(z ? new Evaluator.MatchesOwn(Pattern.compile(chompBalanced)) : new Evaluator.Matches(Pattern.compile(chompBalanced)));
    }

    /* renamed from: g */
    public final void m71435g() {
        String consumeCssIdentifier = this.f114440a.consumeCssIdentifier();
        Validate.notEmpty(consumeCssIdentifier);
        this.f114442c.add(new Evaluator.C20369Id(consumeCssIdentifier));
    }

    /* renamed from: h */
    public final void m71436h() {
        String consumeCssIdentifier = this.f114440a.consumeCssIdentifier();
        Validate.notEmpty(consumeCssIdentifier);
        this.f114442c.add(new Evaluator.Class(consumeCssIdentifier.trim()));
    }

    /* renamed from: i */
    public final void m71437i() {
        String normalize = Normalizer.normalize(this.f114440a.consumeElementSelector());
        Validate.notEmpty(normalize);
        if (normalize.startsWith("*|")) {
            this.f114442c.add(new AbstractC20370a.b(new Evaluator.Tag(normalize), new Evaluator.TagEndsWith(normalize.replace("*|", ":"))));
            return;
        }
        if (normalize.contains(IidStore.f35940g)) {
            normalize = normalize.replace(IidStore.f35940g, ":");
        }
        this.f114442c.add(new Evaluator.Tag(normalize));
    }

    /* renamed from: j */
    public final void m71438j() {
        List<Evaluator> list;
        Evaluator attributeWithValueMatching;
        TokenQueue tokenQueue = new TokenQueue(this.f114440a.chompBalanced('[', ']'));
        String consumeToAny = tokenQueue.consumeToAny(f114437e);
        Validate.notEmpty(consumeToAny);
        tokenQueue.consumeWhitespace();
        if (tokenQueue.isEmpty()) {
            this.f114442c.add(consumeToAny.startsWith("^") ? new Evaluator.AttributeStarting(consumeToAny.substring(1)) : new Evaluator.Attribute(consumeToAny));
            return;
        }
        if (tokenQueue.matchChomp("=")) {
            list = this.f114442c;
            attributeWithValueMatching = new Evaluator.AttributeWithValue(consumeToAny, tokenQueue.remainder());
        } else if (tokenQueue.matchChomp("!=")) {
            list = this.f114442c;
            attributeWithValueMatching = new Evaluator.AttributeWithValueNot(consumeToAny, tokenQueue.remainder());
        } else if (tokenQueue.matchChomp("^=")) {
            list = this.f114442c;
            attributeWithValueMatching = new Evaluator.AttributeWithValueStarting(consumeToAny, tokenQueue.remainder());
        } else if (tokenQueue.matchChomp("$=")) {
            list = this.f114442c;
            attributeWithValueMatching = new Evaluator.AttributeWithValueEnding(consumeToAny, tokenQueue.remainder());
        } else if (tokenQueue.matchChomp("*=")) {
            list = this.f114442c;
            attributeWithValueMatching = new Evaluator.AttributeWithValueContaining(consumeToAny, tokenQueue.remainder());
        } else {
            if (!tokenQueue.matchChomp("~=")) {
                throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f114441b, tokenQueue.remainder());
            }
            list = this.f114442c;
            attributeWithValueMatching = new Evaluator.AttributeWithValueMatching(consumeToAny, Pattern.compile(tokenQueue.remainder()));
        }
        list.add(attributeWithValueMatching);
    }

    /* renamed from: k */
    public final void m71439k() {
        this.f114442c.add(new Evaluator.AllElements());
    }

    /* renamed from: l */
    public final void m71440l() {
        this.f114442c.add(new Evaluator.IndexLessThan(m71443o()));
    }

    /* renamed from: m */
    public final void m71441m() {
        this.f114442c.add(new Evaluator.IndexGreaterThan(m71443o()));
    }

    /* renamed from: n */
    public final void m71442n() {
        this.f114442c.add(new Evaluator.IndexEquals(m71443o()));
    }

    /* renamed from: o */
    public final int m71443o() {
        String trim = this.f114440a.chompTo(MotionUtils.f31762d).trim();
        Validate.isTrue(StringUtil.isNumeric(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    /* renamed from: p */
    public final void m71444p() {
        this.f114440a.consume(":has");
        String chompBalanced = this.f114440a.chompBalanced('(', ')');
        Validate.notEmpty(chompBalanced, ":has(el) subselect must not be empty");
        this.f114442c.add(new AbstractC20371b.a(parse(chompBalanced)));
    }

    /* renamed from: q */
    public final void m71445q() {
        this.f114440a.consume(":containsData");
        String unescape = TokenQueue.unescape(this.f114440a.chompBalanced('(', ')'));
        Validate.notEmpty(unescape, ":containsData(text) query must not be empty");
        this.f114442c.add(new Evaluator.ContainsData(unescape));
    }

    /* renamed from: r */
    public final void m71446r() {
        this.f114440a.consume(":not");
        String chompBalanced = this.f114440a.chompBalanced('(', ')');
        Validate.notEmpty(chompBalanced, ":not(selector) subselect must not be empty");
        this.f114442c.add(new AbstractC20371b.d(parse(chompBalanced)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0026, code lost:
    
        m71433e();
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0041 -> B:5:0x001f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003c -> B:4:0x0019). Please report as a decompilation issue!!! */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.jsoup.select.Evaluator m71447s() {
        /*
            r3 = this;
            org.jsoup.parser.TokenQueue r0 = r3.f114440a
            r0.consumeWhitespace()
            org.jsoup.parser.TokenQueue r0 = r3.f114440a
            java.lang.String[] r1 = org.jsoup.select.QueryParser.f114436d
            boolean r0 = r0.matchesAny(r1)
            if (r0 == 0) goto L23
            java.util.List<org.jsoup.select.Evaluator> r0 = r3.f114442c
            org.jsoup.select.b$g r1 = new org.jsoup.select.b$g
            r1.<init>()
            r0.add(r1)
        L19:
            org.jsoup.parser.TokenQueue r0 = r3.f114440a
            char r0 = r0.consume()
        L1f:
            r3.m71430b(r0)
            goto L26
        L23:
            r3.m71433e()
        L26:
            org.jsoup.parser.TokenQueue r0 = r3.f114440a
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L44
            org.jsoup.parser.TokenQueue r0 = r3.f114440a
            boolean r0 = r0.consumeWhitespace()
            org.jsoup.parser.TokenQueue r1 = r3.f114440a
            java.lang.String[] r2 = org.jsoup.select.QueryParser.f114436d
            boolean r1 = r1.matchesAny(r2)
            if (r1 == 0) goto L3f
            goto L19
        L3f:
            if (r0 == 0) goto L23
            r0 = 32
            goto L1f
        L44:
            java.util.List<org.jsoup.select.Evaluator> r0 = r3.f114442c
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L57
            java.util.List<org.jsoup.select.Evaluator> r3 = r3.f114442c
            r0 = 0
            java.lang.Object r3 = r3.get(r0)
            org.jsoup.select.Evaluator r3 = (org.jsoup.select.Evaluator) r3
            return r3
        L57:
            org.jsoup.select.a$a r0 = new org.jsoup.select.a$a
            java.util.List<org.jsoup.select.Evaluator> r3 = r3.f114442c
            r0.<init>(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.m71447s():org.jsoup.select.Evaluator");
    }
}
