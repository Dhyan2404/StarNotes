package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.NumberSequenceFormatter;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.NumberInstruction;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.number.NumberFormatter;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLNumber extends StyleElement {

    /* renamed from: u */
    public int f102064u;

    /* renamed from: v */
    public Pattern f102065v = null;

    /* renamed from: w */
    public Pattern f102066w = null;

    /* renamed from: x */
    public Expression f102067x = null;

    /* renamed from: y */
    public Expression f102068y = null;

    /* renamed from: z */
    public Expression f102069z = null;

    /* renamed from: J */
    public Expression f102057J = null;

    /* renamed from: O */
    public Expression f102058O = null;

    /* renamed from: Q */
    public Expression f102059Q = null;

    /* renamed from: Z */
    public Expression f102060Z = null;

    /* renamed from: k0 */
    public Expression f102061k0 = null;

    /* renamed from: q0 */
    public Expression f102062q0 = null;

    /* renamed from: t0 */
    public NumberFormatter f102063t0 = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression expression = this.f102068y;
        boolean z = expression != null;
        if (expression == null) {
            NumberInstruction numberInstruction = new NumberInstruction(this.f102067x, this.f102064u, this.f102065v, this.f102066w);
            this.f102068y = numberInstruction;
            numberInstruction.setLocation(allocateLocation());
        }
        NumberSequenceFormatter numberSequenceFormatter = new NumberSequenceFormatter(this.f102068y, this.f102069z, this.f102057J, this.f102058O, this.f102059Q, this.f102061k0, this.f102062q0, this.f102060Z, this.f102063t0, m63973Y() && z);
        numberSequenceFormatter.setLocation(allocateLocation());
        ValueOf valueOf = new ValueOf(numberSequenceFormatter, false, false);
        valueOf.setLocation(allocateLocation());
        valueOf.setIsNumberingInstruction();
        return valueOf;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x00d0. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0042. Please report as an issue. */
    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        char c;
        Iterator<AttributeInfo> it2 = attributes().iterator();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        AttributeInfo attributeInfo = null;
        AttributeInfo attributeInfo2 = null;
        String str7 = null;
        while (true) {
            String str8 = str7;
            if (!it2.hasNext()) {
                AttributeInfo attributeInfo3 = attributeInfo2;
                if (str != null) {
                    if (str2 != null) {
                        compileError("The select attribute and value attribute must not both be present", "XTSE0975");
                    }
                    if (str3 != null) {
                        compileError("The count attribute and value attribute must not both be present", "XTSE0975");
                    }
                    if (str4 != null) {
                        compileError("The from attribute and value attribute must not both be present", "XTSE0975");
                    }
                    if (str5 != null) {
                        compileError("The level attribute and value attribute must not both be present", "XTSE0975");
                    }
                }
                if (str3 != null) {
                    this.f102065v = m63960L(str3, "count");
                }
                if (str4 != null) {
                    this.f102066w = m63960L(str4, "from");
                }
                if (str5 == null) {
                    this.f102064u = 0;
                } else if (str5.equals(Constants.ATTRVAL_SINGLE)) {
                    this.f102064u = 0;
                } else if (str5.equals(Constants.ATTRVAL_MULTI)) {
                    this.f102064u = 1;
                } else if (str5.equals("any")) {
                    this.f102064u = 2;
                } else {
                    invalidAttribute("level", "single|any|multiple");
                }
                if (this.f102064u == 0 && this.f102066w == null && this.f102065v == null) {
                    this.f102064u = 3;
                }
                if (str6 == null) {
                    NumberFormatter numberFormatter = new NumberFormatter();
                    this.f102063t0 = numberFormatter;
                    numberFormatter.prepare("1");
                } else if (this.f102069z instanceof StringLiteral) {
                    NumberFormatter numberFormatter2 = new NumberFormatter();
                    this.f102063t0 = numberFormatter2;
                    numberFormatter2.prepare(((StringLiteral) this.f102069z).stringify());
                }
                if (attributeInfo != null && attributeInfo3 != null) {
                    this.f102057J = makeAttributeValueTemplate(attributeInfo3.getValue(), attributeInfo3);
                    this.f102058O = makeAttributeValueTemplate(attributeInfo.getValue(), attributeInfo);
                }
                if (str8 == null) {
                    this.f102062q0 = new StringLiteral("1");
                    return;
                } else {
                    if (str8.indexOf(123) >= 0 || str8.matches("-?[0-9]+(\\s+-?[0-9]+)*")) {
                        return;
                    }
                    compileErrorInAttribute("Invalid format for start-at attribute", "XTSE0020", "start-at");
                    return;
                }
            }
            AttributeInfo next = it2.next();
            NodeName nodeName = next.getNodeName();
            Iterator<AttributeInfo> it3 = it2;
            String displayName = nodeName.getDisplayName();
            AttributeInfo attributeInfo4 = attributeInfo2;
            String value = next.getValue();
            displayName.hashCode();
            char c2 = 65535;
            switch (displayName.hashCode()) {
                case -1268779017:
                    if (displayName.equals(Constants.ATTRNAME_FORMAT)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1206994319:
                    if (displayName.equals("ordinal")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1152805622:
                    if (displayName.equals(Constants.ATTRNAME_LETTERVALUE)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -906021636:
                    if (displayName.equals("select")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3151786:
                    if (displayName.equals("from")) {
                        c = 4;
                        c2 = c;
                        break;
                    }
                    break;
                case 3314158:
                    if (displayName.equals("lang")) {
                        c = 5;
                        c2 = c;
                        break;
                    }
                    break;
                case 94851343:
                    if (displayName.equals("count")) {
                        c = 6;
                        c2 = c;
                        break;
                    }
                    break;
                case 102865796:
                    if (displayName.equals("level")) {
                        c = 7;
                        c2 = c;
                        break;
                    }
                    break;
                case 111972721:
                    if (displayName.equals("value")) {
                        c = '\b';
                        c2 = c;
                        break;
                    }
                    break;
                case 355351195:
                    if (displayName.equals(Constants.ATTRNAME_GROUPINGSEPARATOR)) {
                        c = '\t';
                        c2 = c;
                        break;
                    }
                    break;
                case 1316748670:
                    if (displayName.equals("start-at")) {
                        c = '\n';
                        c2 = c;
                        break;
                    }
                    break;
                case 2134511243:
                    if (displayName.equals(Constants.ATTRNAME_GROUPINGSIZE)) {
                        c = 11;
                        c2 = c;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    this.f102069z = makeAttributeValueTemplate(value, next);
                    str6 = value;
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 1:
                    this.f102061k0 = makeAttributeValueTemplate(value, next);
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 2:
                    this.f102059Q = makeAttributeValueTemplate(Whitespace.trim(value), next);
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 3:
                    this.f102067x = makeExpression(value, next);
                    str2 = value;
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 4:
                    str4 = value;
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 5:
                    this.f102060Z = makeAttributeValueTemplate(value, next);
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 6:
                    str3 = value;
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 7:
                    str5 = Whitespace.trim(value);
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case '\b':
                    this.f102068y = makeExpression(value, next);
                    str = value;
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case '\t':
                    attributeInfo = next;
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
                case '\n':
                    this.f102062q0 = makeAttributeValueTemplate(value, next);
                    str7 = value;
                    attributeInfo2 = attributeInfo4;
                    break;
                case 11:
                    attributeInfo2 = next;
                    str7 = str8;
                    break;
                default:
                    checkUnknownAttribute(nodeName);
                    str7 = str8;
                    attributeInfo2 = attributeInfo4;
                    break;
            }
            it2 = it3;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        String str;
        checkEmpty();
        this.f102067x = typeCheck("select", this.f102067x);
        this.f102068y = typeCheck("value", this.f102068y);
        this.f102069z = typeCheck(Constants.ATTRNAME_FORMAT, this.f102069z);
        this.f102057J = typeCheck("group-size", this.f102057J);
        this.f102058O = typeCheck("group-separator", this.f102058O);
        this.f102059Q = typeCheck(Constants.ATTRNAME_LETTERVALUE, this.f102059Q);
        this.f102061k0 = typeCheck("ordinal", this.f102061k0);
        this.f102060Z = typeCheck("lang", this.f102060Z);
        this.f102066w = typeCheck("from", this.f102066w);
        this.f102065v = typeCheck("count", this.f102065v);
        this.f102062q0 = typeCheck("start-at", this.f102062q0);
        if (this.f102068y == null && this.f102067x == null) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            contextItemExpression.setLocation(allocateLocation());
            str = "XTTE0990";
            contextItemExpression.setErrorCodeForUndefinedContext("XTTE0990", false);
            this.f102067x = contextItemExpression;
        } else {
            str = "XTTE1000";
        }
        if (this.f102067x != null) {
            try {
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:number/select", 0);
                roleDiagnostic.setErrorCode(str);
                this.f102067x = getConfiguration().getTypeChecker(false).staticTypeCheck(this.f102067x, SequenceType.SINGLE_NODE, roleDiagnostic, makeExpressionVisitor());
            } catch (XPathException e) {
                compileError(e);
            }
        }
    }
}
