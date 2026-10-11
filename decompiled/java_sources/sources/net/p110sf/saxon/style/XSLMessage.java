package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.MessageInstr;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class XSLMessage extends StyleElement {

    /* renamed from: u */
    public Expression f102044u = null;

    /* renamed from: v */
    public Expression f102045v = null;

    /* renamed from: w */
    public Expression f102046w = null;

    /* renamed from: x */
    public Expression f102047x = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (compileSequenceConstructor != null) {
            Expression expression = this.f102045v;
            if (expression == null) {
                this.f102045v = compileSequenceConstructor;
            } else {
                Expression makeBlock = Block.makeBlock(expression, compileSequenceConstructor);
                this.f102045v = makeBlock;
                makeBlock.setLocation(allocateLocation());
            }
        }
        Expression expression2 = this.f102047x;
        if (expression2 != null) {
            this.f102045v = Block.makeBlock(expression2, this.f102045v);
        }
        if (this.f102045v == null) {
            this.f102045v = new StringLiteral("xsl:message (no content)");
        }
        Expression expression3 = this.f102046w;
        if (expression3 instanceof StringLiteral) {
            String stringify = ((StringLiteral) expression3).stringify();
            if (stringify.contains(":") && !stringify.startsWith("Q{")) {
                this.f102046w = new StringLiteral(makeQName(stringify, null, "error-code").getEQName());
            }
        }
        MessageInstr messageInstr = new MessageInstr(this.f102045v, this.f102044u, this.f102046w);
        messageInstr.setRetainedStaticContext(makeRetainedStaticContext());
        return messageInstr;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0041, code lost:
    
        if (r8.equals("error-code") == false) goto L7;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            r11 = this;
            net.sf.saxon.om.AttributeMap r0 = r11.attributes()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
        La:
            boolean r3 = r0.hasNext()
            java.lang.String r4 = "terminate"
            r5 = 1
            if (r3 == 0) goto L9d
            java.lang.Object r3 = r0.next()
            net.sf.saxon.om.AttributeInfo r3 = (net.p110sf.saxon.om.AttributeInfo) r3
            java.lang.String r6 = r3.getValue()
            net.sf.saxon.om.NodeName r7 = r3.getNodeName()
            java.lang.String r8 = r7.getDisplayName()
            r8.hashCode()
            int r9 = r8.hashCode()
            r10 = -1
            switch(r9) {
                case -906021636: goto L44;
                case 1589510802: goto L3b;
                case 2035990113: goto L32;
                default: goto L30;
            }
        L30:
            r5 = r10
            goto L4e
        L32:
            boolean r4 = r8.equals(r4)
            if (r4 != 0) goto L39
            goto L30
        L39:
            r5 = 2
            goto L4e
        L3b:
            java.lang.String r4 = "error-code"
            boolean r4 = r8.equals(r4)
            if (r4 != 0) goto L4e
            goto L30
        L44:
            java.lang.String r4 = "select"
            boolean r4 = r8.equals(r4)
            if (r4 != 0) goto L4d
            goto L30
        L4d:
            r5 = 0
        L4e:
            switch(r5) {
                case 0: goto L95;
                case 1: goto L8d;
                case 2: goto L81;
                default: goto L51;
            }
        L51:
            java.lang.String r4 = "http://saxon.sf.net/"
            boolean r4 = r7.hasURI(r4)
            if (r4 == 0) goto L7d
            java.lang.String r4 = r7.getLocalPart()
            java.lang.String r5 = "time"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L7d
            java.lang.String r4 = r7.getDisplayName()
            r11.isExtensionAttributeAllowed(r4)
            java.lang.String r4 = "saxon:time"
            boolean r4 = r11.processBooleanAttribute(r4, r6)
            if (r4 == 0) goto La
            java.lang.String r4 = "format-dateTime(Q{http://saxon.sf.net/}timestamp(),'[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01].[f,3-3] - ')"
            net.sf.saxon.expr.Expression r3 = r11.makeExpression(r4, r3)
            r11.f102047x = r3
            goto La
        L7d:
            r11.checkUnknownAttribute(r7)
            goto La
        L81:
            java.lang.String r2 = net.p110sf.saxon.value.Whitespace.trim(r6)
            net.sf.saxon.expr.Expression r3 = r11.makeAttributeValueTemplate(r2, r3)
            r11.f102044u = r3
            goto La
        L8d:
            net.sf.saxon.expr.Expression r3 = r11.makeAttributeValueTemplate(r6, r3)
            r11.f102046w = r3
            goto La
        L95:
            net.sf.saxon.expr.Expression r3 = r11.makeExpression(r6, r3)
            r11.f102045v = r3
            goto La
        L9d:
            if (r2 != 0) goto La7
            java.lang.String r2 = "no"
            net.sf.saxon.expr.Expression r0 = r11.makeAttributeValueTemplate(r2, r1)
            r11.f102044u = r0
        La7:
            java.lang.String[] r0 = net.p110sf.saxon.style.StyleElement.YES_NO
            r11.m63976o(r4, r2, r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLMessage.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102045v = typeCheck("select", this.f102045v);
        this.f102044u = typeCheck(Constants.ATTRNAME_TERMINATE, this.f102044u);
        Expression expression = this.f102046w;
        if (expression == null) {
            this.f102046w = new StringLiteral("Q{http://www.w3.org/2005/xqt-errors}XTMM9000");
        } else {
            this.f102046w = typeCheck("error-code", expression);
        }
    }
}
