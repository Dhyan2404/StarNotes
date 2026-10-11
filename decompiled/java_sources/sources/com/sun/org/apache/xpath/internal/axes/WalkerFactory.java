package com.sun.org.apache.xpath.internal.axes;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xpath.internal.compiler.Compiler;
import com.sun.org.apache.xpath.internal.compiler.OpMap;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.patterns.ContextMatchStepPattern;
import com.sun.org.apache.xpath.internal.patterns.StepPattern;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class WalkerFactory {
    public static final int BITMASK_TRAVERSES_OUTSIDE_SUBTREE = 234381312;
    public static final int BITS_COUNT = 255;
    public static final int BITS_RESERVED = 3840;
    public static final int BIT_ANCESTOR = 8192;
    public static final int BIT_ANCESTOR_OR_SELF = 16384;
    public static final int BIT_ANY_DESCENDANT_FROM_ROOT = 536870912;
    public static final int BIT_ATTRIBUTE = 32768;
    public static final int BIT_BACKWARDS_SELF = 268435456;
    public static final int BIT_CHILD = 65536;
    public static final int BIT_DESCENDANT = 131072;
    public static final int BIT_DESCENDANT_OR_SELF = 262144;
    public static final int BIT_FILTER = 67108864;
    public static final int BIT_FOLLOWING = 524288;
    public static final int BIT_FOLLOWING_SIBLING = 1048576;
    public static final int BIT_MATCH_PATTERN = Integer.MIN_VALUE;
    public static final int BIT_NAMESPACE = 2097152;
    public static final int BIT_NODETEST_ANY = 1073741824;
    public static final int BIT_PARENT = 4194304;
    public static final int BIT_PRECEDING = 8388608;
    public static final int BIT_PRECEDING_SIBLING = 16777216;
    public static final int BIT_PREDICATE = 4096;
    public static final int BIT_ROOT = 134217728;
    public static final int BIT_SELF = 33554432;
    static final boolean DEBUG_ITERATOR_CREATION = false;
    static final boolean DEBUG_PATTERN_CREATION = false;
    static final boolean DEBUG_WALKER_CREATION = false;

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0013. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0018. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int analyze(com.sun.org.apache.xpath.internal.compiler.Compiler r3, int r4, int r5) throws javax.xml.transform.TransformerException {
        /*
            r5 = 0
            r0 = r5
        L2:
            int r1 = r3.getOp(r4)
            r2 = -1
            if (r2 == r1) goto L82
            int r5 = r5 + 1
            boolean r2 = analyzePredicate(r3, r4, r1)
            if (r2 == 0) goto L13
            r0 = r0 | 4096(0x1000, float:5.74E-42)
        L13:
            switch(r1) {
                case 22: goto L6c;
                case 23: goto L6c;
                case 24: goto L6c;
                case 25: goto L6c;
                default: goto L16;
            }
        L16:
            r2 = 134217728(0x8000000, float:3.85186E-34)
            switch(r1) {
                case 37: goto L69;
                case 38: goto L66;
                case 39: goto L62;
                case 40: goto L5f;
                case 41: goto L5c;
                case 42: goto L51;
                case 43: goto L4e;
                case 44: goto L4b;
                case 45: goto L48;
                case 46: goto L45;
                case 47: goto L42;
                case 48: goto L3f;
                case 49: goto L3c;
                case 50: goto L3a;
                case 51: goto L36;
                case 52: goto L32;
                case 53: goto L2f;
                default: goto L1b;
            }
        L1b:
            java.lang.RuntimeException r3 = new java.lang.RuntimeException
            java.lang.String r4 = java.lang.Integer.toString(r1)
            java.lang.Object[] r4 = new java.lang.Object[]{r4}
            java.lang.String r5 = "ER_NULL_ERROR_HANDLER"
            java.lang.String r4 = com.sun.org.apache.xpath.internal.res.XPATHMessages.createXPATHMessage(r5, r4)
            r3.<init>(r4)
            throw r3
        L2f:
            r1 = -2143289344(0xffffffff80400000, float:-5.877472E-39)
            goto L6e
        L32:
            r1 = -2147475456(0xffffffff80002000, float:-1.14794E-41)
            goto L6e
        L36:
            r1 = -2147450880(0xffffffff80008000, float:-4.5918E-41)
            goto L6e
        L3a:
            r0 = r0 | r2
            goto L6f
        L3c:
            r1 = 2097152(0x200000, float:2.938736E-39)
            goto L6e
        L3f:
            r1 = 33554432(0x2000000, float:9.403955E-38)
            goto L6e
        L42:
            r1 = 16777216(0x1000000, float:2.3509887E-38)
            goto L6e
        L45:
            r1 = 8388608(0x800000, float:1.17549435E-38)
            goto L6e
        L48:
            r1 = 4194304(0x400000, float:5.877472E-39)
            goto L6e
        L4b:
            r1 = 1048576(0x100000, float:1.469368E-39)
            goto L6e
        L4e:
            r1 = 524288(0x80000, float:7.34684E-40)
            goto L6e
        L51:
            r1 = 2
            if (r1 != r5) goto L59
            if (r2 != r0) goto L59
            r1 = 536870912(0x20000000, float:1.0842022E-19)
            r0 = r0 | r1
        L59:
            r1 = 262144(0x40000, float:3.67342E-40)
            goto L6e
        L5c:
            r1 = 131072(0x20000, float:1.83671E-40)
            goto L6e
        L5f:
            r1 = 65536(0x10000, float:9.18355E-41)
            goto L6e
        L62:
            r1 = 32768(0x8000, float:4.5918E-41)
            goto L6e
        L66:
            r0 = r0 | 16384(0x4000, float:2.2959E-41)
            goto L6f
        L69:
            r0 = r0 | 8192(0x2000, float:1.14794E-41)
            goto L6f
        L6c:
            r1 = 67108864(0x4000000, float:1.5046328E-36)
        L6e:
            r0 = r0 | r1
        L6f:
            int r1 = r4 + 3
            int r1 = r3.getOp(r1)
            r2 = 1033(0x409, float:1.448E-42)
            if (r2 != r1) goto L7c
            r1 = 1073741824(0x40000000, float:2.0)
            r0 = r0 | r1
        L7c:
            int r4 = r3.getNextStepPos(r4)
            if (r4 >= 0) goto L2
        L82:
            r3 = r5 & 255(0xff, float:3.57E-43)
            r3 = r3 | r0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.axes.WalkerFactory.analyze(com.sun.org.apache.xpath.internal.compiler.Compiler, int, int):int");
    }

    public static boolean analyzePredicate(Compiler compiler, int i, int i2) throws TransformerException {
        switch (i2) {
            case 22:
            case 23:
            case 24:
            case 25:
                compiler.getArgLength(i);
                break;
            default:
                compiler.getArgLengthOfStep(i);
                break;
        }
        return compiler.countPredicates(compiler.getFirstPredicateOpPos(i)) > 0;
    }

    public static boolean canCrissCross(int i) {
        if (walksSelfOnly(i)) {
            return false;
        }
        return ((walksDownOnly(i) && !canSkipSubtrees(i)) || walksChildrenAndExtraAndSelfOnly(i) || walksDescendantsAndExtraAndSelfOnly(i) || walksUpOnly(i) || walksExtraNodesOnly(i) || !walksSubtree(i) || (!walksSideways(i) && !walksUp(i) && !canSkipSubtrees(i))) ? false : true;
    }

    public static boolean canSkipSubtrees(int i) {
        return walksSideways(i) | isSet(i, 65536);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.sun.org.apache.xpath.internal.patterns.StepPattern createDefaultStepPattern(com.sun.org.apache.xpath.internal.compiler.Compiler r9, int r10, com.sun.org.apache.xpath.internal.axes.MatchPatternIterator r11, int r12, com.sun.org.apache.xpath.internal.patterns.StepPattern r13, com.sun.org.apache.xpath.internal.patterns.StepPattern r14) throws javax.xml.transform.TransformerException {
        /*
            int r11 = r9.getOp(r10)
            com.sun.org.apache.xpath.internal.compiler.OpMap.getFirstChildPos(r10)
            r9.getWhatToShow(r10)
            switch(r11) {
                case 22: goto L63;
                case 23: goto L63;
                case 24: goto L63;
                case 25: goto L63;
                default: goto Ld;
            }
        Ld:
            r12 = 7
            r13 = 12
            r14 = 6
            r0 = 11
            r1 = 3
            r2 = 1
            r3 = 5
            r4 = 0
            r5 = 4
            r6 = 10
            r7 = 0
            switch(r11) {
                case 37: goto L5f;
                case 38: goto L5c;
                case 39: goto L58;
                case 40: goto L56;
                case 41: goto L79;
                case 42: goto L53;
                case 43: goto L50;
                case 44: goto L4d;
                case 45: goto L4a;
                case 46: goto L47;
                case 47: goto L44;
                case 48: goto L3f;
                case 49: goto L3c;
                case 50: goto L32;
                default: goto L1e;
            }
        L1e:
            java.lang.RuntimeException r9 = new java.lang.RuntimeException
            java.lang.String r10 = java.lang.Integer.toString(r11)
            java.lang.Object[] r10 = new java.lang.Object[]{r10}
            java.lang.String r11 = "ER_NULL_ERROR_HANDLER"
            java.lang.String r10 = com.sun.org.apache.xpath.internal.res.XPATHMessages.createXPATHMessage(r11, r10)
            r9.<init>(r10)
            throw r9
        L32:
            com.sun.org.apache.xpath.internal.patterns.StepPattern r7 = new com.sun.org.apache.xpath.internal.patterns.StepPattern
            r11 = 1280(0x500, float:1.794E-42)
            r12 = 19
            r7.<init>(r11, r12, r12)
            goto L41
        L3c:
            r12 = 9
            goto L59
        L3f:
            r12 = 13
        L41:
            r4 = r12
            r5 = r4
            goto L79
        L44:
            r4 = r12
            r5 = r13
            goto L79
        L47:
            r4 = r14
            r5 = r0
            goto L79
        L4a:
            r4 = r1
            r5 = r6
            goto L79
        L4d:
            r5 = r12
            r4 = r13
            goto L79
        L50:
            r5 = r14
            r4 = r0
            goto L79
        L53:
            r4 = r2
            r5 = r3
            goto L79
        L56:
            r5 = r1
            goto L5a
        L58:
            r12 = 2
        L59:
            r5 = r12
        L5a:
            r4 = r6
            goto L79
        L5c:
            r5 = r2
            r4 = r3
            goto L79
        L5f:
            r8 = r5
            r5 = r4
            r4 = r8
            goto L79
        L63:
            switch(r11) {
                case 22: goto L6d;
                case 23: goto L6d;
                case 24: goto L6d;
                case 25: goto L6d;
                default: goto L66;
            }
        L66:
            int r11 = r10 + 2
            com.sun.org.apache.xpath.internal.Expression r11 = r9.compile(r11)
            goto L71
        L6d:
            com.sun.org.apache.xpath.internal.Expression r11 = r9.compile(r10)
        L71:
            com.sun.org.apache.xpath.internal.patterns.FunctionPattern r7 = new com.sun.org.apache.xpath.internal.patterns.FunctionPattern
            r12 = 20
            r7.<init>(r11, r12, r12)
            goto L41
        L79:
            if (r7 != 0) goto L8d
            int r1 = r9.getWhatToShow(r10)
            com.sun.org.apache.xpath.internal.patterns.StepPattern r7 = new com.sun.org.apache.xpath.internal.patterns.StepPattern
            java.lang.String r2 = r9.getStepNS(r10)
            java.lang.String r3 = r9.getStepLocalName(r10)
            r0 = r7
            r0.<init>(r1, r2, r3, r4, r5)
        L8d:
            int r10 = r9.getFirstPredicateOpPos(r10)
            com.sun.org.apache.xpath.internal.Expression[] r9 = r9.getCompiledPredicates(r10)
            r7.setPredicates(r9)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.axes.WalkerFactory.createDefaultStepPattern(com.sun.org.apache.xpath.internal.compiler.Compiler, int, com.sun.org.apache.xpath.internal.axes.MatchPatternIterator, int, com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.StepPattern):com.sun.org.apache.xpath.internal.patterns.StepPattern");
    }

    private static AxesWalker createDefaultWalker(Compiler compiler, int i, WalkingIterator walkingIterator, int i2) {
        AxesWalker filterExprWalker;
        int op = compiler.getOp(i);
        boolean z = true;
        switch (op) {
            case 22:
            case 23:
            case 24:
            case 25:
                filterExprWalker = new FilterExprWalker(walkingIterator);
                break;
            default:
                switch (op) {
                    case 37:
                        filterExprWalker = new ReverseAxesWalker(walkingIterator, 0);
                        break;
                    case 38:
                        filterExprWalker = new ReverseAxesWalker(walkingIterator, 1);
                        break;
                    case 39:
                        filterExprWalker = new AxesWalker(walkingIterator, 2);
                        break;
                    case 40:
                        filterExprWalker = new AxesWalker(walkingIterator, 3);
                        break;
                    case 41:
                        filterExprWalker = new AxesWalker(walkingIterator, 4);
                        break;
                    case 42:
                        filterExprWalker = new AxesWalker(walkingIterator, 5);
                        break;
                    case 43:
                        filterExprWalker = new AxesWalker(walkingIterator, 6);
                        break;
                    case 44:
                        filterExprWalker = new AxesWalker(walkingIterator, 7);
                        break;
                    case 45:
                        filterExprWalker = new ReverseAxesWalker(walkingIterator, 10);
                        break;
                    case 46:
                        filterExprWalker = new ReverseAxesWalker(walkingIterator, 11);
                        break;
                    case 47:
                        filterExprWalker = new ReverseAxesWalker(walkingIterator, 12);
                        break;
                    case 48:
                        filterExprWalker = new AxesWalker(walkingIterator, 13);
                        break;
                    case 49:
                        filterExprWalker = new AxesWalker(walkingIterator, 9);
                        break;
                    case 50:
                        filterExprWalker = new AxesWalker(walkingIterator, 19);
                        break;
                    default:
                        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NULL_ERROR_HANDLER", new Object[]{Integer.toString(op)}));
                }
                z = false;
                break;
        }
        if (z) {
            filterExprWalker.initNodeTest(-1);
        } else {
            int whatToShow = compiler.getWhatToShow(i);
            if ((whatToShow & 4163) == 0 || whatToShow == -1) {
                filterExprWalker.initNodeTest(whatToShow);
            } else {
                filterExprWalker.initNodeTest(whatToShow, compiler.getStepNS(i), compiler.getStepLocalName(i));
            }
        }
        return filterExprWalker;
    }

    public static void diagnoseIterator(String str, int i, Compiler compiler) {
        System.out.println(compiler.toString() + ", " + str + ", " + Integer.toBinaryString(i) + ", " + getAnalysisString(i));
    }

    public static boolean functionProximateOrContainsProximate(Compiler compiler, int i) {
        int op = (compiler.getOp(i + 1) + i) - 1;
        int firstChildPos = OpMap.getFirstChildPos(i);
        int op2 = compiler.getOp(firstChildPos);
        if (op2 == 1 || op2 == 2) {
            return true;
        }
        int i2 = firstChildPos + 1;
        while (i2 < op) {
            int i3 = i2 + 2;
            compiler.getOp(i3);
            if (isProximateInnerExpr(compiler, i3)) {
                return true;
            }
            i2 = compiler.getNextOpPos(i2);
        }
        return false;
    }

    public static int getAnalysisBitFromAxes(int i) {
        switch (i) {
            case 0:
                return 8192;
            case 1:
                return 16384;
            case 2:
                return 32768;
            case 3:
                return 65536;
            case 4:
                return 131072;
            case 5:
                return 262144;
            case 6:
                return 524288;
            case 7:
                return 1048576;
            case 8:
            case 9:
                return 2097152;
            case 10:
                return 4194304;
            case 11:
                return 8388608;
            case 12:
                return 16777216;
            case 13:
                return 33554432;
            case 14:
                return 262144;
            case 15:
            default:
                return 67108864;
            case 16:
            case 17:
            case 18:
                return 536870912;
            case 19:
                return 134217728;
        }
    }

    public static String getAnalysisString(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("count: " + getStepCount(i) + " ");
        if ((1073741824 & i) != 0) {
            stringBuffer.append("NTANY|");
        }
        if ((i & 4096) != 0) {
            stringBuffer.append("PRED|");
        }
        if ((i & 8192) != 0) {
            stringBuffer.append("ANC|");
        }
        if ((i & 16384) != 0) {
            stringBuffer.append("ANCOS|");
        }
        if ((32768 & i) != 0) {
            stringBuffer.append("ATTR|");
        }
        if ((65536 & i) != 0) {
            stringBuffer.append("CH|");
        }
        if ((131072 & i) != 0) {
            stringBuffer.append("DESC|");
        }
        if ((262144 & i) != 0) {
            stringBuffer.append("DESCOS|");
        }
        if ((524288 & i) != 0) {
            stringBuffer.append("FOL|");
        }
        if ((1048576 & i) != 0) {
            stringBuffer.append("FOLS|");
        }
        if ((2097152 & i) != 0) {
            stringBuffer.append("NS|");
        }
        if ((4194304 & i) != 0) {
            stringBuffer.append("P|");
        }
        if ((8388608 & i) != 0) {
            stringBuffer.append("PREC|");
        }
        if ((16777216 & i) != 0) {
            stringBuffer.append("PRECS|");
        }
        if ((33554432 & i) != 0) {
            stringBuffer.append(".|");
        }
        if ((67108864 & i) != 0) {
            stringBuffer.append("FLT|");
        }
        if ((i & 134217728) != 0) {
            stringBuffer.append("R|");
        }
        return stringBuffer.toString();
    }

    public static int getAxisFromStep(Compiler compiler, int i) throws TransformerException {
        int op = compiler.getOp(i);
        switch (op) {
            case 22:
            case 23:
            case 24:
            case 25:
                return 20;
            default:
                switch (op) {
                    case 37:
                        return 0;
                    case 38:
                        return 1;
                    case 39:
                        return 2;
                    case 40:
                        return 3;
                    case 41:
                        return 4;
                    case 42:
                        return 5;
                    case 43:
                        return 6;
                    case 44:
                        return 7;
                    case 45:
                        return 10;
                    case 46:
                        return 11;
                    case 47:
                        return 12;
                    case 48:
                        return 13;
                    case 49:
                        return 9;
                    case 50:
                        return 19;
                    default:
                        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_NULL_ERROR_HANDLER", new Object[]{Integer.toString(op)}));
                }
        }
    }

    public static int getStepCount(int i) {
        return i & 255;
    }

    public static boolean hasPredicate(int i) {
        return (i & 4096) != 0;
    }

    public static boolean isAbsolute(int i) {
        return isSet(i, 201326592);
    }

    public static boolean isDownwardAxisOfMany(int i) {
        return 5 == i || 4 == i || 6 == i || 11 == i;
    }

    public static boolean isNaturalDocOrder(int i) {
        return (canCrissCross(i) || isSet(i, 2097152) || walksFilteredList(i) || !walksInDocOrder(i)) ? false : true;
    }

    public static boolean isOneStep(int i) {
        return (i & 255) == 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0051, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x006c, code lost:
    
        return false;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0023. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0026. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isOptimizableForDescendantIterator(com.sun.org.apache.xpath.internal.compiler.Compiler r10, int r11, int r12) throws javax.xml.transform.TransformerException {
        /*
            r12 = 0
            r0 = 1033(0x409, float:1.448E-42)
            r2 = r12
            r3 = r2
            r4 = r3
            r5 = r4
            r1 = r0
        L8:
            int r6 = r10.getOp(r11)
            r7 = -1
            r8 = 1
            if (r7 == r6) goto L6d
            if (r1 == r0) goto L17
            r9 = 35
            if (r1 == r9) goto L17
            return r12
        L17:
            int r2 = r2 + r8
            r1 = 3
            if (r2 <= r1) goto L1c
            return r12
        L1c:
            boolean r9 = mightBeProximate(r10, r11, r6)
            if (r9 == 0) goto L23
            return r12
        L23:
            switch(r6) {
                case 22: goto L6c;
                case 23: goto L6c;
                case 24: goto L6c;
                case 25: goto L6c;
                default: goto L26;
            }
        L26:
            switch(r6) {
                case 37: goto L6c;
                case 38: goto L6c;
                case 39: goto L6c;
                case 40: goto L4b;
                case 41: goto L46;
                case 42: goto L45;
                case 43: goto L6c;
                case 44: goto L6c;
                case 45: goto L6c;
                case 46: goto L6c;
                case 47: goto L6c;
                case 48: goto L40;
                case 49: goto L6c;
                case 50: goto L3d;
                case 51: goto L6c;
                case 52: goto L6c;
                case 53: goto L6c;
                default: goto L29;
            }
        L29:
            java.lang.RuntimeException r10 = new java.lang.RuntimeException
            java.lang.String r11 = java.lang.Integer.toString(r6)
            java.lang.Object[] r11 = new java.lang.Object[]{r11}
            java.lang.String r12 = "ER_NULL_ERROR_HANDLER"
            java.lang.String r11 = com.sun.org.apache.xpath.internal.res.XPATHMessages.createXPATHMessage(r12, r11)
            r10.<init>(r11)
            throw r10
        L3d:
            if (r8 == r2) goto L52
            return r12
        L40:
            if (r8 == r2) goto L43
            return r12
        L43:
            r5 = r8
            goto L52
        L45:
            r3 = r8
        L46:
            if (r1 != r2) goto L49
            return r12
        L49:
            r4 = r8
            goto L52
        L4b:
            if (r3 != 0) goto L52
            if (r4 == 0) goto L51
            if (r5 != 0) goto L52
        L51:
            return r12
        L52:
            int r1 = r10.getStepTestType(r11)
            int r6 = r10.getNextStepPos(r11)
            if (r6 >= 0) goto L5d
            goto L6d
        L5d:
            int r8 = r10.getOp(r6)
            if (r7 == r8) goto L6a
            int r11 = r10.countPredicates(r11)
            if (r11 <= 0) goto L6a
            return r12
        L6a:
            r11 = r6
            goto L8
        L6c:
            return r12
        L6d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.axes.WalkerFactory.isOptimizableForDescendantIterator(com.sun.org.apache.xpath.internal.compiler.Compiler, int, int):boolean");
    }

    public static boolean isProximateInnerExpr(Compiler compiler, int i) {
        int op = compiler.getOp(i);
        int i2 = i + 2;
        if (op == 21 || op == 22) {
            return false;
        }
        switch (op) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                int firstChildPos = OpMap.getFirstChildPos(op);
                return isProximateInnerExpr(compiler, firstChildPos) || isProximateInnerExpr(compiler, compiler.getNextOpPos(firstChildPos));
            default:
                switch (op) {
                    case 25:
                        return functionProximateOrContainsProximate(compiler, i);
                    case 26:
                        return isProximateInnerExpr(compiler, i2);
                    case 27:
                    case 28:
                        return false;
                    default:
                        return true;
                }
        }
    }

    public static boolean isSet(int i, int i2) {
        return (i & i2) != 0;
    }

    public static boolean isWild(int i) {
        return (i & 1073741824) != 0;
    }

    public static AxesWalker loadOneWalker(WalkingIterator walkingIterator, Compiler compiler, int i) throws TransformerException {
        int op = compiler.getOp(i);
        if (op == -1) {
            return null;
        }
        AxesWalker createDefaultWalker = createDefaultWalker(compiler, op, walkingIterator, 0);
        createDefaultWalker.init(compiler, i, op);
        return createDefaultWalker;
    }

    public static StepPattern loadSteps(MatchPatternIterator matchPatternIterator, Compiler compiler, int i, int i2) throws TransformerException {
        int analyze = analyze(compiler, i, i2);
        int i3 = i;
        StepPattern stepPattern = null;
        StepPattern stepPattern2 = null;
        StepPattern stepPattern3 = null;
        while (-1 != compiler.getOp(i3)) {
            stepPattern = createDefaultStepPattern(compiler, i3, matchPatternIterator, analyze, stepPattern2, stepPattern3);
            if (stepPattern2 == null) {
                stepPattern2 = stepPattern;
            } else {
                stepPattern.setRelativePathPattern(stepPattern3);
            }
            i3 = compiler.getNextStepPos(i3);
            if (i3 < 0) {
                break;
            }
            stepPattern3 = stepPattern;
        }
        StepPattern stepPattern4 = stepPattern;
        StepPattern stepPattern5 = stepPattern4;
        int i4 = 13;
        while (stepPattern4 != null) {
            int axis = stepPattern4.getAxis();
            stepPattern4.setAxis(i4);
            int whatToShow = stepPattern4.getWhatToShow();
            if (whatToShow == 2 || whatToShow == 4096) {
                int i5 = whatToShow == 2 ? 2 : 9;
                if (isDownwardAxisOfMany(i4)) {
                    StepPattern stepPattern6 = new StepPattern(whatToShow, stepPattern4.getNamespace(), stepPattern4.getLocalName(), i5, 0);
                    XNumber staticScore = stepPattern4.getStaticScore();
                    stepPattern4.setNamespace(null);
                    stepPattern4.setLocalName("*");
                    stepPattern6.setPredicates(stepPattern4.getPredicates());
                    stepPattern4.setPredicates(null);
                    stepPattern4.setWhatToShow(1);
                    StepPattern relativePathPattern = stepPattern4.getRelativePathPattern();
                    stepPattern4.setRelativePathPattern(stepPattern6);
                    stepPattern6.setRelativePathPattern(relativePathPattern);
                    stepPattern6.setStaticScore(staticScore);
                    if (11 == stepPattern4.getAxis()) {
                        stepPattern4.setAxis(15);
                    } else if (4 == stepPattern4.getAxis()) {
                        stepPattern4.setAxis(5);
                    }
                    stepPattern4 = stepPattern6;
                } else if (3 == stepPattern4.getAxis()) {
                    stepPattern4.setAxis(2);
                }
            }
            stepPattern5 = stepPattern4;
            stepPattern4 = stepPattern4.getRelativePathPattern();
            i4 = axis;
        }
        if (i4 < 16) {
            ContextMatchStepPattern contextMatchStepPattern = new ContextMatchStepPattern(i4, 13);
            XNumber staticScore2 = stepPattern5.getStaticScore();
            stepPattern5.setRelativePathPattern(contextMatchStepPattern);
            stepPattern5.setStaticScore(staticScore2);
            contextMatchStepPattern.setStaticScore(staticScore2);
        }
        return stepPattern;
    }

    public static AxesWalker loadWalkers(WalkingIterator walkingIterator, Compiler compiler, int i, int i2) throws TransformerException {
        int analyze = analyze(compiler, i, i2);
        AxesWalker axesWalker = null;
        AxesWalker axesWalker2 = null;
        while (true) {
            int op = compiler.getOp(i);
            if (-1 == op) {
                break;
            }
            AxesWalker createDefaultWalker = createDefaultWalker(compiler, i, walkingIterator, analyze);
            createDefaultWalker.init(compiler, i, op);
            createDefaultWalker.exprSetParent(walkingIterator);
            if (axesWalker == null) {
                axesWalker = createDefaultWalker;
            } else {
                axesWalker2.setNextWalker(createDefaultWalker);
                createDefaultWalker.setPrevWalker(axesWalker2);
            }
            i = compiler.getNextStepPos(i);
            if (i < 0) {
                break;
            }
            axesWalker2 = createDefaultWalker;
        }
        return axesWalker;
    }

    public static boolean mightBeProximate(Compiler compiler, int i, int i2) throws TransformerException {
        switch (i2) {
            case 22:
            case 23:
            case 24:
            case 25:
                compiler.getArgLength(i);
                break;
            default:
                compiler.getArgLengthOfStep(i);
                break;
        }
        int firstPredicateOpPos = compiler.getFirstPredicateOpPos(i);
        while (29 == compiler.getOp(firstPredicateOpPos)) {
            int i3 = firstPredicateOpPos + 2;
            int op = compiler.getOp(i3);
            if (op != 25) {
                if (op != 28) {
                    switch (op) {
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                            int firstChildPos = OpMap.getFirstChildPos(i3);
                            int nextOpPos = compiler.getNextOpPos(firstChildPos);
                            if (!isProximateInnerExpr(compiler, firstChildPos) && !isProximateInnerExpr(compiler, nextOpPos)) {
                                break;
                            } else {
                                return true;
                            }
                            break;
                        default:
                            return true;
                    }
                } else {
                    continue;
                }
            } else if (functionProximateOrContainsProximate(compiler, i3)) {
                return true;
            }
            firstPredicateOpPos = compiler.getNextOpPos(firstPredicateOpPos);
        }
        return false;
    }

    public static DTMIterator newDTMIterator(Compiler compiler, int i, boolean z) throws TransformerException {
        int firstChildPos = OpMap.getFirstChildPos(i);
        int analyze = analyze(compiler, firstChildPos, 0);
        boolean isOneStep = isOneStep(analyze);
        LocPathIterator selfIteratorNoPredicate = (isOneStep && walksSelfOnly(analyze) && isWild(analyze) && !hasPredicate(analyze)) ? new SelfIteratorNoPredicate(compiler, i, analyze) : (walksChildrenOnly(analyze) && isOneStep) ? (!isWild(analyze) || hasPredicate(analyze)) ? new ChildTestIterator(compiler, i, analyze) : new ChildIterator(compiler, i, analyze) : (isOneStep && walksAttributes(analyze)) ? new AttributeIterator(compiler, i, analyze) : (!isOneStep || walksFilteredList(analyze)) ? isOptimizableForDescendantIterator(compiler, firstChildPos, 0) ? new DescendantIterator(compiler, i, analyze) : isNaturalDocOrder(compiler, firstChildPos, 0, analyze) ? new WalkingIterator(compiler, i, analyze, true) : new WalkingIteratorSorted(compiler, i, analyze, true) : (walksNamespaces(analyze) || !(walksInDocOrder(analyze) || isSet(analyze, 4194304))) ? new OneStepIterator(compiler, i, analyze) : new OneStepIteratorForward(compiler, i, analyze);
        selfIteratorNoPredicate.setIsTopLevel(z);
        return selfIteratorNoPredicate;
    }

    public static boolean walksAncestors(int i) {
        return isSet(i, 24576);
    }

    public static boolean walksAttributes(int i) {
        return (i & 32768) != 0;
    }

    public static boolean walksChildren(int i) {
        return (i & 65536) != 0;
    }

    public static boolean walksChildrenAndExtraAndSelfOnly(int i) {
        return (!walksChildren(i) || walksDescendants(i) || walksUp(i) || walksSideways(i) || (isAbsolute(i) && !isSet(i, 134217728))) ? false : true;
    }

    public static boolean walksChildrenOnly(int i) {
        return (!walksChildren(i) || isSet(i, 33554432) || walksExtraNodes(i) || walksDescendants(i) || walksUp(i) || walksSideways(i) || (isAbsolute(i) && !isSet(i, 134217728))) ? false : true;
    }

    public static boolean walksDescendants(int i) {
        return isSet(i, ArchiveFormatCode.ARCHIVE_FORMAT_EMPTY);
    }

    public static boolean walksDescendantsAndExtraAndSelfOnly(int i) {
        return (walksChildren(i) || !walksDescendants(i) || walksUp(i) || walksSideways(i) || (isAbsolute(i) && !isSet(i, 134217728))) ? false : true;
    }

    public static boolean walksDownExtraOnly(int i) {
        return (!walksSubtree(i) || !walksExtraNodes(i) || walksUp(i) || walksSideways(i) || isAbsolute(i)) ? false : true;
    }

    public static boolean walksDownOnly(int i) {
        return (!walksSubtree(i) || walksUp(i) || walksSideways(i) || isAbsolute(i)) ? false : true;
    }

    public static boolean walksExtraNodes(int i) {
        return isSet(i, 2129920);
    }

    public static boolean walksExtraNodesOnly(int i) {
        return (!walksExtraNodes(i) || isSet(i, 33554432) || walksSubtree(i) || walksUp(i) || walksSideways(i) || isAbsolute(i)) ? false : true;
    }

    public static boolean walksFilteredList(int i) {
        return isSet(i, 67108864);
    }

    public static boolean walksFollowingOnlyMaybeAbsolute(int i) {
        return (!isSet(i, 35127296) || walksSubtree(i) || walksUp(i) || walksSideways(i)) ? false : true;
    }

    public static boolean walksInDocOrder(int i) {
        return (walksSubtreeOnlyMaybeAbsolute(i) || walksExtraNodesOnly(i) || walksFollowingOnlyMaybeAbsolute(i)) && !isSet(i, 67108864);
    }

    public static boolean walksNamespaces(int i) {
        return (i & 2097152) != 0;
    }

    public static boolean walksSelfOnly(int i) {
        return (!isSet(i, 33554432) || walksSubtree(i) || walksUp(i) || walksSideways(i) || isAbsolute(i)) ? false : true;
    }

    public static boolean walksSideways(int i) {
        return isSet(i, 26738688);
    }

    public static boolean walksSubtree(int i) {
        return isSet(i, ArchiveFormatCode.ARCHIVE_FORMAT_AR);
    }

    public static boolean walksSubtreeOnly(int i) {
        return walksSubtreeOnlyMaybeAbsolute(i) && !isAbsolute(i);
    }

    public static boolean walksSubtreeOnlyFromRootOrContext(int i) {
        return (!walksSubtree(i) || walksExtraNodes(i) || walksUp(i) || walksSideways(i) || isSet(i, 67108864)) ? false : true;
    }

    public static boolean walksSubtreeOnlyMaybeAbsolute(int i) {
        return (!walksSubtree(i) || walksExtraNodes(i) || walksUp(i) || walksSideways(i)) ? false : true;
    }

    public static boolean walksUp(int i) {
        return isSet(i, 4218880);
    }

    public static boolean walksUpOnly(int i) {
        return (walksSubtree(i) || !walksUp(i) || walksSideways(i) || isAbsolute(i)) ? false : true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x002c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x002f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isNaturalDocOrder(com.sun.org.apache.xpath.internal.compiler.Compiler r4, int r5, int r6, int r7) throws javax.xml.transform.TransformerException {
        /*
            boolean r6 = canCrissCross(r7)
            r0 = 0
            if (r6 == 0) goto L8
            return r0
        L8:
            r6 = 2097152(0x200000, float:2.938736E-39)
            boolean r6 = isSet(r7, r6)
            if (r6 == 0) goto L11
            return r0
        L11:
            r6 = 1572864(0x180000, float:2.204052E-39)
            boolean r6 = isSet(r7, r6)
            if (r6 == 0) goto L22
            r6 = 25165824(0x1800000, float:4.7019774E-38)
            boolean r6 = isSet(r7, r6)
            if (r6 == 0) goto L22
            return r0
        L22:
            r6 = r0
            r7 = r6
        L24:
            int r1 = r4.getOp(r5)
            r2 = 1
            r3 = -1
            if (r3 == r1) goto L65
            switch(r1) {
                case 22: goto L57;
                case 23: goto L57;
                case 24: goto L57;
                case 25: goto L57;
                default: goto L2f;
            }
        L2f:
            switch(r1) {
                case 37: goto L57;
                case 38: goto L57;
                case 39: goto L46;
                case 40: goto L5c;
                case 41: goto L57;
                case 42: goto L57;
                case 43: goto L57;
                case 44: goto L57;
                case 45: goto L57;
                case 46: goto L57;
                case 47: goto L57;
                case 48: goto L5c;
                case 49: goto L57;
                case 50: goto L5c;
                case 51: goto L46;
                case 52: goto L57;
                case 53: goto L57;
                default: goto L32;
            }
        L32:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException
            java.lang.String r5 = java.lang.Integer.toString(r1)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r6 = "ER_NULL_ERROR_HANDLER"
            java.lang.String r5 = com.sun.org.apache.xpath.internal.res.XPATHMessages.createXPATHMessage(r6, r5)
            r4.<init>(r5)
            throw r4
        L46:
            if (r7 == 0) goto L49
            return r0
        L49:
            java.lang.String r1 = r4.getStepLocalName(r5)
            java.lang.String r3 = "*"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L5f
            r7 = r2
            goto L5f
        L57:
            if (r6 <= 0) goto L5a
            return r0
        L5a:
            int r6 = r6 + 1
        L5c:
            if (r7 == 0) goto L5f
            return r0
        L5f:
            int r5 = r4.getNextStepPos(r5)
            if (r5 >= 0) goto L24
        L65:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.axes.WalkerFactory.isNaturalDocOrder(com.sun.org.apache.xpath.internal.compiler.Compiler, int, int, int):boolean");
    }
}
