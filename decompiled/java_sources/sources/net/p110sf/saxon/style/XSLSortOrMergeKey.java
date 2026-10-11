package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class XSLSortOrMergeKey extends StyleElement {
    protected Expression caseOrder;
    protected Expression collationName;
    protected Expression lang;
    protected Expression order;
    protected Expression select;
    protected SortKeyDefinition sortKeyDefinition;
    protected Expression stable;
    protected Expression dataType = null;
    protected boolean useDefaultCollation = true;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.select == null) {
            Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
            if (compileSequenceConstructor == null) {
                compileSequenceConstructor = Literal.makeEmptySequence();
                compileSequenceConstructor.setRetainedStaticContext(makeRetainedStaticContext());
            }
            try {
                Expression simplify = Atomizer.makeAtomizer(compileSequenceConstructor, null).simplify();
                ExpressionTool.copyLocationInfo(compileSequenceConstructor, simplify);
                this.sortKeyDefinition.setSortKey(simplify, true);
                this.select = simplify;
            } catch (XPathException e) {
                compileError(e);
            }
        }
        this.sortKeyDefinition = (SortKeyDefinition) this.sortKeyDefinition.simplify();
        return null;
    }

    public String getErrorCode() {
        return "XTSE1015";
    }

    public SortKeyDefinition getSortKeyDefinition() {
        return this.sortKeyDefinition;
    }

    public Expression getStable() {
        return this.stable;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0077, code lost:
    
        if (r14.equals("select") == false) goto L7;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLSortOrMergeKey.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        StringCollator stringCollator;
        if (this.select != null && hasChildNodes()) {
            compileError("An " + getDisplayName() + " element with a select attribute must be empty", getErrorCode());
        }
        if (this.select == null && !hasChildNodes()) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            this.select = contextItemExpression;
            contextItemExpression.setRetainedStaticContext(getStaticContext().makeRetainedStaticContext());
        }
        if (this.useDefaultCollation) {
            this.collationName = new StringLiteral(getDefaultCollationName());
        }
        Expression expression = this.collationName;
        if (expression instanceof StringLiteral) {
            String stringify = ((StringLiteral) expression).stringify();
            try {
                URI uri = new URI(stringify);
                if (!uri.isAbsolute()) {
                    stringify = new URI(getBaseURI()).resolve(uri).toString();
                }
            } catch (URISyntaxException unused) {
                compileError("Collation name '" + stringify + "' is not a valid URI");
                stringify = NamespaceConstant.CODEPOINT_COLLATION_URI;
            }
            stringCollator = m63984w(stringify, getBaseURI());
            if (stringCollator == null) {
                compileError("Collation " + stringify + " has not been defined", "XTDE1035");
                stringCollator = CodepointCollator.getInstance();
            }
        } else {
            stringCollator = null;
        }
        this.select = typeCheck("select", this.select);
        this.order = typeCheck(Constants.ATTRNAME_ORDER, this.order);
        this.caseOrder = typeCheck(Constants.ATTRNAME_CASEORDER, this.caseOrder);
        this.lang = typeCheck("lang", this.lang);
        this.dataType = typeCheck(Constants.ATTRNAME_DATATYPE, this.dataType);
        this.collationName = typeCheck("collation", this.collationName);
        if (this.select != null) {
            try {
                this.select = getConfiguration().getTypeChecker(false).staticTypeCheck(this.select, SequenceType.ATOMIC_SEQUENCE, new RoleDiagnostic(4, getDisplayName() + "//select", 0), makeExpressionVisitor());
            } catch (XPathException e) {
                compileError(e);
            }
        }
        SortKeyDefinition sortKeyDefinition = new SortKeyDefinition();
        this.sortKeyDefinition = sortKeyDefinition;
        sortKeyDefinition.setOrder(this.order);
        this.sortKeyDefinition.setCaseOrder(this.caseOrder);
        this.sortKeyDefinition.setLanguage(this.lang);
        this.sortKeyDefinition.setSortKey(this.select, true);
        this.sortKeyDefinition.setDataTypeExpression(this.dataType);
        this.sortKeyDefinition.setCollationNameExpression(this.collationName);
        this.sortKeyDefinition.setCollation(stringCollator);
        this.sortKeyDefinition.setBaseURI(getBaseURI());
        this.sortKeyDefinition.setStable(this.stable);
        this.sortKeyDefinition.setBackwardsCompatible(m63973Y());
    }
}
