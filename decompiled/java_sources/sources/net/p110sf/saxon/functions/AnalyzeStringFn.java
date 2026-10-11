package net.p110sf.saxon.functions;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.regex.RegexMatchHandler;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AnalyzeStringFn extends RegexFunction {

    /* renamed from: i */
    public C18339c f100133i = new C18339c();

    /* renamed from: net.sf.saxon.functions.AnalyzeStringFn$b */
    /* loaded from: classes11.dex */
    public static class C18338b implements RegexMatchHandler {

        /* renamed from: a */
        public final ComplexContentOutputter f100134a;

        /* renamed from: b */
        public final C18339c f100135b;

        public C18338b(ComplexContentOutputter complexContentOutputter, C18339c c18339c) {
            this.f100134a = complexContentOutputter;
            this.f100135b = c18339c;
        }

        @Override // net.p110sf.saxon.regex.RegexMatchHandler
        public void characters(UnicodeString unicodeString) throws XPathException {
            this.f100134a.characters(unicodeString, Loc.NONE, 0);
        }

        @Override // net.p110sf.saxon.regex.RegexMatchHandler
        public void onGroupEnd(int i) throws XPathException {
            this.f100134a.endElement();
        }

        @Override // net.p110sf.saxon.regex.RegexMatchHandler
        public void onGroupStart(int i) throws XPathException {
            ComplexContentOutputter complexContentOutputter = this.f100134a;
            C18339c c18339c = this.f100135b;
            complexContentOutputter.startElement(c18339c.f100139d, c18339c.f100144i, Loc.NONE, 0);
            ComplexContentOutputter complexContentOutputter2 = this.f100134a;
            C18339c c18339c2 = this.f100135b;
            complexContentOutputter2.attribute(c18339c2.f100140e, c18339c2.f100145j, "" + i, Loc.NONE, 0);
            this.f100134a.startContent();
        }
    }

    /* renamed from: net.sf.saxon.functions.AnalyzeStringFn$c */
    /* loaded from: classes11.dex */
    public static class C18339c {

        /* renamed from: a */
        public NodeName f100136a;

        /* renamed from: b */
        public NodeName f100137b;

        /* renamed from: c */
        public NodeName f100138c;

        /* renamed from: d */
        public NodeName f100139d;

        /* renamed from: e */
        public NodeName f100140e;

        /* renamed from: f */
        public SchemaType f100141f;

        /* renamed from: g */
        public SchemaType f100142g;

        /* renamed from: h */
        public SchemaType f100143h;

        /* renamed from: i */
        public SchemaType f100144i;

        /* renamed from: j */
        public SimpleType f100145j;

        public C18339c() {
            this.f100141f = Untyped.getInstance();
            this.f100142g = Untyped.getInstance();
            this.f100143h = Untyped.getInstance();
            this.f100144i = Untyped.getInstance();
            this.f100145j = BuiltInAtomicType.UNTYPED_ATOMIC;
        }
    }

    @Override // net.p110sf.saxon.functions.RegexFunction
    public boolean allowRegexMatchingEmptyString() {
        return false;
    }

    /* renamed from: b */
    public final synchronized void m62949b(Configuration configuration, boolean z) throws XPathException {
        this.f100133i.f100136a = new FingerprintedQName("", "http://www.w3.org/2005/xpath-functions", "analyze-string-result");
        this.f100133i.f100137b = new FingerprintedQName("", "http://www.w3.org/2005/xpath-functions", "non-match");
        this.f100133i.f100138c = new FingerprintedQName("", "http://www.w3.org/2005/xpath-functions", Constants.ATTRNAME_MATCH);
        this.f100133i.f100139d = new FingerprintedQName("", "http://www.w3.org/2005/xpath-functions", "group");
        this.f100133i.f100140e = new NoNamespaceName("nr");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public NodeInfo call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        UnicodeString unicodeStringValue;
        Item head = sequenceArr[0].head();
        if (head == null) {
            unicodeStringValue = EmptyUnicodeString.getInstance();
        } else {
            unicodeStringValue = head.getUnicodeStringValue();
        }
        RegexIterator analyze = getRegularExpression(sequenceArr).analyze(unicodeStringValue);
        m62949b(xPathContext.getConfiguration(), false);
        Builder makeBuilder = xPathContext.getController().makeBuilder();
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(makeBuilder);
        C18338b c18338b = new C18338b(complexContentOutputter, this.f100133i);
        makeBuilder.setBaseURI(getStaticBaseUriString());
        complexContentOutputter.open();
        C18339c c18339c = this.f100133i;
        complexContentOutputter.startElement(c18339c.f100136a, c18339c.f100141f, Loc.NONE, 0);
        complexContentOutputter.startContent();
        while (true) {
            StringValue next = analyze.next();
            if (next != null) {
                if (analyze.isMatching()) {
                    C18339c c18339c2 = this.f100133i;
                    complexContentOutputter.startElement(c18339c2.f100138c, c18339c2.f100143h, Loc.NONE, 0);
                    complexContentOutputter.startContent();
                    analyze.processMatchingSubstring(c18338b);
                    complexContentOutputter.endElement();
                } else {
                    C18339c c18339c3 = this.f100133i;
                    complexContentOutputter.startElement(c18339c3.f100137b, c18339c3.f100142g, Loc.NONE, 0);
                    complexContentOutputter.startContent();
                    complexContentOutputter.characters(next.getUnicodeStringValue(), Loc.NONE, 0);
                    complexContentOutputter.endElement();
                }
            } else {
                complexContentOutputter.endElement();
                complexContentOutputter.close();
                return makeBuilder.getCurrentRoot();
            }
        }
    }
}
