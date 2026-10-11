package net.p110sf.saxon.expr.instruct;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TraceableComponent;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class NamedTemplate extends Actor implements TraceableComponent {

    /* renamed from: m */
    public StructuredQName f99772m;

    /* renamed from: n */
    public boolean f99773n;

    /* renamed from: o */
    public boolean f99774o;

    /* renamed from: p */
    public SequenceType f99775p;

    /* renamed from: q */
    public ItemType f99776q = AnyItemType.getInstance();

    /* renamed from: r */
    public boolean f99777r = true;

    /* renamed from: s */
    public boolean f99778s = false;

    /* renamed from: t */
    public List<LocalParamInfo> f99779t = new ArrayList(4);

    /* loaded from: classes11.dex */
    public static class LocalParamInfo {
        public boolean isRequired;
        public boolean isTunnel;
        public StructuredQName name;
        public SequenceType requiredType;
    }

    public NamedTemplate(StructuredQName structuredQName) {
        setTemplateName(structuredQName);
    }

    public TailCall expand(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem != null) {
            TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
            if (this.f99776q != AnyItemType.getInstance() && !this.f99776q.matches(contextItem, typeHierarchy)) {
                XPathException xPathException = new XPathException(new RoleDiagnostic(20, "context item for the named template", 0).composeErrorMessage(this.f99776q, contextItem, typeHierarchy), "XTTE0590");
                xPathException.setLocation(getLocation());
                xPathException.setIsTypeError(true);
                throw xPathException;
            }
            if (this.f99778s) {
                xPathContext = xPathContext.newMinorContext();
                xPathContext.setCurrentIterator(null);
            }
        } else if (!this.f99777r) {
            XPathException xPathException2 = new XPathException("The template requires a context item, but none has been supplied", "XTTE3090");
            xPathException2.setLocation(getLocation());
            xPathException2.setIsTypeError(true);
            throw xPathException2;
        }
        if (this.f99774o) {
            return ((TailCallReturner) this.body).processLeavingTail(outputter, xPathContext);
        }
        Expression expression = this.body;
        if (expression != null) {
            expression.process(outputter, xPathContext);
        }
        return null;
    }

    public void explainProperties(ExpressionPresenter expressionPresenter) throws XPathException {
        if (getRequiredContextItemType() != AnyItemType.getInstance()) {
            expressionPresenter.emitAttribute("cxt", SequenceType.makeSequenceType(getRequiredContextItemType(), 16384).toAlphaCode());
        }
        String str = this.f99777r ? C4921e.f26528e : "";
        if (!this.f99778s) {
            str = str + "s";
        }
        expressionPresenter.emitAttribute("flags", str);
        if (getRequiredType() != SequenceType.ANY_SEQUENCE) {
            expressionPresenter.emitAttribute("as", getRequiredType().toAlphaCode());
        }
        expressionPresenter.emitAttribute("line", getLineNumber() + "");
        expressionPresenter.emitAttribute("module", getSystemId());
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("template");
        expressionPresenter.emitAttribute("name", getTemplateName());
        explainProperties(expressionPresenter);
        expressionPresenter.emitAttribute("slots", "" + getStackFrameMap().getNumberOfVariables());
        if (getBody() != null) {
            expressionPresenter.setChildRole("body");
            getBody().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept("name", getTemplateName());
    }

    public List<LocalParamInfo> getLocalParamDetails() {
        return this.f99779t;
    }

    public LocalParamInfo getLocalParamInfo(StructuredQName structuredQName) {
        for (LocalParamInfo localParamInfo : getLocalParamDetails()) {
            if (localParamInfo.name.equals(structuredQName)) {
                return localParamInfo;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return this.f99772m;
    }

    public ItemType getRequiredContextItemType() {
        return this.f99776q;
    }

    public SequenceType getRequiredType() {
        SequenceType sequenceType = this.f99775p;
        return sequenceType == null ? SequenceType.ANY_SEQUENCE : sequenceType;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName getSymbolicName() {
        if (getTemplateName() == null) {
            return null;
        }
        return new SymbolicName(210, getTemplateName());
    }

    public StructuredQName getTemplateName() {
        return this.f99772m;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor, net.p110sf.saxon.trace.TraceableComponent
    public String getTracingTag() {
        return "xsl:template";
    }

    public boolean hasRequiredParams() {
        return this.f99773n;
    }

    public boolean isAbsentFocus() {
        return this.f99778s;
    }

    public boolean isMayOmitContextItem() {
        return this.f99777r;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor, net.p110sf.saxon.trace.TraceableComponent
    public void setBody(Expression expression) {
        super.setBody(expression);
        this.f99774o = expression instanceof TailCallReturner;
    }

    public void setContextItemRequirements(ItemType itemType, boolean z, boolean z2) {
        this.f99776q = itemType;
        this.f99777r = z;
        this.f99778s = z2;
    }

    public void setHasRequiredParams(boolean z) {
        this.f99773n = z;
    }

    public void setLocalParamDetails(List<LocalParamInfo> list) {
        this.f99779t = list;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99775p = sequenceType;
    }

    public void setTemplateName(StructuredQName structuredQName) {
        this.f99772m = structuredQName;
    }
}
