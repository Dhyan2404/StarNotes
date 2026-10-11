package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import java.util.Stack;
import org.apache.poi.ss.formula.ptg.ArrayInitialPtg;
import org.apache.poi.ss.formula.ptg.AttrPtg;
import org.apache.poi.ss.formula.ptg.MemAreaPtg;
import org.apache.poi.ss.formula.ptg.MemErrPtg;
import org.apache.poi.ss.formula.ptg.MemFuncPtg;
import org.apache.poi.ss.formula.ptg.OperationPtg;
import org.apache.poi.ss.formula.ptg.ParenthesisPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public class FormulaRenderer {
    private static String[] getOperands(Stack<String> stack, int i) {
        String[] strArr = new String[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (stack.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Too few arguments supplied to operation. Expected (");
                sb.append(i);
                sb.append(") operands but got (");
                sb.append((i - i2) - 1);
                sb.append(MotionUtils.f31762d);
                throw new IllegalStateException(sb.toString());
            }
            strArr[i2] = stack.pop();
        }
        return strArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String toFormulaString(FormulaRenderingWorkbook formulaRenderingWorkbook, Ptg[] ptgArr) {
        if (ptgArr == 0 || ptgArr.length == 0) {
            throw new IllegalArgumentException("ptgs must not be null");
        }
        Stack stack = new Stack();
        for (ArrayInitialPtg arrayInitialPtg : ptgArr) {
            if (!(arrayInitialPtg instanceof MemAreaPtg) && !(arrayInitialPtg instanceof MemFuncPtg) && !(arrayInitialPtg instanceof MemErrPtg)) {
                if (arrayInitialPtg instanceof ParenthesisPtg) {
                    stack.push(MotionUtils.f31761c + ((String) stack.pop()) + MotionUtils.f31762d);
                } else if (arrayInitialPtg instanceof AttrPtg) {
                    AttrPtg attrPtg = (AttrPtg) arrayInitialPtg;
                    if (!attrPtg.isOptimizedIf() && !attrPtg.isOptimizedChoose() && !attrPtg.isSkip() && !attrPtg.isSpace() && !attrPtg.isSemiVolatile()) {
                        if (!attrPtg.isSum()) {
                            throw new IllegalStateException("Unexpected tAttr: " + attrPtg);
                        }
                        stack.push(attrPtg.toFormulaString(getOperands(stack, attrPtg.getNumberOfOperands())));
                    }
                } else if (arrayInitialPtg instanceof WorkbookDependentFormula) {
                    stack.push(((WorkbookDependentFormula) arrayInitialPtg).toFormulaString(formulaRenderingWorkbook));
                } else if (arrayInitialPtg instanceof OperationPtg) {
                    OperationPtg operationPtg = (OperationPtg) arrayInitialPtg;
                    stack.push(operationPtg.toFormulaString(getOperands(stack, operationPtg.getNumberOfOperands())));
                } else {
                    stack.push(arrayInitialPtg.toFormulaString());
                }
            }
        }
        if (stack.isEmpty()) {
            throw new IllegalStateException("Stack underflow");
        }
        String str = (String) stack.pop();
        if (stack.isEmpty()) {
            return str;
        }
        throw new IllegalStateException("too much stuff left on the stack");
    }
}
