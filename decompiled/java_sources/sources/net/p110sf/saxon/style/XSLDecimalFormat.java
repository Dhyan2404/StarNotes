package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.DecimalSymbols;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.AttributeLocation;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLDecimalFormat extends StyleElement {

    /* renamed from: J */
    public String f101936J;

    /* renamed from: O */
    public String f101937O;

    /* renamed from: Q */
    public String f101938Q;

    /* renamed from: Z */
    public String f101939Z;

    /* renamed from: k0 */
    public String f101940k0;

    /* renamed from: q0 */
    public String f101941q0;

    /* renamed from: t0 */
    public String f101942t0;

    /* renamed from: u */
    public boolean f101943u = false;

    /* renamed from: u0 */
    public DecimalSymbols f101944u0;

    /* renamed from: v */
    public String f101945v;

    /* renamed from: w */
    public String f101946w;

    /* renamed from: x */
    public String f101947x;

    /* renamed from: y */
    public String f101948y;

    /* renamed from: z */
    public String f101949z;

    /* renamed from: Z */
    public final void m64035Z(int i, String str, int i2) throws XPathException {
        try {
            this.f101944u0.setProperty(i, str, i2);
        } catch (XPathException e) {
            e.setLocation(new AttributeLocation(this, StructuredQName.fromClarkName(DecimalSymbols.propertyNames[i])));
            throw e;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) {
        prepareAttributes();
        DecimalFormatManager decimalFormatManager = getCompilation().getPrincipalStylesheetModule().getDecimalFormatManager();
        String str = this.f101945v;
        if (str == null) {
            this.f101944u0 = decimalFormatManager.getDefaultDecimalFormat();
            return;
        }
        DecimalSymbols obtainNamedDecimalFormat = decimalFormatManager.obtainNamedDecimalFormat(makeQName(str, null, "name"));
        this.f101944u0 = obtainNamedDecimalFormat;
        obtainNamedDecimalFormat.setHostLanguage(HostLanguage.XSLT, 30);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0030. Please report as an issue. */
    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        if (this.f101943u) {
            return;
        }
        this.f101943u = true;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            displayName.hashCode();
            char c = 65535;
            switch (displayName.hashCode()) {
                case -2055231639:
                    if (displayName.equals(Constants.ATTRNAME_DECIMALSEPARATOR)) {
                        c = 0;
                        break;
                    }
                    break;
                case -1413120792:
                    if (displayName.equals(Constants.ATTRNAME_PATTERNSEPARATOR)) {
                        c = 1;
                        break;
                    }
                    break;
                case -1152836839:
                    if (displayName.equals(Constants.ATTRNAME_PERMILLE)) {
                        c = 2;
                        break;
                    }
                    break;
                case -678927291:
                    if (displayName.equals(Constants.ATTRNAME_PERCENT)) {
                        c = 3;
                        break;
                    }
                    break;
                case 78043:
                    if (displayName.equals("NaN")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3373707:
                    if (displayName.equals("name")) {
                        c = 5;
                        break;
                    }
                    break;
                case 95582509:
                    if (displayName.equals(Constants.ATTRNAME_DIGIT)) {
                        c = 6;
                        break;
                    }
                    break;
                case 173173288:
                    if (displayName.equals(Constants.ATTRNAME_INFINITY)) {
                        c = 7;
                        break;
                    }
                    break;
                case 355351195:
                    if (displayName.equals(Constants.ATTRNAME_GROUPINGSEPARATOR)) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1212707143:
                    if (displayName.equals("exponent-separator")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1782471930:
                    if (displayName.equals(Constants.ATTRNAME_MINUSSIGN)) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1855319496:
                    if (displayName.equals(Constants.ATTRNAME_ZERODIGIT)) {
                        c = 11;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.f101946w = value;
                    break;
                case 1:
                    this.f101942t0 = value;
                    break;
                case 2:
                    this.f101939Z = value;
                    break;
                case 3:
                    this.f101938Q = value;
                    break;
                case 4:
                    this.f101937O = value;
                    break;
                case 5:
                    this.f101945v = Whitespace.trim(value);
                    break;
                case 6:
                    this.f101941q0 = value;
                    break;
                case 7:
                    this.f101949z = value;
                    break;
                case '\b':
                    this.f101947x = value;
                    break;
                case '\t':
                    this.f101948y = value;
                    break;
                case '\n':
                    this.f101936J = value;
                    break;
                case 11:
                    this.f101940k0 = value;
                    break;
                default:
                    checkUnknownAttribute(nodeName);
                    break;
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkTopLevel("XTSE0010", false);
        checkEmpty();
        int precedence = componentDeclaration.getPrecedence();
        if (this.f101944u0 == null) {
            return;
        }
        String str = this.f101946w;
        if (str != null) {
            m64035Z(0, str, precedence);
        }
        String str2 = this.f101947x;
        if (str2 != null) {
            m64035Z(1, str2, precedence);
        }
        String str3 = this.f101949z;
        if (str3 != null) {
            m64035Z(9, str3, precedence);
        }
        String str4 = this.f101936J;
        if (str4 != null) {
            m64035Z(3, str4, precedence);
        }
        String str5 = this.f101937O;
        if (str5 != null) {
            m64035Z(10, str5, precedence);
        }
        String str6 = this.f101938Q;
        if (str6 != null) {
            m64035Z(4, str6, precedence);
        }
        String str7 = this.f101939Z;
        if (str7 != null) {
            m64035Z(5, str7, precedence);
        }
        String str8 = this.f101940k0;
        if (str8 != null) {
            m64035Z(6, str8, precedence);
        }
        String str9 = this.f101941q0;
        if (str9 != null) {
            m64035Z(2, str9, precedence);
        }
        String str10 = this.f101948y;
        if (str10 != null) {
            m64035Z(7, str10, precedence);
        }
        String str11 = this.f101942t0;
        if (str11 != null) {
            m64035Z(8, str11, precedence);
        }
    }
}
