package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Comment extends Instruction {
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        parseChildren(parser);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void translate(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator r12, com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator r13) {
        /*
            r11 = this;
            com.sun.org.apache.bcel.internal.generic.ConstantPoolGen r0 = r12.getConstantPool()
            com.sun.org.apache.bcel.internal.generic.InstructionList r1 = r13.getInstructionList()
            int r2 = r11.elementCount()
            r3 = 1
            if (r2 != r3) goto L1b
            r2 = 0
            java.lang.Object r2 = r11.elementAt(r2)
            boolean r3 = r2 instanceof com.sun.org.apache.xalan.internal.xsltc.compiler.Text
            if (r3 == 0) goto L1b
            com.sun.org.apache.xalan.internal.xsltc.compiler.Text r2 = (com.sun.org.apache.xalan.internal.xsltc.compiler.Text) r2
            goto L1c
        L1b:
            r2 = 0
        L1c:
            r3 = 2
            java.lang.String r4 = "(Ljava/lang/String;)V"
            java.lang.String r5 = "comment"
            java.lang.String r6 = "com.sun.org.apache.xml.internal.serializer.SerializationHandler"
            if (r2 == 0) goto L5e
            com.sun.org.apache.bcel.internal.generic.Instruction r11 = r13.loadHandler()
            r1.append(r11)
            boolean r11 = r2.canLoadAsArrayOffsetLength()
            if (r11 == 0) goto L45
            r2.loadAsArrayOffsetLength(r12, r13)
            java.lang.String r11 = "([CII)V"
            int r11 = r0.addInterfaceMethodref(r6, r5, r11)
            com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE r12 = new com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE
            r13 = 4
            r12.<init>(r11, r13)
            r1.append(r12)
            goto Lb5
        L45:
            com.sun.org.apache.bcel.internal.generic.PUSH r11 = new com.sun.org.apache.bcel.internal.generic.PUSH
            java.lang.String r12 = r2.getText()
            r11.<init>(r0, r12)
            r1.append(r11)
            int r11 = r0.addInterfaceMethodref(r6, r5, r4)
            com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE r12 = new com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE
            r12.<init>(r11, r3)
            r1.append(r12)
            goto Lb5
        L5e:
            com.sun.org.apache.bcel.internal.generic.Instruction r2 = r13.loadHandler()
            r1.append(r2)
            com.sun.org.apache.bcel.internal.generic.StackInstruction r2 = com.sun.org.apache.bcel.internal.generic.InstructionConstants.DUP
            r1.append(r2)
            com.sun.org.apache.bcel.internal.generic.Instruction r7 = r12.loadTranslet()
            r1.append(r7)
            com.sun.org.apache.bcel.internal.generic.GETFIELD r7 = new com.sun.org.apache.bcel.internal.generic.GETFIELD
            java.lang.String r8 = "stringValueHandler"
            java.lang.String r9 = "Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;"
            java.lang.String r10 = "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"
            int r8 = r0.addFieldref(r10, r8, r9)
            r7.<init>(r8)
            r1.append(r7)
            r1.append(r2)
            com.sun.org.apache.bcel.internal.generic.Instruction r2 = r13.storeHandler()
            r1.append(r2)
            r11.translateContents(r12, r13)
            com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL r11 = new com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL
            java.lang.String r12 = "getValue"
            java.lang.String r2 = "()Ljava/lang/String;"
            java.lang.String r7 = "com.sun.org.apache.xalan.internal.xsltc.runtime.StringValueHandler"
            int r12 = r0.addMethodref(r7, r12, r2)
            r11.<init>(r12)
            r1.append(r11)
            int r11 = r0.addInterfaceMethodref(r6, r5, r4)
            com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE r12 = new com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE
            r12.<init>(r11, r3)
            r1.append(r12)
            com.sun.org.apache.bcel.internal.generic.Instruction r11 = r13.storeHandler()
            r1.append(r11)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.Comment.translate(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator):void");
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        typeCheckContents(symbolTable);
        return Type.String;
    }
}
