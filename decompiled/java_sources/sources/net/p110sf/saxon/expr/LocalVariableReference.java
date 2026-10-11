package net.p110sf.saxon.expr;

import com.caverock.androidsvg.SVGParser;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class LocalVariableReference extends VariableReference {

    /* renamed from: s */
    public int f99304s;

    public LocalVariableReference(StructuredQName structuredQName) {
        super(structuredQName);
        this.f99304s = -999;
    }

    @Override // net.p110sf.saxon.expr.VariableReference, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        if (this.binding == null) {
            throw new UnsupportedOperationException("Cannot copy a variable reference whose binding is unknown");
        }
        LocalVariableReference localVariableReference = new LocalVariableReference(getVariableName());
        localVariableReference.copyFrom(this);
        localVariableReference.f99304s = this.f99304s;
        Binding binding = rebindingMap.get(this.binding);
        if (binding != null) {
            localVariableReference.binding = binding;
        }
        localVariableReference.binding.addReference(localVariableReference, isInLoop());
        return localVariableReference;
    }

    @Override // net.p110sf.saxon.expr.VariableReference
    public Sequence evaluateVariable(XPathContext xPathContext) throws XPathException {
        String str;
        try {
            return xPathContext.getStackFrame().slots[this.f99304s];
        } catch (ArrayIndexOutOfBoundsException unused) {
            if (this.f99304s == -999) {
                if (this.binding != null) {
                    try {
                        this.f99304s = this.getBinding().getLocalSlotNumber();
                        return xPathContext.getStackFrame().slots[this.f99304s];
                    } catch (ArrayIndexOutOfBoundsException unused2) {
                        throw new ArrayIndexOutOfBoundsException("Local variable $" + this.getDisplayName() + " has not been allocated a stack frame slot");
                    }
                }
                throw new ArrayIndexOutOfBoundsException("Local variable $" + this.getDisplayName() + " has not been allocated a stack frame slot");
            }
            int length = xPathContext.getStackFrame().slots.length;
            StringBuilder sb = new StringBuilder();
            sb.append("Local variable $");
            sb.append(this.getDisplayName());
            sb.append(" uses slot ");
            sb.append(this.f99304s);
            sb.append(" but ");
            if (length == 0) {
                str = SVGParser.f16048t;
            } else {
                str = "only " + xPathContext.getStackFrame().slots.length;
            }
            sb.append(str);
            sb.append(" slots are allocated on the stack frame");
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
    }

    @Override // net.p110sf.saxon.expr.VariableReference, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "locVarRef";
    }

    public int getSlotNumber() {
        return this.f99304s;
    }

    public void setBinding(LocalBinding localBinding) {
        this.binding = localBinding;
    }

    public void setSlotNumber(int i) {
        this.f99304s = i;
    }

    @Override // net.p110sf.saxon.expr.VariableReference
    public LocalBinding getBinding() {
        return (LocalBinding) super.getBinding();
    }

    public LocalVariableReference(LocalBinding localBinding) {
        super(localBinding);
        this.f99304s = -999;
    }
}
