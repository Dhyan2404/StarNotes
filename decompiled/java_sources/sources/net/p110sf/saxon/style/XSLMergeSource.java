package net.p110sf.saxon.style;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.sort.MergeInstr;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLMergeSource extends StyleElement {

    /* renamed from: u */
    public Expression f102038u;

    /* renamed from: v */
    public Expression f102039v;

    /* renamed from: w */
    public Expression f102040w;

    /* renamed from: z */
    public String f102043z;

    /* renamed from: x */
    public boolean f102041x = false;

    /* renamed from: y */
    public int f102042y = 0;

    /* renamed from: J */
    public int f102034J = 4;

    /* renamed from: O */
    public SchemaType f102035O = null;

    /* renamed from: Q */
    public boolean f102036Q = false;

    /* renamed from: Z */
    public Set<Accumulator> f102037Z = new HashSet();

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return null;
    }

    public Expression getForEachItem() {
        return this.f102038u;
    }

    public Expression getForEachSource() {
        return this.f102039v;
    }

    public SchemaType getSchemaTypeAttribute() {
        return this.f102035O;
    }

    public Expression getSelect() {
        return this.f102040w;
    }

    public String getSourceName() {
        return this.f102043z;
    }

    public int getValidationAction() {
        return this.f102034J;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return false;
    }

    public boolean isSortBeforeMerge() {
        return this.f102041x;
    }

    public MergeInstr.MergeSource makeMergeSource(MergeInstr mergeInstr, Expression expression) {
        MergeInstr.MergeSource mergeSource = new MergeInstr.MergeSource(mergeInstr);
        Expression expression2 = this.f102038u;
        if (expression2 != null) {
            mergeSource.initForEachItem(mergeInstr, expression2);
        }
        Expression expression3 = this.f102039v;
        if (expression3 != null) {
            mergeSource.initForEachStream(mergeInstr, expression3);
        }
        if (expression != null) {
            this.f102040w = expression;
            mergeSource.initRowSelect(mergeInstr, expression);
        }
        mergeSource.baseURI = getBaseURI();
        mergeSource.sourceName = this.f102043z;
        mergeSource.validation = this.f102034J;
        mergeSource.schemaType = this.f102035O;
        mergeSource.setStreamable(this.f102036Q);
        mergeSource.accumulators = this.f102037Z;
        return mergeSource;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0038. Please report as an issue. */
    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        char c;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            displayName.hashCode();
            char c2 = 65535;
            switch (displayName.hashCode()) {
                case -1585833125:
                    if (displayName.equals("for-each-item")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1194384166:
                    if (displayName.equals("streamable")) {
                        c = 1;
                        c2 = c;
                        break;
                    }
                    break;
                case -906021636:
                    if (displayName.equals("select")) {
                        c = 2;
                        c2 = c;
                        break;
                    }
                    break;
                case -43562887:
                    if (displayName.equals("validation")) {
                        c = 3;
                        c2 = c;
                        break;
                    }
                    break;
                case 3373707:
                    if (displayName.equals("name")) {
                        c = 4;
                        c2 = c;
                        break;
                    }
                    break;
                case 3575610:
                    if (displayName.equals("type")) {
                        c = 5;
                        c2 = c;
                        break;
                    }
                    break;
                case 386587705:
                    if (displayName.equals("sort-before-merge")) {
                        c = 6;
                        c2 = c;
                        break;
                    }
                    break;
                case 1009915491:
                    if (displayName.equals("for-each-source")) {
                        c = 7;
                        c2 = c;
                        break;
                    }
                    break;
                case 1596193587:
                    if (displayName.equals("use-accumulators")) {
                        c2 = '\b';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    this.f102038u = makeExpression(value, attributeInfo);
                    str = value;
                    break;
                case 1:
                    str6 = value;
                    break;
                case 2:
                    this.f102040w = makeExpression(value, attributeInfo);
                    str3 = value;
                    break;
                case 3:
                    str4 = Whitespace.trim(value);
                    break;
                case 4:
                    String trim = Whitespace.trim(value);
                    if (NameChecker.isValidNCName(trim)) {
                        this.f102043z = trim;
                        break;
                    } else {
                        compileError("xsl:merge-source/@name (" + trim + ") is not a valid NCName", "XTSE0020");
                        break;
                    }
                case 5:
                    str5 = Whitespace.trim(value);
                    break;
                case 6:
                    this.f102041x = processBooleanAttribute("sort-before-merge", value);
                    break;
                case 7:
                    this.f102039v = makeExpression(value, attributeInfo);
                    str2 = value;
                    break;
                case '\b':
                    str7 = Whitespace.trim(value);
                    break;
                default:
                    checkUnknownAttribute(nodeName);
                    break;
            }
        }
        if (this.f102043z == null) {
            this.f102043z = "saxon-merge-source-" + hashCode();
        }
        if (str != null && str2 != null) {
            compileError("The for-each-item and for-each-source attributes must not both be present", "XTSE3195");
        }
        if (str3 == null) {
            reportAbsence("select");
        }
        if (str4 == null) {
            this.f102034J = m63987z();
        } else {
            this.f102034J = validateValidationAttribute(str4);
        }
        if (str5 != null) {
            if (!isSchemaAware()) {
                compileError("The @type attribute is available only with a schema-aware XSLT processor", "XTSE1660");
            }
            this.f102035O = getSchemaType(str5);
            this.f102034J = 8;
        }
        if (str5 != null && str4 != null) {
            compileError("The @validation and @type attributes are mutually exclusive", "XTSE1505");
        }
        if ((str5 != null || str4 != null) && str2 == null) {
            compileError("The @type and @validation attributes can be used only when @for-each-stream is specified", "XTSE0020");
        }
        if (str6 != null) {
            boolean m63969U = m63969U(str6);
            this.f102036Q = m63969U;
            if (m63969U && this.f102039v == null) {
                compileError("Streaming on xsl:merge-source is possible only when @for-each-source is used", "XTSE3195");
            }
        } else if (this.f102039v != null) {
            this.f102036Q = false;
        }
        if (str7 == null) {
            str7 = "";
        }
        this.f102037Z = getPrincipalStylesheetModule().getStylesheetPackage().getAccumulatorRegistry().getUsedAccumulators(str7, this);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102038u = typeCheck("for-each-item", this.f102038u);
        this.f102039v = typeCheck("for-each-source", this.f102039v);
        this.f102040w = typeCheck("select", this.f102040w);
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLMergeKey) {
                this.f102042y++;
            } else if (nodeInfo.getNodeKind() == 3) {
                if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:merge-source", "XTSE0010");
                }
            } else if (nodeInfo instanceof StyleElement) {
                ((StyleElement) nodeInfo).compileError("No children other than xsl:merge-key are allowed within xsl:merge-source", "XTSE0010");
            }
        }
        if (this.f102042y == 0) {
            compileError("xsl:merge-source must have exactly at least one xsl:merge-key child element", "XTSE0010");
        }
    }
}
