package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class VariableRefBase extends Expression {
    protected Closure _closure;
    protected VariableBase _variable;

    public VariableRefBase(VariableBase variableBase) {
        this._closure = null;
        this._variable = variableBase;
        variableBase.addReference(this);
    }

    public void addParentDependency() {
        SyntaxTreeNode syntaxTreeNode = this;
        while (syntaxTreeNode != null && !(syntaxTreeNode instanceof TopLevelElement)) {
            syntaxTreeNode = syntaxTreeNode.getParent();
        }
        TopLevelElement topLevelElement = (TopLevelElement) syntaxTreeNode;
        if (topLevelElement != null) {
            VariableBase variableBase = this._variable;
            if (variableBase._ignore) {
                if (variableBase instanceof Variable) {
                    variableBase = topLevelElement.getSymbolTable().lookupVariable(this._variable._name);
                } else if (variableBase instanceof Param) {
                    variableBase = topLevelElement.getSymbolTable().lookupParam(this._variable._name);
                }
            }
            topLevelElement.addDependency(variableBase);
        }
    }

    public boolean equals(Object obj) {
        try {
            return this._variable == ((VariableRefBase) obj)._variable;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public VariableBase getVariable() {
        return this._variable;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "variable-ref(" + this._variable.getName() + '/' + this._variable.getType() + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type type = this._type;
        if (type != null) {
            return type;
        }
        if (this._variable.isLocal()) {
            SyntaxTreeNode parent = getParent();
            while (true) {
                if (!(parent instanceof Closure)) {
                    if ((parent instanceof TopLevelElement) || (parent = parent.getParent()) == 0) {
                        break;
                    }
                } else {
                    this._closure = (Closure) parent;
                    break;
                }
            }
            Closure closure = this._closure;
            if (closure != null) {
                closure.addVariable(this);
            }
        }
        Type type2 = this._variable.getType();
        this._type = type2;
        if (type2 == null) {
            this._variable.typeCheck(symbolTable);
            this._type = this._variable.getType();
        }
        addParentDependency();
        return this._type;
    }

    public VariableRefBase() {
        this._closure = null;
        this._variable = null;
    }
}
