package net.p110sf.saxon.xpath;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.transform.Source;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFunctionResolver;
import javax.xml.xpath.XPathVariableResolver;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.Type;
import org.xml.sax.InputSource;

/* loaded from: classes11.dex */
public class XPathEvaluator implements XPath {

    /* renamed from: a */
    public final Configuration f102960a;

    /* renamed from: b */
    public JAXPXPathStaticContext f102961b;

    public XPathEvaluator() {
        this(Configuration.newConfiguration());
    }

    @Override // javax.xml.xpath.XPath
    public XPathExpression compile(String str) throws XPathExpressionException {
        if (str == null) {
            throw new NullPointerException(Constants.ATTRNAME_EXPR);
        }
        try {
            Executable executable = new Executable(getConfiguration());
            executable.setSchemaAware(this.f102961b.getPackageData().isSchemaAware());
            Expression make = ExpressionTool.make(str, this.f102961b, 0, -1, null);
            ExpressionVisitor make2 = ExpressionVisitor.make(this.f102961b);
            ContextItemStaticInfo makeContextItemStaticInfo = getConfiguration().makeContextItemStaticInfo(Type.ITEM_TYPE, true);
            Expression optimize = make.typeCheck(make2, makeContextItemStaticInfo).optimize(make2, makeContextItemStaticInfo);
            SlotManager makeSlotManager = this.f102961b.getConfiguration().makeSlotManager();
            ExpressionTool.allocateSlots(optimize, 0, makeSlotManager);
            XPathExpressionImpl xPathExpressionImpl = new XPathExpressionImpl(optimize, executable);
            xPathExpressionImpl.setStackFrameMap(makeSlotManager);
            return xPathExpressionImpl;
        } catch (XPathException e) {
            throw new XPathExpressionException(e);
        }
    }

    @Override // javax.xml.xpath.XPath
    public Object evaluate(String str, Object obj, QName qName) throws XPathExpressionException {
        return compile(str).evaluate(obj, qName);
    }

    public Configuration getConfiguration() {
        return this.f102960a;
    }

    @Override // javax.xml.xpath.XPath
    public NamespaceContext getNamespaceContext() {
        return this.f102961b.getNamespaceContext();
    }

    public JAXPXPathStaticContext getStaticContext() {
        return this.f102961b;
    }

    @Override // javax.xml.xpath.XPath
    public XPathFunctionResolver getXPathFunctionResolver() {
        return this.f102961b.getXPathFunctionResolver();
    }

    @Override // javax.xml.xpath.XPath
    public XPathVariableResolver getXPathVariableResolver() {
        return this.f102961b.getXPathVariableResolver();
    }

    public void importSchema(Source source) throws SchemaException {
        this.f102961b.importSchema(source);
        this.f102961b.setSchemaAware(true);
    }

    @Override // javax.xml.xpath.XPath
    public void reset() {
        this.f102961b = new JAXPXPathStaticContext(this.f102960a);
    }

    @Override // javax.xml.xpath.XPath
    public void setNamespaceContext(NamespaceContext namespaceContext) {
        this.f102961b.setNamespaceContext(namespaceContext);
    }

    @Override // javax.xml.xpath.XPath
    public void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver) {
        this.f102961b.setXPathFunctionResolver(xPathFunctionResolver);
    }

    @Override // javax.xml.xpath.XPath
    public void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver) {
        this.f102961b.setXPathVariableResolver(xPathVariableResolver);
    }

    public XPathEvaluator(Configuration configuration) {
        this.f102960a = configuration;
        this.f102961b = new JAXPXPathStaticContext(configuration);
    }

    @Override // javax.xml.xpath.XPath
    public String evaluate(String str, Object obj) throws XPathExpressionException {
        return compile(str).evaluate(obj);
    }

    @Override // javax.xml.xpath.XPath
    public Object evaluate(String str, InputSource inputSource, QName qName) throws XPathExpressionException {
        if (str == null) {
            throw new NullPointerException(Constants.ATTRNAME_EXPR);
        }
        if (inputSource == null) {
            throw new NullPointerException("inputSource");
        }
        if (qName != null) {
            return compile(str).evaluate(inputSource, qName);
        }
        throw new NullPointerException("qName");
    }

    @Override // javax.xml.xpath.XPath
    public String evaluate(String str, InputSource inputSource) throws XPathExpressionException {
        if (str == null) {
            throw new NullPointerException(Constants.ATTRNAME_EXPR);
        }
        if (inputSource != null) {
            return compile(str).evaluate(inputSource);
        }
        throw new NullPointerException("inputSource");
    }
}
