package com.graphbuilder.math;

import com.google.android.material.motion.MotionUtils;
import com.graphbuilder.struc.Bag;

/* loaded from: classes4.dex */
public abstract class Expression {
    protected Expression parent = null;

    /* renamed from: a */
    public static void m30851a(Expression expression, Bag bag, boolean z) {
        if (expression instanceof OpNode) {
            OpNode opNode = (OpNode) expression;
            m30851a(opNode.leftChild, bag, z);
            m30851a(opNode.rightChild, bag, z);
            return;
        }
        if (expression instanceof VarNode) {
            if (z) {
                VarNode varNode = (VarNode) expression;
                if (bag.contains(varNode.name)) {
                    return;
                }
                bag.add(varNode.name);
                return;
            }
            return;
        }
        if (expression instanceof FuncNode) {
            FuncNode funcNode = (FuncNode) expression;
            if (!z && !bag.contains(funcNode.name)) {
                bag.add(funcNode.name);
            }
            for (int i = 0; i < funcNode.numChildren(); i++) {
                m30851a(funcNode.child(i), bag, z);
            }
        }
    }

    /* renamed from: c */
    public static void m30852c(Expression expression, StringBuffer stringBuffer) {
        if (expression instanceof OpNode) {
            OpNode opNode = (OpNode) expression;
            stringBuffer.append(MotionUtils.f31761c);
            m30852c(opNode.leftChild, stringBuffer);
            stringBuffer.append(opNode.getSymbol());
            m30852c(opNode.rightChild, stringBuffer);
            stringBuffer.append(MotionUtils.f31762d);
            return;
        }
        if (!(expression instanceof TermNode)) {
            if (expression instanceof ValNode) {
                stringBuffer.append(((ValNode) expression).val);
                return;
            }
            return;
        }
        TermNode termNode = (TermNode) expression;
        if (termNode.getNegate()) {
            stringBuffer.append(MotionUtils.f31761c);
            stringBuffer.append("-");
        }
        stringBuffer.append(termNode.getName());
        if (termNode instanceof FuncNode) {
            FuncNode funcNode = (FuncNode) termNode;
            stringBuffer.append(MotionUtils.f31761c);
            if (funcNode.numChildren() > 0) {
                m30852c(funcNode.child(0), stringBuffer);
            }
            for (int i = 1; i < funcNode.numChildren(); i++) {
                stringBuffer.append(", ");
                m30852c(funcNode.child(i), stringBuffer);
            }
            stringBuffer.append(MotionUtils.f31762d);
        }
        if (termNode.getNegate()) {
            stringBuffer.append(MotionUtils.f31762d);
        }
    }

    /* renamed from: b */
    public final String[] m30853b(boolean z) {
        Bag bag = new Bag();
        m30851a(this, bag, z);
        int size = bag.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = (String) bag.get(i);
        }
        return strArr;
    }

    public void checkBeforeAccept(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException("expression cannot be null");
        }
        if (expression.parent != null) {
            throw new IllegalArgumentException("expression must be removed parent");
        }
        if (isDescendent(expression)) {
            throw new IllegalArgumentException("cyclic reference");
        }
    }

    public abstract double eval(VarMap varMap, FuncMap funcMap);

    public String[] getFunctionNames() {
        return m30853b(false);
    }

    public Expression getParent() {
        return this.parent;
    }

    public String[] getVariableNames() {
        return m30853b(true);
    }

    public boolean isDescendent(Expression expression) {
        while (this != null) {
            if (this == expression) {
                return true;
            }
            this = this.parent;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        m30852c(this, stringBuffer);
        return stringBuffer.toString();
    }
}
