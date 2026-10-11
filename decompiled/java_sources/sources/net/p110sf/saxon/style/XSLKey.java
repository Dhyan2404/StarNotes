package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.function.Predicate;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GlobalVariableReference;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.ApplyTemplates;
import net.p110sf.saxon.expr.instruct.CallTemplate;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.style.XSLKey;
import net.p110sf.saxon.trans.KeyDefinition;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLKey extends StyleElement implements StylesheetComponent {

    /* renamed from: Q */
    public static final Predicate<Expression> f102011Q = new Predicate() { // from class: com.sunia.HTREnginev2.rqo
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            boolean m64044a0;
            m64044a0 = XSLKey.m64044a0((Expression) obj);
            return m64044a0;
        }
    };

    /* renamed from: Z */
    public static final /* synthetic */ boolean f102012Z = false;

    /* renamed from: J */
    public boolean f102013J = false;

    /* renamed from: O */
    public KeyDefinition f102014O;

    /* renamed from: u */
    public Pattern f102015u;

    /* renamed from: v */
    public Expression f102016v;

    /* renamed from: w */
    public String f102017w;

    /* renamed from: x */
    public StructuredQName f102018x;

    /* renamed from: y */
    public SlotManager f102019y;

    /* renamed from: z */
    public boolean f102020z;

    /* renamed from: a0 */
    public static /* synthetic */ boolean m64044a0(Expression expression) {
        return (expression instanceof GlobalVariableReference) || (expression instanceof UserFunctionCall) || (expression instanceof CallTemplate) || (expression instanceof ApplyTemplates);
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void checkCompatibility(Component component) {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:1|(4:3|(1:5)|6|(1:8)(20:9|(1:11)|12|13|(5:15|16|17|18|19)|26|(1:28)|29|(2:31|(1:35))|36|(1:38)(1:58)|39|(1:57)(1:43)|44|45|46|(1:48)(1:54)|49|50|51))|59|13|(0)|26|(0)|29|(0)|36|(0)(0)|39|(1:41)|57|44|45|46|(0)(0)|49|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015b, code lost:
    
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x015c, code lost:
    
        compileError(r12);
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e4  */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compileDeclaration(net.p110sf.saxon.style.Compilation r12, net.p110sf.saxon.style.ComponentDeclaration r13) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLKey.compileDeclaration(net.sf.saxon.style.Compilation, net.sf.saxon.style.ComponentDeclaration):void");
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void generateByteCode(Optimizer optimizer) {
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public Actor getActor() {
        throw new UnsupportedOperationException();
    }

    public StructuredQName getKeyName() {
        String attributeValue;
        if (getObjectName() == null && (attributeValue = getAttributeValue("", "name")) != null) {
            setObjectName(makeQName(attributeValue, null, "name"));
        }
        return getObjectName();
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SlotManager getSlotManager() {
        return this.f102019y;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SymbolicName getSymbolicName() {
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) {
        StructuredQName keyName = getKeyName();
        if (keyName != null) {
            principalStylesheetModule.getKeyManager().preRegisterKeyDefinition(keyName);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void optimize(ComponentDeclaration componentDeclaration) throws XPathException {
        Expression optimize = this.f102014O.getUse().optimize(makeExpressionVisitor(), getConfiguration().makeContextItemStaticInfo(this.f102015u.getItemType(), false));
        m63974m(optimize);
        this.f102014O.setBody(optimize);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0071, code lost:
    
        switch(r12) {
            case 0: goto L59;
            case 1: goto L58;
            case 2: goto L57;
            case 3: goto L56;
            case 4: goto L55;
            default: goto L62;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0078, code lost:
    
        r13.f102017w = net.p110sf.saxon.value.Whitespace.trim(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007f, code lost:
    
        r3 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0081, code lost:
    
        r2 = net.p110sf.saxon.value.Whitespace.trim(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0086, code lost:
    
        r13.f102016v = makeExpression(r8, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008e, code lost:
    
        r13.f102013J = processBooleanAttribute("composite", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0074, code lost:
    
        checkUnknownAttribute(r7);
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r13 = this;
            net.sf.saxon.om.AttributeMap r0 = r13.attributes()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
            r3 = r2
        Lb:
            boolean r4 = r0.hasNext()
            java.lang.String r5 = "match"
            java.lang.String r6 = "name"
            if (r4 == 0) goto Lc0
            java.lang.Object r4 = r0.next()
            net.sf.saxon.om.AttributeInfo r4 = (net.p110sf.saxon.om.AttributeInfo) r4
            net.sf.saxon.om.NodeName r7 = r4.getNodeName()
            java.lang.String r8 = r4.getValue()
            java.lang.String r9 = r7.getURI()
            java.lang.String r10 = r7.getLocalPart()
            java.lang.String r11 = ""
            boolean r11 = r11.equals(r9)
            if (r11 == 0) goto L96
            r10.hashCode()
            int r9 = r10.hashCode()
            java.lang.String r11 = "composite"
            r12 = -1
            switch(r9) {
                case -1399754105: goto L69;
                case 116103: goto L5e;
                case 3373707: goto L55;
                case 103668165: goto L4c;
                case 1880293257: goto L41;
                default: goto L40;
            }
        L40:
            goto L71
        L41:
            java.lang.String r5 = "collation"
            boolean r5 = r10.equals(r5)
            if (r5 != 0) goto L4a
            goto L71
        L4a:
            r12 = 4
            goto L71
        L4c:
            boolean r5 = r10.equals(r5)
            if (r5 != 0) goto L53
            goto L71
        L53:
            r12 = 3
            goto L71
        L55:
            boolean r5 = r10.equals(r6)
            if (r5 != 0) goto L5c
            goto L71
        L5c:
            r12 = 2
            goto L71
        L5e:
            java.lang.String r5 = "use"
            boolean r5 = r10.equals(r5)
            if (r5 != 0) goto L67
            goto L71
        L67:
            r12 = 1
            goto L71
        L69:
            boolean r5 = r10.equals(r11)
            if (r5 != 0) goto L70
            goto L71
        L70:
            r12 = 0
        L71:
            switch(r12) {
                case 0: goto L8e;
                case 1: goto L86;
                case 2: goto L81;
                case 3: goto L7f;
                case 4: goto L78;
                default: goto L74;
            }
        L74:
            r13.checkUnknownAttribute(r7)
            goto Lb
        L78:
            java.lang.String r4 = net.p110sf.saxon.value.Whitespace.trim(r8)
            r13.f102017w = r4
            goto Lb
        L7f:
            r3 = r8
            goto Lb
        L81:
            java.lang.String r2 = net.p110sf.saxon.value.Whitespace.trim(r8)
            goto Lb
        L86:
            net.sf.saxon.expr.Expression r4 = r13.makeExpression(r8, r4)
            r13.f102016v = r4
            goto Lb
        L8e:
            boolean r4 = r13.processBooleanAttribute(r11, r8)
            r13.f102013J = r4
            goto Lb
        L96:
            java.lang.String r4 = "range-key"
            boolean r5 = r10.equals(r4)
            if (r5 == 0) goto Lbb
            java.lang.String r5 = "http://saxon.sf.net/"
            boolean r5 = r9.equals(r5)
            if (r5 == 0) goto Lbb
            net.sf.saxon.Platform r5 = net.p110sf.saxon.Version.platform
            boolean r5 = r5.isDotNet()
            if (r5 == 0) goto Lb3
            java.lang.String r5 = "saxon:range-key is not supported in SaxonCS"
            r13.compileError(r5)
        Lb3:
            boolean r4 = r13.processBooleanAttribute(r4, r8)
            r13.f102020z = r4
            goto Lb
        Lbb:
            r13.checkUnknownAttribute(r7)
            goto Lb
        Lc0:
            if (r2 != 0) goto Lc7
            r13.reportAbsence(r6)
            java.lang.String r2 = "_dummy_key_name"
        Lc7:
            net.sf.saxon.om.StructuredQName r0 = r13.makeQName(r2, r1, r6)
            r13.f102018x = r0
            r13.setObjectName(r0)
            if (r3 != 0) goto Ld7
            r13.reportAbsence(r5)
            java.lang.String r3 = "*"
        Ld7:
            net.sf.saxon.pattern.Pattern r0 = r13.m63960L(r3, r5)
            r13.f102015u = r0
            if (r0 != 0) goto Lea
            net.sf.saxon.pattern.NodeTestPattern r0 = new net.sf.saxon.pattern.NodeTestPattern
            net.sf.saxon.type.ErrorType r1 = net.p110sf.saxon.type.ErrorType.getInstance()
            r0.<init>(r1)
            r13.f102015u = r0
        Lea:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLKey.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        Configuration configuration = getConfiguration();
        this.f102019y = configuration.makeSlotManager();
        checkTopLevel("XTSE0010", false);
        if (this.f102016v != null) {
            if (hasChildNodes()) {
                compileError("An xsl:key element with a @use attribute must be empty", "XTSE1205");
            }
            try {
                this.f102016v = configuration.getTypeChecker(false).staticTypeCheck(this.f102016v, SequenceType.ATOMIC_SEQUENCE, new RoleDiagnostic(4, "xsl:key/use", 0), makeExpressionVisitor());
            } catch (XPathException e) {
                compileError(e);
            }
        } else if (!hasChildNodes()) {
            compileError("An xsl:key element must either have a @use attribute or have content", "XTSE1205");
        }
        this.f102016v = typeCheck("use", this.f102016v);
        this.f102015u = typeCheck(Constants.ATTRNAME_MATCH, this.f102015u);
        Expression expression = this.f102016v;
        if (expression != null) {
            this.f102016v = expression.typeCheck(makeExpressionVisitor(), configuration.makeContextItemStaticInfo(this.f102015u.getItemType(), false));
        }
        if (this.f102017w == null) {
            this.f102017w = getDefaultCollationName();
            return;
        }
        try {
            URI uri = new URI(this.f102017w);
            if (uri.isAbsolute()) {
                return;
            }
            this.f102017w = new URI(getBaseURI()).resolve(uri).toString();
        } catch (URISyntaxException unused) {
            compileError("Collation name '" + this.f102017w + "' is not a valid URI");
        }
    }
}
