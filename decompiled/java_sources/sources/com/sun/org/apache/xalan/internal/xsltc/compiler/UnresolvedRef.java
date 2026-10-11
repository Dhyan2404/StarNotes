package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class UnresolvedRef extends VariableRefBase {
    private VariableRefBase _ref = null;
    private QName _variableName;

    public UnresolvedRef(QName qName) {
        this._variableName = qName;
    }

    private ErrorMsg reportError() {
        ErrorMsg errorMsg = new ErrorMsg(ErrorMsg.VARIABLE_UNDEF_ERR, (Object) this._variableName, (SyntaxTreeNode) this);
        getParser().reportError(3, errorMsg);
        return errorMsg;
    }

    private VariableRefBase resolve(Parser parser, SymbolTable symbolTable) {
        VariableBase lookupVariable = parser.lookupVariable(this._variableName);
        if (lookupVariable == null) {
            lookupVariable = (VariableBase) symbolTable.lookupName(this._variableName);
        }
        if (lookupVariable == null) {
            reportError();
            return null;
        }
        this._variable = lookupVariable;
        addParentDependency();
        if (lookupVariable instanceof Variable) {
            return new VariableRef((Variable) lookupVariable);
        }
        if (lookupVariable instanceof Param) {
            return new ParameterRef((Param) lookupVariable);
        }
        return null;
    }

    public QName getName() {
        return this._variableName;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "unresolved-ref()";
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        VariableRefBase variableRefBase = this._ref;
        if (variableRefBase != null) {
            variableRefBase.translate(classGenerator, methodGenerator);
        } else {
            reportError();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        if (this._ref != null) {
            new ErrorMsg(ErrorMsg.CIRCULAR_VARIABLE_ERR, (Object) this._variableName.toString(), (SyntaxTreeNode) this);
        }
        VariableRefBase resolve = resolve(getParser(), symbolTable);
        this._ref = resolve;
        if (resolve == null) {
            throw new TypeCheckError(reportError());
        }
        Type typeCheck = resolve.typeCheck(symbolTable);
        this._type = typeCheck;
        return typeCheck;
    }
}
