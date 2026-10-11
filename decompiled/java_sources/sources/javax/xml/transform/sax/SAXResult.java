package javax.xml.transform.sax;

import javax.xml.transform.Result;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes5.dex */
public class SAXResult implements Result {
    public static final String FEATURE = "http://javax.xml.transform.sax.SAXResult/feature";

    /* renamed from: e */
    public ContentHandler f98044e;

    /* renamed from: f */
    public LexicalHandler f98045f;

    /* renamed from: g */
    public String f98046g;

    public SAXResult() {
    }

    public ContentHandler getHandler() {
        return this.f98044e;
    }

    public LexicalHandler getLexicalHandler() {
        return this.f98045f;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f98046g;
    }

    public void setHandler(ContentHandler contentHandler) {
        this.f98044e = contentHandler;
    }

    public void setLexicalHandler(LexicalHandler lexicalHandler) {
        this.f98045f = lexicalHandler;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f98046g = str;
    }

    public SAXResult(ContentHandler contentHandler) {
        setHandler(contentHandler);
    }
}
