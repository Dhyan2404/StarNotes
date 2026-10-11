package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashSet;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.sort.MergeInstr;
import net.p110sf.saxon.expr.sort.SortExpression;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLMerge extends StyleElement {

    /* renamed from: u */
    public int f102033u = 0;

    /* renamed from: Z */
    public final void m64047Z(MergeInstr.MergeSource[] mergeSourceArr) {
        for (int i = 0; i < mergeSourceArr[0].mergeKeyDefinitions.size() && mergeSourceArr[0].mergeKeyDefinitions.getSortKeyDefinition(i).isFixed(); i++) {
            for (int i2 = 1; i2 < mergeSourceArr.length && mergeSourceArr[i2].mergeKeyDefinitions.getSortKeyDefinition(i).isFixed(); i2++) {
                if (!m64048a0(mergeSourceArr[i2].mergeKeyDefinitions.getSortKeyDefinition(i), mergeSourceArr[0].mergeKeyDefinitions.getSortKeyDefinition(i))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("The ");
                    int i3 = i + 1;
                    sb.append(RoleDiagnostic.ordinal(i3));
                    sb.append(" merge key definition of the ");
                    sb.append(RoleDiagnostic.ordinal(i2 + 1));
                    sb.append(" merge source is incompatible with the ");
                    sb.append(RoleDiagnostic.ordinal(i3));
                    sb.append(" merge key definition of the first merge source");
                    compileError(sb.toString(), "XTDE2210");
                }
            }
        }
    }

    /* renamed from: a0 */
    public final boolean m64048a0(SortKeyDefinition sortKeyDefinition, SortKeyDefinition sortKeyDefinition2) {
        return m64049b0(sortKeyDefinition.getLanguage(), sortKeyDefinition2.getLanguage()) && m64049b0(sortKeyDefinition.getOrder(), sortKeyDefinition2.getOrder()) && m64049b0(sortKeyDefinition.getCollationNameExpression(), sortKeyDefinition2.getCollationNameExpression()) && m64049b0(sortKeyDefinition.getCaseOrder(), sortKeyDefinition2.getCaseOrder()) && m64049b0(sortKeyDefinition.getDataTypeExpression(), sortKeyDefinition2.getDataTypeExpression());
    }

    /* renamed from: b0 */
    public final boolean m64049b0(Expression expression, Expression expression2) {
        return (expression == null && expression2 == null) || (expression != null && expression.equals(expression2));
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        MergeInstr mergeInstr = new MergeInstr();
        MergeInstr.MergeSource[] mergeSourceArr = new MergeInstr.MergeSource[this.f102033u];
        Expression makeEmptySequence = Literal.makeEmptySequence();
        int i = 0;
        int i2 = 0;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLMergeSource) {
                XSLMergeSource xSLMergeSource = (XSLMergeSource) nodeInfo;
                SortKeyDefinitionList m63961M = xSLMergeSource.m63961M(compilation, componentDeclaration);
                if (i == 0) {
                    i = m63961M.size();
                } else if (i != m63961M.size()) {
                    compileError("Each xsl:merge-source must have the same number of xsl:merge-key children", "XTSE2200");
                }
                Expression select = xSLMergeSource.getSelect();
                if (xSLMergeSource.isSortBeforeMerge()) {
                    select = new SortExpression(select, m63961M.copy(new RebindingMap()));
                }
                MergeInstr.MergeSource makeMergeSource = xSLMergeSource.makeMergeSource(mergeInstr, select);
                makeMergeSource.mergeKeyDefinitions = m63961M;
                mergeSourceArr[i2] = makeMergeSource;
                i2++;
            } else if (nodeInfo instanceof XSLMergeAction) {
                makeEmptySequence = ((XSLMergeAction) nodeInfo).compileSequenceConstructor(compilation, componentDeclaration, true);
                if (makeEmptySequence == null) {
                    makeEmptySequence = Literal.makeEmptySequence();
                }
                try {
                    makeEmptySequence = makeEmptySequence.simplify();
                } catch (XPathException e) {
                    compileError(e);
                }
            }
        }
        m64047Z(mergeSourceArr);
        mergeInstr.init(mergeSourceArr, makeEmptySequence);
        return mergeInstr;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        Iterator<AttributeInfo> it2 = attributes().iterator();
        while (it2.hasNext()) {
            checkUnknownAttribute(it2.next().getNodeName());
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        HashSet hashSet = new HashSet();
        int i = 0;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLMergeSource) {
                String sourceName = ((XSLMergeSource) nodeInfo).getSourceName();
                if (hashSet.contains(sourceName)) {
                    compileError("Duplicate xsl:merge-source/@name", "XTSE3190");
                }
                hashSet.add(sourceName);
                i |= 1;
                this.f102033u++;
            } else if (nodeInfo instanceof XSLMergeAction) {
                if ((i & 2) == 2) {
                    compileError("xsl:merge must have only one xsl:merge-action child element", "XTSE0010");
                }
                i |= 2;
            } else if (nodeInfo.getNodeKind() == 3) {
                if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:merge", Constants.ATTRNAME_XXXX);
                }
            } else if (!(nodeInfo instanceof XSLFallback)) {
                compileError("Child element " + Err.wrap(nodeInfo.getDisplayName(), 1) + " is not allowed as a child of xsl:merge", "XTSE0010");
            } else if ((i & 2) == 0) {
                compileError("xsl:fallback child of xsl:merge can appear only after xsl:merge-action", "XTSE0010");
            }
        }
        if (i == 1) {
            compileError("xsl:merge element requires an xsl:merge-action", "XTSE0010");
        } else if (i == 2) {
            compileError("xsl:merge element requires at least one xsl:merge-source child element", "XTSE0010");
        }
    }
}
