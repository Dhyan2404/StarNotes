package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import java.util.StringTokenizer;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class UseAttributeSets extends Instruction {
    private static final String ATTR_SET_NOT_FOUND = "";
    private final Vector _sets = new Vector(2);

    public UseAttributeSets(String str, Parser parser) {
        setParser(parser);
        addAttributeSets(str);
    }

    public void addAttributeSets(String str) {
        if (str == null || str.equals("")) {
            return;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            this._sets.add(getParser().getQNameIgnoreDefaultNs(stringTokenizer.nextToken()));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        SymbolTable symbolTable = getParser().getSymbolTable();
        for (int i = 0; i < this._sets.size(); i++) {
            QName qName = (QName) this._sets.elementAt(i);
            AttributeSet lookupAttributeSet = symbolTable.lookupAttributeSet(qName);
            if (lookupAttributeSet != null) {
                String methodName = lookupAttributeSet.getMethodName();
                instructionList.append(classGenerator.loadTranslet());
                instructionList.append(methodGenerator.loadDOM());
                instructionList.append(methodGenerator.loadIterator());
                instructionList.append(methodGenerator.loadHandler());
                instructionList.append(methodGenerator.loadCurrentNode());
                instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(classGenerator.getClassName(), methodName, Constants.ATTR_SET_SIG)));
            } else {
                reportError(this, getParser(), ErrorMsg.ATTRIBSET_UNDEF_ERR, qName.toString());
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        return Type.Void;
    }
}
