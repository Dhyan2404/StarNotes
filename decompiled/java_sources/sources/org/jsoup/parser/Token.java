package org.jsoup.parser;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attributes;

/* loaded from: classes13.dex */
public abstract class Token {

    /* renamed from: a */
    public TokenType f114186a;

    /* renamed from: b */
    public int f114187b;

    /* renamed from: c */
    public int f114188c;

    /* loaded from: classes13.dex */
    public static final class EndTag extends Tag {
        public EndTag() {
            this.f114186a = TokenType.EndTag;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(XMLStreamWriterImpl.OPEN_END_TAG);
            String str = this.tagName;
            if (str == null) {
                str = "(unset)";
            }
            sb.append(str);
            sb.append(">");
            return sb.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static final class StartTag extends Tag {
        public StartTag() {
            this.f114186a = TokenType.StartTag;
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: p, reason: merged with bridge method [inline-methods] */
        public Tag mo71287a() {
            super.mo71287a();
            this.f114195j = null;
            return this;
        }

        /* renamed from: r */
        public StartTag m71290r(String str, Attributes attributes) {
            this.tagName = str;
            this.f114195j = attributes;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }

        public String toString() {
            StringBuilder sb;
            String name;
            Attributes attributes = this.f114195j;
            if (attributes == null || attributes.size() <= 0) {
                sb = new StringBuilder();
                sb.append("<");
                name = name();
            } else {
                sb = new StringBuilder();
                sb.append("<");
                sb.append(name());
                sb.append(" ");
                name = this.f114195j.toString();
            }
            sb.append(name);
            sb.append(">");
            return sb.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class Tag extends Token {

        /* renamed from: d */
        public String f114189d;

        /* renamed from: e */
        public StringBuilder f114190e;

        /* renamed from: f */
        public String f114191f;

        /* renamed from: g */
        public boolean f114192g;

        /* renamed from: h */
        public boolean f114193h;

        /* renamed from: i */
        public boolean f114194i;

        /* renamed from: j */
        public Attributes f114195j;
        protected String normalName;
        protected String tagName;

        public Tag() {
            super();
            this.f114190e = new StringBuilder();
            this.f114192g = false;
            this.f114193h = false;
            this.f114194i = false;
        }

        /* renamed from: d */
        public final void m71291d() {
            this.f114193h = true;
            String str = this.f114191f;
            if (str != null) {
                this.f114190e.append(str);
                this.f114191f = null;
            }
        }

        /* renamed from: e */
        public final void m71292e(char c) {
            m71293f(String.valueOf(c));
        }

        /* renamed from: f */
        public final void m71293f(String str) {
            String str2 = this.f114189d;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f114189d = str;
        }

        /* renamed from: g */
        public final void m71294g(char c) {
            m71291d();
            this.f114190e.append(c);
        }

        public final Attributes getAttributes() {
            if (this.f114195j == null) {
                this.f114195j = new Attributes();
            }
            return this.f114195j;
        }

        /* renamed from: h */
        public final void m71295h(String str) {
            m71291d();
            if (this.f114190e.length() == 0) {
                this.f114191f = str;
            } else {
                this.f114190e.append(str);
            }
        }

        /* renamed from: i */
        public final void m71296i(char[] cArr) {
            m71291d();
            this.f114190e.append(cArr);
        }

        /* renamed from: j */
        public final void m71297j(int[] iArr) {
            m71291d();
            for (int i : iArr) {
                this.f114190e.appendCodePoint(i);
            }
        }

        /* renamed from: k */
        public final void m71298k(char c) {
            m71299l(String.valueOf(c));
        }

        /* renamed from: l */
        public final void m71299l(String str) {
            String str2 = this.tagName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
        }

        /* renamed from: m */
        public final void m71300m() {
            if (this.f114189d != null) {
                m71302o();
            }
        }

        /* renamed from: n */
        public final boolean m71301n() {
            return this.f114194i;
        }

        public final String name() {
            String str = this.tagName;
            Validate.isFalse(str == null || str.length() == 0);
            return this.tagName;
        }

        public final String normalName() {
            return this.normalName;
        }

        /* renamed from: o */
        public final void m71302o() {
            if (this.f114195j == null) {
                this.f114195j = new Attributes();
            }
            String str = this.f114189d;
            if (str != null) {
                String trim = str.trim();
                this.f114189d = trim;
                if (trim.length() > 0) {
                    this.f114195j.add(this.f114189d, this.f114193h ? this.f114190e.length() > 0 ? this.f114190e.toString() : this.f114191f : this.f114192g ? "" : null);
                }
            }
            this.f114189d = null;
            this.f114192g = false;
            this.f114193h = false;
            Token.m71286b(this.f114190e);
            this.f114191f = null;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: p */
        public Tag mo71287a() {
            this.tagName = null;
            this.normalName = null;
            this.f114189d = null;
            Token.m71286b(this.f114190e);
            this.f114191f = null;
            this.f114192g = false;
            this.f114193h = false;
            this.f114194i = false;
            this.f114195j = null;
            return this;
        }

        /* renamed from: q */
        public final void m71303q() {
            this.f114192g = true;
        }

        public final Tag name(String str) {
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }
    }

    /* loaded from: classes13.dex */
    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    /* renamed from: org.jsoup.parser.Token$a */
    /* loaded from: classes13.dex */
    public static final class C20257a extends C20258b {
        public C20257a(String str) {
            m71305e(str);
        }

        @Override // org.jsoup.parser.Token.C20258b
        public String toString() {
            return "<![CDATA[" + m71304d() + "]]>";
        }
    }

    /* renamed from: org.jsoup.parser.Token$b */
    /* loaded from: classes13.dex */
    public static class C20258b extends Token {

        /* renamed from: d */
        public String f114197d;

        public C20258b() {
            super();
            this.f114186a = TokenType.Character;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: a */
        public Token mo71287a() {
            this.f114197d = null;
            return this;
        }

        /* renamed from: d */
        public String m71304d() {
            return this.f114197d;
        }

        /* renamed from: e */
        public C20258b m71305e(String str) {
            this.f114197d = str;
            return this;
        }

        public String toString() {
            return m71304d();
        }
    }

    /* renamed from: org.jsoup.parser.Token$c */
    /* loaded from: classes13.dex */
    public static final class C20259c extends Token {

        /* renamed from: d */
        public final StringBuilder f114198d;

        /* renamed from: e */
        public String f114199e;

        /* renamed from: f */
        public boolean f114200f;

        public C20259c() {
            super();
            this.f114198d = new StringBuilder();
            this.f114200f = false;
            this.f114186a = TokenType.Comment;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: a */
        public Token mo71287a() {
            Token.m71286b(this.f114198d);
            this.f114199e = null;
            this.f114200f = false;
            return this;
        }

        /* renamed from: d */
        public String m71306d() {
            String str = this.f114199e;
            return str != null ? str : this.f114198d.toString();
        }

        /* renamed from: e */
        public final C20259c m71307e(char c) {
            m71309g();
            this.f114198d.append(c);
            return this;
        }

        /* renamed from: f */
        public final C20259c m71308f(String str) {
            m71309g();
            if (this.f114198d.length() == 0) {
                this.f114199e = str;
            } else {
                this.f114198d.append(str);
            }
            return this;
        }

        /* renamed from: g */
        public final void m71309g() {
            String str = this.f114199e;
            if (str != null) {
                this.f114198d.append(str);
                this.f114199e = null;
            }
        }

        public String toString() {
            return XMLStreamWriterImpl.START_COMMENT + m71306d() + XMLStreamWriterImpl.END_COMMENT;
        }
    }

    /* renamed from: org.jsoup.parser.Token$d */
    /* loaded from: classes13.dex */
    public static final class C20260d extends Token {

        /* renamed from: d */
        public final StringBuilder f114201d;

        /* renamed from: e */
        public String f114202e;

        /* renamed from: f */
        public final StringBuilder f114203f;

        /* renamed from: g */
        public final StringBuilder f114204g;

        /* renamed from: h */
        public boolean f114205h;

        public C20260d() {
            super();
            this.f114201d = new StringBuilder();
            this.f114202e = null;
            this.f114203f = new StringBuilder();
            this.f114204g = new StringBuilder();
            this.f114205h = false;
            this.f114186a = TokenType.Doctype;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: a */
        public Token mo71287a() {
            Token.m71286b(this.f114201d);
            this.f114202e = null;
            Token.m71286b(this.f114203f);
            Token.m71286b(this.f114204g);
            this.f114205h = false;
            return this;
        }

        /* renamed from: d */
        public String m71310d() {
            return this.f114201d.toString();
        }

        /* renamed from: e */
        public String m71311e() {
            return this.f114202e;
        }

        /* renamed from: f */
        public String m71312f() {
            return this.f114203f.toString();
        }

        /* renamed from: g */
        public String m71313g() {
            return this.f114204g.toString();
        }

        /* renamed from: h */
        public boolean m71314h() {
            return this.f114205h;
        }
    }

    /* renamed from: org.jsoup.parser.Token$e */
    /* loaded from: classes13.dex */
    public static final class C20261e extends Token {
        public C20261e() {
            super();
            this.f114186a = TokenType.EOF;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: a */
        public Token mo71287a() {
            return this;
        }
    }

    public Token() {
    }

    /* renamed from: b */
    public static void m71286b(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* renamed from: a */
    public abstract Token mo71287a();

    public final C20258b asCharacter() {
        return (C20258b) this;
    }

    public final C20259c asComment() {
        return (C20259c) this;
    }

    public final C20260d asDoctype() {
        return (C20260d) this;
    }

    public final EndTag asEndTag() {
        return (EndTag) this;
    }

    public final StartTag asStartTag() {
        return (StartTag) this;
    }

    public int byteEndPos() {
        return this.f114188c;
    }

    public int byteStartPos() {
        return this.f114187b;
    }

    /* renamed from: c */
    public String m71288c() {
        return getClass().getSimpleName();
    }

    public final boolean isCData() {
        return this instanceof C20257a;
    }

    public final boolean isCharacter() {
        return this.f114186a == TokenType.Character;
    }

    public final boolean isComment() {
        return this.f114186a == TokenType.Comment;
    }

    public final boolean isDoctype() {
        return this.f114186a == TokenType.Doctype;
    }

    public final boolean isEOF() {
        return this.f114186a == TokenType.EOF;
    }

    public final boolean isEndTag() {
        return this.f114186a == TokenType.EndTag;
    }

    public final boolean isStartTag() {
        return this.f114186a == TokenType.StartTag;
    }

    public void setByteEndPos(int i) {
        this.f114188c = i;
    }

    public void setByteStartPos(int i) {
        this.f114187b = i;
    }
}
