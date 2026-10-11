package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.ss.formula.ptg.AbstractFunctionPtg;
import org.apache.poi.ss.formula.ptg.AttrPtg;
import org.apache.poi.ss.formula.ptg.ControlPtg;
import org.apache.poi.ss.formula.ptg.FuncVarPtg;
import org.apache.poi.ss.formula.ptg.IntersectionPtg;
import org.apache.poi.ss.formula.ptg.MemAreaPtg;
import org.apache.poi.ss.formula.ptg.MemFuncPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.RangePtg;
import org.apache.poi.ss.formula.ptg.UnionPtg;
import org.apache.poi.ss.formula.ptg.ValueOperatorPtg;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class OperandClassTransformer {
    private final FormulaType _formulaType;

    /* renamed from: org.apache.poi.ss.formula.OperandClassTransformer$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C196831 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$formula$FormulaType;

        static {
            int[] iArr = new int[FormulaType.values().length];
            $SwitchMap$org$apache$poi$ss$formula$FormulaType = iArr;
            try {
                iArr[FormulaType.CELL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaType[FormulaType.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaType[FormulaType.NAMEDRANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaType[FormulaType.DATAVALIDATION_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public OperandClassTransformer(FormulaType formulaType) {
        this._formulaType = formulaType;
    }

    private static boolean isSimpleValueFunction(Ptg ptg) {
        if (!(ptg instanceof AbstractFunctionPtg)) {
            return false;
        }
        AbstractFunctionPtg abstractFunctionPtg = (AbstractFunctionPtg) ptg;
        if (abstractFunctionPtg.getDefaultOperandClass() != 32) {
            return false;
        }
        for (int numberOfOperands = abstractFunctionPtg.getNumberOfOperands() - 1; numberOfOperands >= 0; numberOfOperands--) {
            if (abstractFunctionPtg.getParameterClass(numberOfOperands) != 32) {
                return false;
            }
        }
        return true;
    }

    private static boolean isSingleArgSum(Ptg ptg) {
        if (ptg instanceof AttrPtg) {
            return ((AttrPtg) ptg).isSum();
        }
        return false;
    }

    private void setSimpleValueFuncClass(AbstractFunctionPtg abstractFunctionPtg, byte b, boolean z) {
        if (z || b == 64) {
            abstractFunctionPtg.setClass((byte) 64);
        } else {
            abstractFunctionPtg.setClass((byte) 32);
        }
    }

    private byte transformClass(byte b, byte b2, boolean z) {
        if (b2 == 0) {
            if (z) {
                return (byte) 0;
            }
            return b;
        }
        if (b2 != 32) {
            if (b2 != 64) {
                throw new IllegalStateException("Unexpected operand class (" + ((int) b2) + MotionUtils.f31762d);
            }
        } else if (!z) {
            return (byte) 32;
        }
        return (byte) 64;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r0 == 32) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00b8 A[LOOP:0: B:9:0x00b5->B:11:0x00b8, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void transformFunctionNode(org.apache.poi.ss.formula.ptg.AbstractFunctionPtg r8, org.apache.poi.ss.formula.ParseNode[] r9, byte r10, boolean r11) {
        /*
            r7 = this;
            byte r0 = r8.getDefaultOperandClass()
            r1 = 1
            java.lang.String r2 = ")"
            java.lang.String r3 = "Unexpected operand class ("
            r4 = 32
            r5 = 64
            r6 = 0
            if (r11 == 0) goto L41
            if (r0 == 0) goto L37
            if (r0 == r4) goto L32
            if (r0 != r5) goto L1a
            r8.setClass(r5)
            goto L73
        L1a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r3)
            r8.append(r0)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L32:
            r8.setClass(r5)
            goto Lb5
        L37:
            if (r10 != 0) goto L3d
            r8.setClass(r6)
            goto L73
        L3d:
            r8.setClass(r5)
            goto L73
        L41:
            if (r0 != r10) goto L47
            r8.setClass(r0)
            goto L73
        L47:
            if (r10 == 0) goto L91
            if (r10 == r4) goto L8d
            if (r10 != r5) goto L75
            if (r0 == 0) goto L6d
            if (r0 != r4) goto L55
            r8.setClass(r5)
            goto L70
        L55:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r3)
            r8.append(r0)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L6d:
            r8.setClass(r6)
        L70:
            if (r0 != r4) goto L73
            goto Lb5
        L73:
            r1 = r6
            goto Lb5
        L75:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r3)
            r8.append(r10)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L8d:
            r8.setClass(r4)
            goto L73
        L91:
            if (r0 == r4) goto Lb1
            if (r0 != r5) goto L99
            r8.setClass(r5)
            goto L73
        L99:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r3)
            r8.append(r0)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        Lb1:
            r8.setClass(r4)
            goto L73
        Lb5:
            int r10 = r9.length
            if (r6 >= r10) goto Lc4
            r10 = r9[r6]
            byte r11 = r8.getParameterClass(r6)
            r7.transformNode(r10, r11, r1)
            int r6 = r6 + 1
            goto Lb5
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.OperandClassTransformer.transformFunctionNode(org.apache.poi.ss.formula.ptg.AbstractFunctionPtg, org.apache.poi.ss.formula.ParseNode[], byte, boolean):void");
    }

    private void transformNode(ParseNode parseNode, byte b, boolean z) {
        Ptg token = parseNode.getToken();
        ParseNode[] children = parseNode.getChildren();
        int i = 0;
        if (isSimpleValueFunction(token)) {
            boolean z2 = b == 64;
            int length = children.length;
            while (i < length) {
                transformNode(children[i], b, z2);
                i++;
            }
            setSimpleValueFuncClass((AbstractFunctionPtg) token, b, z);
            return;
        }
        if (isSingleArgSum(token)) {
            token = FuncVarPtg.SUM;
        }
        if ((token instanceof ValueOperatorPtg) || (token instanceof ControlPtg) || (token instanceof MemFuncPtg) || (token instanceof MemAreaPtg) || (token instanceof UnionPtg) || (token instanceof IntersectionPtg)) {
            if (b == 0) {
                b = 32;
            }
            int length2 = children.length;
            while (i < length2) {
                transformNode(children[i], b, z);
                i++;
            }
            return;
        }
        if (token instanceof AbstractFunctionPtg) {
            transformFunctionNode((AbstractFunctionPtg) token, children, b, z);
            return;
        }
        if (children.length > 0) {
            if (token != RangePtg.instance) {
                throw new IllegalStateException("Node should not have any children");
            }
        } else {
            if (token.isBaseToken()) {
                return;
            }
            token.setClass(transformClass(token.getPtgClass(), b, z));
        }
    }

    public void transformFormula(ParseNode parseNode) {
        byte b;
        int i = C196831.$SwitchMap$org$apache$poi$ss$formula$FormulaType[this._formulaType.ordinal()];
        if (i == 1) {
            b = 32;
        } else if (i == 2) {
            b = 64;
        } else {
            if (i != 3 && i != 4) {
                throw new IllegalStateException("Incomplete code - formula type (" + this._formulaType + ") not supported yet");
            }
            b = 0;
        }
        transformNode(parseNode, b, false);
    }
}
