package net.p110sf.saxon.expr.oper;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Predicate;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;

/* loaded from: classes11.dex */
public class OperandArray implements Iterable<Operand> {

    /* renamed from: e */
    public final Operand[] f99905e;

    public OperandArray(Expression expression, Expression[] expressionArr) {
        this.f99905e = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            this.f99905e[i] = new Operand(expression, expressionArr[i], OperandRole.NAVIGATE);
        }
    }

    public static <T> boolean every(T[] tArr, Predicate<T> predicate) {
        for (T t : tArr) {
            if (!predicate.test(t)) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean some(T[] tArr, Predicate<T> predicate) {
        for (T t : tArr) {
            if (predicate.test(t)) {
                return true;
            }
        }
        return false;
    }

    public Operand[] copy() {
        Operand[] operandArr = this.f99905e;
        return (Operand[]) Arrays.copyOf(operandArr, operandArr.length);
    }

    public int getNumberOfOperands() {
        return this.f99905e.length;
    }

    public Operand getOperand(int i) {
        try {
            return this.f99905e[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException();
        }
    }

    public Expression getOperandExpression(int i) {
        try {
            return this.f99905e[i].getChildExpression();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public OperandRole[] getRoles() {
        int length = this.f99905e.length;
        OperandRole[] operandRoleArr = new OperandRole[length];
        for (int i = 0; i < length; i++) {
            operandRoleArr[i] = this.f99905e[i].getOperandRole();
        }
        return operandRoleArr;
    }

    @Override // java.lang.Iterable
    public Iterator<Operand> iterator() {
        return Arrays.asList(this.f99905e).iterator();
    }

    public Iterable<Expression> operandExpressions() {
        ArrayList arrayList = new ArrayList(this.f99905e.length);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getChildExpression());
        }
        return arrayList;
    }

    public Iterable<Operand> operands() {
        return Arrays.asList(this.f99905e);
    }

    public void setOperand(int i, Expression expression) {
        try {
            if (this.f99905e[i].getChildExpression() != expression) {
                this.f99905e[i].setChildExpression(expression);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException();
        }
    }

    public OperandArray(Expression expression, Expression[] expressionArr, OperandRole[] operandRoleArr) {
        this.f99905e = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            this.f99905e[i] = new Operand(expression, expressionArr[i], operandRoleArr[i]);
        }
    }

    public OperandArray(Expression expression, Expression[] expressionArr, OperandRole operandRole) {
        this.f99905e = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            this.f99905e[i] = new Operand(expression, expressionArr[i], operandRole);
        }
    }

    public OperandArray(Operand[] operandArr) {
        this.f99905e = operandArr;
    }
}
