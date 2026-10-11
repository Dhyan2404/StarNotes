package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.Copy;
import net.p110sf.saxon.expr.instruct.ForEach;
import net.p110sf.saxon.expr.instruct.UseAttributeSet;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLCopy extends StyleElement {

    /* renamed from: u */
    public String f101925u;

    /* renamed from: v */
    public StructuredQName[] f101926v = null;

    /* renamed from: w */
    public boolean f101927w = true;

    /* renamed from: x */
    public boolean f101928x = true;

    /* renamed from: y */
    public int f101929y = 3;

    /* renamed from: z */
    public SchemaType f101930z = null;

    /* renamed from: J */
    public Expression f101923J = null;

    /* renamed from: O */
    public boolean f101924O = false;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        this.f101923J = typeCheck("select", this.f101923J);
        try {
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "xsl:copy/select", 0);
            roleDiagnostic.setErrorCode("XTTE3180");
            this.f101923J = getConfiguration().getTypeChecker(false).staticTypeCheck(this.f101923J, SequenceType.OPTIONAL_ITEM, roleDiagnostic, makeExpressionVisitor());
        } catch (XPathException e) {
            compileError(e);
        }
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        StructuredQName[] structuredQNameArr = this.f101926v;
        if (structuredQNameArr != null) {
            Expression makeConditional = Choose.makeConditional(new InstanceOfExpression(new ContextItemExpression(), SequenceType.makeSequenceType(NodeKindTest.ELEMENT, 16384)), UseAttributeSet.makeUseAttributeSets(structuredQNameArr, this));
            if (compileSequenceConstructor == null) {
                compileSequenceConstructor = makeConditional;
            } else {
                compileSequenceConstructor = Block.makeBlock(makeConditional, compileSequenceConstructor);
                compileSequenceConstructor.setLocation(allocateLocation());
            }
        }
        if (compileSequenceConstructor == null) {
            compileSequenceConstructor = Literal.makeEmptySequence();
        }
        Copy copy = new Copy(this.f101927w, this.f101928x, this.f101930z, this.f101929y);
        copy.setContentExpression(compileSequenceConstructor);
        return this.f101924O ? new ForEach(this.f101923J, copy) : copy;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0065, code lost:
    
        if (r11.equals("copy-namespaces") == false) goto L7;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLCopy.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        String str = this.f101925u;
        if (str != null) {
            this.f101926v = m63953D(str);
        }
        if (this.f101923J == null) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            this.f101923J = contextItemExpression;
            contextItemExpression.setLocation(allocateLocation());
        }
    }
}
