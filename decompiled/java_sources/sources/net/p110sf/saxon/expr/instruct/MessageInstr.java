package net.p110sf.saxon.expr.instruct;

import androidx.core.app.NotificationCompat;
import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Properties;
import javax.xml.transform.Result;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.event.TreeReceiver;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StandardDiagnostics;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.Message;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class MessageInstr extends Instruction {

    /* renamed from: n */
    public final Operand f99766n;

    /* renamed from: o */
    public final Operand f99767o;

    /* renamed from: p */
    public final Operand f99768p;

    /* renamed from: q */
    public boolean f99769q;

    /* renamed from: net.sf.saxon.expr.instruct.MessageInstr$a */
    /* loaded from: classes11.dex */
    public static class C18316a extends ProxyReceiver {

        /* renamed from: e */
        public final UnicodeString f99770e;

        /* renamed from: f */
        public final Location f99771f;

        public C18316a(SequenceReceiver sequenceReceiver, String str, Location location) {
            super(sequenceReceiver);
            this.f99770e = StringView.m63901of(str);
            this.f99771f = location;
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
        /* renamed from: append */
        public void m62516b(Item item, Location location, int i) throws XPathException {
            String str;
            if (item instanceof NodeInfo) {
                NodeInfo nodeInfo = (NodeInfo) item;
                int nodeKind = nodeInfo.getNodeKind();
                if (nodeKind == 2) {
                    processingInstruction("attribute", StringView.m63901of("name=\"" + nodeInfo.getDisplayName() + "\" value=\"" + item.getUnicodeStringValue() + "\""), location, 0);
                    return;
                }
                if (nodeKind == 13) {
                    processingInstruction(Constants.ATTRNAME_NAMESPACE, StringView.m63901of("prefix=\"" + nodeInfo.getLocalPart() + "\" uri=\"" + item.getUnicodeStringValue() + "\""), Loc.NONE, 0);
                    return;
                }
            } else if (item instanceof Function) {
                Function function = (Function) item;
                if (!function.isArray()) {
                    if (function.isMap()) {
                        str = Err.depict(item);
                    } else {
                        str = "Function " + Err.depict(item);
                    }
                    this.nextReceiver.characters(StringView.m63901of(str), location, 0);
                    return;
                }
            }
            this.nextReceiver.m62516b(item, location, i);
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
        public void startDocument(int i) throws XPathException {
            super.startDocument(i);
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
        public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
            super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        }
    }

    public MessageInstr(Expression expression, Expression expression2, Expression expression3) {
        expression3 = expression3 == null ? new StringLiteral(BMPString.m63877of("Q{http://www.w3.org/2005/xqt-errors}XTMM9000")) : expression3;
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99766n = new Operand(this, expression, operandRole);
        this.f99767o = new Operand(this, expression2, operandRole);
        this.f99768p = new Operand(this, expression3, operandRole);
    }

    /* renamed from: e */
    public static Result m62780e() {
        return new StreamResult(System.err);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        MessageInstr messageInstr = new MessageInstr(getSelect().copy(rebindingMap), getTerminate().copy(rebindingMap), getErrorCode().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, messageInstr);
        return messageInstr;
    }

    /* renamed from: d */
    public final Message m62781d(boolean z, StructuredQName structuredQName, NodeInfo nodeInfo) {
        return new Message((XdmNode) XdmValue.wrap(nodeInfo), new QName(structuredQName), z, getLocation());
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("message", this);
        expressionPresenter.setChildRole("select");
        getSelect().export(expressionPresenter);
        expressionPresenter.setChildRole(Constants.ATTRNAME_TERMINATE);
        getTerminate().export(expressionPresenter);
        expressionPresenter.setChildRole("error");
        getErrorCode().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 24576;
    }

    public Expression getErrorCode() {
        return this.f99768p.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return this.f99769q ? 136 : 179;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyItemType.getInstance();
    }

    public Expression getSelect() {
        return this.f99766n.getChildExpression();
    }

    public Expression getTerminate() {
        return this.f99767o.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f99766n, this.f99767o, this.f99768p);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return optimize != this ? optimize : this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        boolean z;
        String eQName;
        StructuredQName structuredQName;
        if (!(xPathContext.getController() instanceof XsltController)) {
            QueryResult.serializeSequence(getSelect().iterate(xPathContext), xPathContext.getConfiguration(), m62780e(), new Properties());
            return null;
        }
        XsltController xsltController = (XsltController) xPathContext.getController();
        if (this.f99769q && !xsltController.isAssertionsEnabled()) {
            return null;
        }
        String obj = Whitespace.trim(getTerminate().evaluateAsString(xPathContext)).toString();
        obj.hashCode();
        char c = 65535;
        switch (obj.hashCode()) {
            case 48:
                if (obj.equals("0")) {
                    c = 0;
                    break;
                }
                break;
            case 49:
                if (obj.equals("1")) {
                    c = 1;
                    break;
                }
                break;
            case 3521:
                if (obj.equals(SVGParser.f16048t)) {
                    c = 2;
                    break;
                }
                break;
            case 119527:
                if (obj.equals("yes")) {
                    c = 3;
                    break;
                }
                break;
            case 3569038:
                if (obj.equals("true")) {
                    c = 4;
                    break;
                }
                break;
            case 97196323:
                if (obj.equals("false")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 2:
            case 5:
                z = false;
                break;
            case 1:
            case 3:
            case 4:
                z = true;
                break;
            default:
                XPathException xPathException = new XPathException("The terminate attribute of xsl:message must be yes|true|1 or no|false|0");
                xPathException.setXPathContext(xPathContext);
                xPathException.setErrorCode("XTDE0030");
                throw xPathException;
        }
        try {
            eQName = getErrorCode().evaluateAsString(xPathContext).toString();
        } catch (XPathException e) {
            eQName = e.getErrorCodeQName().getEQName();
        }
        try {
            structuredQName = StructuredQName.fromLexicalQName(eQName, false, true, getRetainedStaticContext());
        } catch (XPathException unused) {
            structuredQName = new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "XTMM9000");
        }
        xsltController.incrementMessageCounter(structuredQName);
        Builder makeBuilder = xsltController.makeBuilder();
        C18316a c18316a = new C18316a(new TreeReceiver(makeBuilder), structuredQName.getEQName(), getLocation());
        c18316a.open();
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(c18316a);
        complexContentOutputter.startDocument(z ? 16384 : 0);
        try {
            getSelect().process(complexContentOutputter, xPathContext);
        } catch (XPathException e2) {
            complexContentOutputter.append(StringValue.bmp("Error " + e2.getErrorCodeLocalPart() + " while evaluating xsl:message at line " + getLocation().getLineNumber() + " of " + getLocation().getSystemId() + ": " + e2.getMessage()));
        }
        complexContentOutputter.endDocument();
        complexContentOutputter.close();
        makeBuilder.close();
        NodeInfo currentRoot = makeBuilder.getCurrentRoot();
        xsltController.getMessageHandler().accept(m62781d(z, structuredQName, currentRoot));
        if (!z) {
            return null;
        }
        TerminationException terminationException = new TerminationException("Processing terminated by " + StandardDiagnostics.getInstructionNameDefault(this) + " at line " + getLocation().getLineNumber() + CloudStorageConstants.OPERATION_IN + StandardDiagnostics.abbreviateLocationURIDefault(getLocation().getSystemId()));
        terminationException.setLocation(getLocation());
        terminationException.setErrorCodeQName(structuredQName);
        terminationException.setErrorObject(currentRoot);
        throw terminationException;
    }

    public void setErrorCode(Expression expression) {
        this.f99768p.setChildExpression(expression);
    }

    public void setIsAssert(boolean z) {
        this.f99769q = z;
    }

    public void setSelect(Expression expression) {
        this.f99766n.setChildExpression(expression);
    }

    public void setTerminate(Expression expression) {
        this.f99767o.setChildExpression(expression);
    }
}
