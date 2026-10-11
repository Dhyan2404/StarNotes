package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class VariableRef extends VariableRefBase {
    public VariableRef(Variable variable) {
        super(variable);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (this._type.implementedAsMethod()) {
            return;
        }
        String escapedName = this._variable.getEscapedName();
        String signature = this._type.toSignature();
        if (!this._variable.isLocal()) {
            String className = classGenerator.getClassName();
            instructionList.append(classGenerator.loadTranslet());
            if (classGenerator.isExternal()) {
                instructionList.append(new CHECKCAST(constantPool.addClass(className)));
            }
            instructionList.append(new GETFIELD(constantPool.addFieldref(className, escapedName, signature)));
        } else if (classGenerator.isExternal()) {
            Closure closure = this._closure;
            while (closure != null && !closure.inInnerClass()) {
                closure = closure.getParentClosure();
            }
            if (closure != null) {
                instructionList.append(InstructionConstants.ALOAD_0);
                instructionList.append(new GETFIELD(constantPool.addFieldref(closure.getInnerClassName(), escapedName, signature)));
            } else {
                instructionList.append(this._variable.loadInstruction());
                this._variable.removeReference(this);
            }
        } else {
            instructionList.append(this._variable.loadInstruction());
            this._variable.removeReference(this);
        }
        if (this._variable.getType() instanceof NodeSetType) {
            instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.NODE_ITERATOR, "cloneIterator", "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), 1));
        }
    }
}
