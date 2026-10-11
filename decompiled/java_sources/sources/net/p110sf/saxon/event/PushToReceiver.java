package net.p110sf.saxon.event;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.push.Container;
import net.p110sf.saxon.s9api.push.Document;
import net.p110sf.saxon.s9api.push.Element;
import net.p110sf.saxon.s9api.push.Push;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class PushToReceiver implements Push {

    /* renamed from: a */
    public final ComplexContentOutputter f99058a;

    /* renamed from: b */
    public final Configuration f99059b;

    /* renamed from: net.sf.saxon.event.PushToReceiver$b */
    /* loaded from: classes11.dex */
    public class C18278b extends AbstractC18277a implements Document {

        /* renamed from: f */
        public final boolean f99065f;

        /* renamed from: g */
        public boolean f99066g;

        public C18278b(ComplexContentOutputter complexContentOutputter, boolean z) throws SaxonApiException {
            super(complexContentOutputter, "");
            this.f99066g = false;
            try {
                this.f99065f = z;
                complexContentOutputter.startDocument(0);
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a
        /* renamed from: d */
        public void mo62502d() throws SaxonApiException {
            try {
                if (this.f99065f && !this.f99066g) {
                    throw new SaxonApiException("A well-formed document must contain an element node");
                }
                m62500b().endDocument();
                m62500b().close();
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public C18278b text(CharSequence charSequence) throws SaxonApiException {
            if (!this.f99065f || charSequence == null || charSequence.length() <= 0) {
                return (C18278b) super.text(charSequence);
            }
            throw new SaxonApiException("A well-formed document cannot contain text outside any element");
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element element(QName qName) throws SaxonApiException {
            if (this.f99065f && this.f99066g) {
                throw new SaxonApiException("A well-formed document cannot have more than one element child");
            }
            this.f99066g = true;
            return super.element(qName);
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Document comment(CharSequence charSequence) throws SaxonApiException {
            return (Document) super.comment(charSequence);
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Document processingInstruction(String str, CharSequence charSequence) throws SaxonApiException {
            return (Document) super.processingInstruction(str, charSequence);
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element element(String str) throws SaxonApiException {
            if (this.f99065f && this.f99066g) {
                throw new SaxonApiException("A well-formed document cannot have more than one element child");
            }
            this.f99066g = true;
            return super.element(str);
        }
    }

    /* renamed from: net.sf.saxon.event.PushToReceiver$c */
    /* loaded from: classes11.dex */
    public class C18279c extends AbstractC18277a implements Element {

        /* renamed from: f */
        public boolean f99068f;

        public C18279c(ComplexContentOutputter complexContentOutputter, String str) {
            super(complexContentOutputter, str);
        }

        @Override // net.p110sf.saxon.s9api.push.Element
        public Element attribute(QName qName, String str) throws SaxonApiException {
            m62504e();
            if (str != null) {
                try {
                    m62500b().attribute(new FingerprintedQName(qName.getStructuredQName(), m62499a().getNamePool()), BuiltInAtomicType.UNTYPED_ATOMIC, str, Loc.NONE, 0);
                } catch (XPathException e) {
                    throw new SaxonApiException(e);
                }
            }
            return this;
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a
        /* renamed from: d */
        public void mo62502d() throws SaxonApiException {
            try {
                m62500b().endElement();
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        /* renamed from: e */
        public final void m62504e() throws SaxonApiException {
            if (this.f99068f) {
                throw new SaxonApiException("Attribute nodes must be attached to an element before any children");
            }
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element element(QName qName) throws SaxonApiException {
            this.f99068f = true;
            return super.element(qName);
        }

        @Override // net.p110sf.saxon.s9api.push.Element
        public Element namespace(String str, String str2) throws SaxonApiException {
            m62504e();
            try {
                m62500b().namespace(str, str2, 0);
                return this;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element comment(CharSequence charSequence) throws SaxonApiException {
            this.f99068f = true;
            return (Element) super.comment(charSequence);
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element processingInstruction(String str, CharSequence charSequence) throws SaxonApiException {
            this.f99068f = true;
            return (Element) super.processingInstruction(str, charSequence);
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element text(CharSequence charSequence) throws SaxonApiException {
            this.f99068f = true;
            return (Element) super.text(charSequence);
        }

        @Override // net.p110sf.saxon.event.PushToReceiver.AbstractC18277a, net.p110sf.saxon.s9api.push.Container
        public Element element(String str) throws SaxonApiException {
            this.f99068f = true;
            return super.element(str);
        }

        @Override // net.p110sf.saxon.s9api.push.Element
        public Element attribute(String str, String str2) throws SaxonApiException {
            m62504e();
            if (str2 != null) {
                try {
                    m62500b().attribute(new NoNamespaceName(str), BuiltInAtomicType.UNTYPED_ATOMIC, str2, Loc.NONE, 0);
                } catch (XPathException e) {
                    throw new SaxonApiException(e);
                }
            }
            return this;
        }
    }

    public PushToReceiver(Receiver receiver) {
        this.f99058a = new ComplexContentOutputter(new RegularSequenceChecker(receiver, false));
        this.f99059b = receiver.getPipelineConfiguration().getConfiguration();
    }

    @Override // net.p110sf.saxon.s9api.push.Push
    public Document document(boolean z) throws SaxonApiException {
        try {
            this.f99058a.open();
            return new C18278b(this.f99058a, z);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    /* renamed from: net.sf.saxon.event.PushToReceiver$a */
    /* loaded from: classes11.dex */
    public abstract class AbstractC18277a implements Container {

        /* renamed from: a */
        public ComplexContentOutputter f99060a;

        /* renamed from: b */
        public String f99061b;

        /* renamed from: c */
        public C18279c f99062c;

        /* renamed from: d */
        public boolean f99063d;

        public AbstractC18277a(ComplexContentOutputter complexContentOutputter, String str) {
            this.f99061b = str;
            this.f99060a = complexContentOutputter;
        }

        /* renamed from: a */
        public Configuration m62499a() {
            return this.f99060a.getConfiguration();
        }

        /* renamed from: b */
        public ComplexContentOutputter m62500b() {
            return this.f99060a;
        }

        /* renamed from: c */
        public final void m62501c() throws SaxonApiException {
            if (this.f99063d) {
                throw new SaxonApiException("The container has been closed");
            }
            C18279c c18279c = this.f99062c;
            if (c18279c != null) {
                c18279c.close();
                this.f99062c = null;
            }
        }

        @Override // net.p110sf.saxon.s9api.push.Container
        public void close() throws SaxonApiException {
            if (this.f99063d) {
                return;
            }
            m62501c();
            mo62502d();
            this.f99063d = true;
        }

        @Override // net.p110sf.saxon.s9api.push.Container
        public Container comment(CharSequence charSequence) throws SaxonApiException {
            try {
                m62501c();
                if (charSequence != null) {
                    m62500b().comment(StringView.m63901of(charSequence.toString()), Loc.NONE, 0);
                }
                return this;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        /* renamed from: d */
        public abstract void mo62502d() throws SaxonApiException;

        @Override // net.p110sf.saxon.s9api.push.Container
        public Element element(QName qName) throws SaxonApiException {
            try {
                m62501c();
                m62500b().startElement(new FingerprintedQName(qName.getStructuredQName(), m62499a().getNamePool()), Untyped.getInstance(), Loc.NONE, 0);
                C18279c c18279c = new C18279c(m62500b(), this.f99061b);
                this.f99062c = c18279c;
                return c18279c;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.s9api.push.Container
        public Container processingInstruction(String str, CharSequence charSequence) throws SaxonApiException {
            try {
                m62501c();
                if (charSequence != null) {
                    m62500b().processingInstruction(str, StringView.m63901of(charSequence.toString()), Loc.NONE, 0);
                }
                return this;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.s9api.push.Container
        public void setDefaultNamespace(String str) {
            this.f99061b = str;
        }

        @Override // net.p110sf.saxon.s9api.push.Container
        public Container text(CharSequence charSequence) throws SaxonApiException {
            try {
                m62501c();
                if (charSequence != null && charSequence.length() > 0) {
                    m62500b().characters(StringView.m63901of(charSequence.toString()), Loc.NONE, 0);
                }
                return this;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }

        @Override // net.p110sf.saxon.s9api.push.Container
        public Element element(String str) throws SaxonApiException {
            try {
                m62501c();
                this.f99060a.startElement(this.f99061b.isEmpty() ? new NoNamespaceName(str) : new FingerprintedQName("", this.f99061b, str), Untyped.getInstance(), Loc.NONE, 0);
                C18279c c18279c = new C18279c(m62500b(), this.f99061b);
                this.f99062c = c18279c;
                return c18279c;
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }
    }
}
