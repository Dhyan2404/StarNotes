package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class LiteralAttribute extends Instruction {
    private final String _name;
    private final AttributeValue _value;

    public LiteralAttribute(String str, String str2, Parser parser, SyntaxTreeNode syntaxTreeNode) {
        this._name = str;
        setParent(syntaxTreeNode);
        this._value = AttributeValue.create(this, str2, parser);
    }

    private boolean hasBadChars(String str) {
        for (char c : str.toCharArray()) {
            if (c < ' ' || '~' < c || c == '<' || c == '>' || c == '&' || c == '\"') {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public boolean contextDependent() {
        return this._value.contextDependent();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("LiteralAttribute name=" + this._name + " value=" + this._value);
    }

    public String getName() {
        return this._name;
    }

    public AttributeValue getValue() {
        return this._value;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
    
        if (r7.isAttrFlagSet(r6._name, 2) != false) goto L15;
     */
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void translate(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator r7, com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator r8) {
        /*
            r6 = this;
            com.sun.org.apache.bcel.internal.generic.ConstantPoolGen r0 = r7.getConstantPool()
            com.sun.org.apache.bcel.internal.generic.InstructionList r1 = r8.getInstructionList()
            com.sun.org.apache.bcel.internal.generic.Instruction r2 = r8.loadHandler()
            r1.append(r2)
            com.sun.org.apache.bcel.internal.generic.PUSH r2 = new com.sun.org.apache.bcel.internal.generic.PUSH
            java.lang.String r3 = r6._name
            r2.<init>(r0, r3)
            r1.append(r2)
            com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeValue r2 = r6._value
            r2.translate(r7, r8)
            com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode r7 = r6.getParent()
            boolean r2 = r7 instanceof com.sun.org.apache.xalan.internal.xsltc.compiler.LiteralElement
            if (r2 == 0) goto L72
            com.sun.org.apache.xalan.internal.xsltc.compiler.LiteralElement r7 = (com.sun.org.apache.xalan.internal.xsltc.compiler.LiteralElement) r7
            boolean r2 = r7.allAttributesUnique()
            if (r2 == 0) goto L72
            com.sun.org.apache.xml.internal.serializer.ElemDesc r7 = r7.getElemDesc()
            r2 = 0
            if (r7 == 0) goto L4b
            java.lang.String r3 = r6._name
            r4 = 4
            boolean r3 = r7.isAttrFlagSet(r3, r4)
            r5 = 2
            if (r3 == 0) goto L42
            r2 = 1
            r4 = r5
            goto L4c
        L42:
            java.lang.String r3 = r6._name
            boolean r7 = r7.isAttrFlagSet(r3, r5)
            if (r7 == 0) goto L4b
            goto L4c
        L4b:
            r4 = r2
        L4c:
            com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeValue r7 = r6._value
            boolean r3 = r7 instanceof com.sun.org.apache.xalan.internal.xsltc.compiler.SimpleAttributeValue
            if (r3 == 0) goto L62
            com.sun.org.apache.xalan.internal.xsltc.compiler.SimpleAttributeValue r7 = (com.sun.org.apache.xalan.internal.xsltc.compiler.SimpleAttributeValue) r7
            java.lang.String r7 = r7.toString()
            boolean r6 = r6.hasBadChars(r7)
            if (r6 != 0) goto L62
            if (r2 != 0) goto L62
            r4 = r4 | 1
        L62:
            com.sun.org.apache.bcel.internal.generic.PUSH r6 = new com.sun.org.apache.bcel.internal.generic.PUSH
            r6.<init>(r0, r4)
            r1.append(r6)
            com.sun.org.apache.bcel.internal.generic.Instruction r6 = r8.uniqueAttribute()
            r1.append(r6)
            goto L79
        L72:
            com.sun.org.apache.bcel.internal.generic.Instruction r6 = r8.attribute()
            r1.append(r6)
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.LiteralAttribute.translate(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator):void");
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        this._value.typeCheck(symbolTable);
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
