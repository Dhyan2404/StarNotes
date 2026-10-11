package net.p110sf.saxon.om;

import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;
import org.scribe.model.ParameterList;

/* loaded from: classes11.dex */
public class QNameParser {

    /* renamed from: a */
    public NamespaceResolver f100843a;

    /* renamed from: b */
    public boolean f100844b = false;

    /* renamed from: c */
    public String f100845c = "XPST0003";

    /* renamed from: d */
    public String f100846d = "XPST0081";

    /* renamed from: e */
    public XQueryParser.Unescaper f100847e = null;

    public QNameParser(NamespaceResolver namespaceResolver) {
        this.f100843a = namespaceResolver;
    }

    /* renamed from: a */
    public final void m63398a(String str) throws XPathException {
        if (!NameChecker.isValidNCName(str)) {
            throw new XPathException("Invalid EQName: local part is not a valid NCName", this.f100845c);
        }
    }

    /* renamed from: b */
    public final QNameParser m63399b() {
        QNameParser qNameParser = new QNameParser(this.f100843a);
        qNameParser.f100844b = this.f100844b;
        qNameParser.f100845c = this.f100845c;
        qNameParser.f100846d = this.f100846d;
        qNameParser.f100847e = this.f100847e;
        return qNameParser;
    }

    public StructuredQName parse(String str, String str2) throws XPathException {
        String str3 = Whitespace.trim(str).toString();
        if (!this.f100844b || str3.length() < 4 || str3.charAt(0) != 'Q' || str3.charAt(1) != '{') {
            try {
                String[] qNameParts = NameChecker.getQNameParts(str3);
                m63398a(qNameParts[1]);
                if (qNameParts[0].isEmpty()) {
                    return new StructuredQName("", str2, qNameParts[1]);
                }
                String uRIForPrefix = this.f100843a.getURIForPrefix(qNameParts[0], false);
                if (uRIForPrefix != null) {
                    return new StructuredQName(qNameParts[0], uRIForPrefix, qNameParts[1]);
                }
                throw new XPathException("Namespace prefix '" + qNameParts[0] + "' has not been declared", this.f100846d);
            } catch (QNameException e) {
                throw new XPathException(e.getMessage(), this.f100845c);
            }
        }
        int indexOf = str3.indexOf(125);
        if (indexOf < 0) {
            throw new XPathException("Invalid EQName: closing brace not found", this.f100845c);
        }
        if (indexOf == str3.length() - 1) {
            throw new XPathException("Invalid EQName: local part is missing", this.f100845c);
        }
        String collapseWhitespace = Whitespace.collapseWhitespace(str3.substring(2, indexOf));
        if (collapseWhitespace.contains("{")) {
            throw new XPathException("Invalid EQName: URI contains opening brace", this.f100845c);
        }
        if (this.f100847e != null && collapseWhitespace.contains(ParameterList.f115951c)) {
            collapseWhitespace = this.f100847e.unescape(collapseWhitespace).toString();
        }
        if (collapseWhitespace.equals("http://www.w3.org/2000/xmlns/")) {
            throw new XPathException("The string 'http://www.w3.org/2000/xmlns/' cannot be used as a namespace URI", "XQST0070");
        }
        String substring = str3.substring(indexOf + 1);
        m63398a(substring);
        return new StructuredQName("", collapseWhitespace, substring);
    }

    public QNameParser withAcceptEQName(boolean z) {
        if (z == this.f100844b) {
            return this;
        }
        QNameParser m63399b = m63399b();
        m63399b.f100844b = z;
        return m63399b;
    }

    public QNameParser withErrorOnBadSyntax(String str) {
        if (str.equals(this.f100845c)) {
            return this;
        }
        QNameParser m63399b = m63399b();
        m63399b.f100845c = str;
        return m63399b;
    }

    public QNameParser withErrorOnUnresolvedPrefix(String str) {
        if (str.equals(this.f100846d)) {
            return this;
        }
        QNameParser m63399b = m63399b();
        m63399b.f100846d = str;
        return m63399b;
    }

    public QNameParser withNamespaceResolver(NamespaceResolver namespaceResolver) {
        QNameParser m63399b = m63399b();
        m63399b.f100843a = namespaceResolver;
        return m63399b;
    }

    public QNameParser withUnescaper(XQueryParser.Unescaper unescaper) {
        QNameParser m63399b = m63399b();
        m63399b.f100847e = unescaper;
        return m63399b;
    }
}
