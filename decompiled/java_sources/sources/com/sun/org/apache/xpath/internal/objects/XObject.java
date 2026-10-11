package com.sun.org.apache.xpath.internal.objects;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.FastStringBuffer;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionNode;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathException;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.io.Serializable;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.NodeList;
import org.w3c.dom.traversal.NodeIterator;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XObject extends Expression implements Serializable, Cloneable {
    public static final int CLASS_BOOLEAN = 1;
    public static final int CLASS_NODESET = 4;
    public static final int CLASS_NULL = -1;
    public static final int CLASS_NUMBER = 2;
    public static final int CLASS_RTREEFRAG = 5;
    public static final int CLASS_STRING = 3;
    public static final int CLASS_UNKNOWN = 0;
    public static final int CLASS_UNRESOLVEDVARIABLE = 600;
    static final long serialVersionUID = -821887098985662951L;
    protected Object m_obj;

    public XObject() {
    }

    public static XObject create(Object obj) {
        return XObjectFactory.create(obj);
    }

    public void allowDetachToRelease(boolean z) {
    }

    public void appendToFsb(FastStringBuffer fastStringBuffer) {
        fastStringBuffer.append(str());
    }

    public boolean bool() throws TransformerException {
        error("ER_CANT_CONVERT_TO_NUMBER", new Object[]{getTypeString()});
        return false;
    }

    public boolean boolWithSideEffects() throws TransformerException {
        return bool();
    }

    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        assertion(false, "callVisitors should not be called for this object!!!");
    }

    public Object castToType(int i, XPathContext xPathContext) throws TransformerException {
        Object bool;
        if (i == 0) {
            return this.m_obj;
        }
        if (i == 1) {
            bool = new Boolean(bool());
        } else {
            if (i != 2) {
                if (i == 3) {
                    return str();
                }
                if (i == 4) {
                    return iter();
                }
                error("ER_CANT_CONVERT_TO_TYPE", new Object[]{getTypeString(), Integer.toString(i)});
                return null;
            }
            bool = new Double(num());
        }
        return bool;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean deepEquals(Expression expression) {
        return isSameClass(expression) && equals((XObject) expression);
    }

    public void destruct() {
        if (this.m_obj != null) {
            allowDetachToRelease(true);
            detach();
            this.m_obj = null;
        }
    }

    public void detach() {
    }

    public void dispatchCharactersEvents(ContentHandler contentHandler) throws SAXException {
        xstr().dispatchCharactersEvents(contentHandler);
    }

    public boolean equals(XObject xObject) {
        if (xObject.getType() == 4) {
            return xObject.equals(this);
        }
        Object obj = this.m_obj;
        return obj != null ? obj.equals(xObject.m_obj) : xObject.m_obj == null;
    }

    public void error(String str) throws TransformerException {
        error(str, null);
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        return this;
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
    }

    public XObject getFresh() {
        return this;
    }

    public int getType() {
        return 0;
    }

    public String getTypeString() {
        return "#UNKNOWN (" + object().getClass().getName() + MotionUtils.f31762d;
    }

    public boolean greaterThan(XObject xObject) throws TransformerException {
        return xObject.getType() == 4 ? xObject.lessThan(this) : num() > xObject.num();
    }

    public boolean greaterThanOrEqual(XObject xObject) throws TransformerException {
        return xObject.getType() == 4 ? xObject.lessThanOrEqual(this) : num() >= xObject.num();
    }

    public DTMIterator iter() throws TransformerException {
        error("ER_CANT_CONVERT_TO_NODELIST", new Object[]{getTypeString()});
        return null;
    }

    public boolean lessThan(XObject xObject) throws TransformerException {
        return xObject.getType() == 4 ? xObject.greaterThan(this) : num() < xObject.num();
    }

    public boolean lessThanOrEqual(XObject xObject) throws TransformerException {
        return xObject.getType() == 4 ? xObject.greaterThanOrEqual(this) : num() <= xObject.num();
    }

    public NodeSetDTM mutableNodeset() throws TransformerException {
        error("ER_CANT_CONVERT_TO_MUTABLENODELIST", new Object[]{getTypeString()});
        return (NodeSetDTM) this.m_obj;
    }

    public NodeList nodelist() throws TransformerException {
        error("ER_CANT_CONVERT_TO_NODELIST", new Object[]{getTypeString()});
        return null;
    }

    public NodeIterator nodeset() throws TransformerException {
        error("ER_CANT_CONVERT_TO_NODELIST", new Object[]{getTypeString()});
        return null;
    }

    public boolean notEquals(XObject xObject) throws TransformerException {
        return xObject.getType() == 4 ? xObject.notEquals(this) : !equals(xObject);
    }

    public double num() throws TransformerException {
        error("ER_CANT_CONVERT_TO_NUMBER", new Object[]{getTypeString()});
        return 0.0d;
    }

    public double numWithSideEffects() throws TransformerException {
        return num();
    }

    public Object object() {
        return this.m_obj;
    }

    public void reset() {
    }

    public int rtf() {
        return -1;
    }

    public DocumentFragment rtree() {
        return null;
    }

    public String str() {
        Object obj = this.m_obj;
        return obj != null ? obj.toString() : "";
    }

    public String toString() {
        return str();
    }

    public XMLString xstr() {
        return XMLStringFactoryImpl.getFactory().newstr(str());
    }

    public XObject(Object obj) {
        this.m_obj = obj;
    }

    public static XObject create(Object obj, XPathContext xPathContext) {
        return XObjectFactory.create(obj, xPathContext);
    }

    public void error(String str, Object[] objArr) throws TransformerException {
        throw new XPathException(XPATHMessages.createXPATHMessage(str, objArr), (ExpressionNode) this);
    }

    public int rtf(XPathContext xPathContext) {
        int rtf = rtf();
        if (-1 != rtf) {
            return rtf;
        }
        DTM createDocumentFragment = xPathContext.createDocumentFragment();
        createDocumentFragment.appendTextChild(str());
        return createDocumentFragment.getDocument();
    }

    public DocumentFragment rtree(XPathContext xPathContext) {
        int rtf = rtf();
        if (-1 == rtf) {
            DTM createDocumentFragment = xPathContext.createDocumentFragment();
            createDocumentFragment.appendTextChild(str());
            return (DocumentFragment) createDocumentFragment.getNode(createDocumentFragment.getDocument());
        }
        DTM dtm = xPathContext.getDTM(rtf);
        return (DocumentFragment) dtm.getNode(dtm.getDocument());
    }
}
