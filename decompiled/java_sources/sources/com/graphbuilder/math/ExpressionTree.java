package com.graphbuilder.math;

import com.google.android.material.motion.MotionUtils;
import com.graphbuilder.struc.Stack;

/* loaded from: classes4.dex */
public class ExpressionTree {
    /* renamed from: a */
    public static Expression m30854a(Stack stack, Stack stack2) {
        Stack stack3 = new Stack();
        Stack stack4 = new Stack();
        while (!stack2.isEmpty()) {
            Object removeTail = stack2.removeTail();
            Object removeTail2 = stack.removeTail();
            Object removeTail3 = stack.removeTail();
            if (removeTail.equals("^")) {
                stack.addToTail(new PowNode((Expression) removeTail2, (Expression) removeTail3));
            } else {
                stack.addToTail(removeTail3);
                stack4.push(removeTail);
                stack3.push(removeTail2);
            }
        }
        stack3.push(stack.pop());
        while (!stack4.isEmpty()) {
            Object removeTail4 = stack4.removeTail();
            Object removeTail5 = stack3.removeTail();
            Object removeTail6 = stack3.removeTail();
            if (removeTail4.equals("*")) {
                stack3.addToTail(new MultNode((Expression) removeTail5, (Expression) removeTail6));
            } else if (removeTail4.equals("/")) {
                stack3.addToTail(new DivNode((Expression) removeTail5, (Expression) removeTail6));
            } else {
                stack3.addToTail(removeTail6);
                stack2.push(removeTail4);
                stack.push(removeTail5);
            }
        }
        stack.push(stack3.pop());
        while (!stack2.isEmpty()) {
            Object removeTail7 = stack2.removeTail();
            Object removeTail8 = stack.removeTail();
            Object removeTail9 = stack.removeTail();
            if (removeTail7.equals("+")) {
                stack.addToTail(new AddNode((Expression) removeTail8, (Expression) removeTail9));
            } else {
                if (!removeTail7.equals("-")) {
                    throw new ExpressionParseException("Unknown operator: " + removeTail7, -1);
                }
                stack.addToTail(new SubNode((Expression) removeTail8, (Expression) removeTail9));
            }
        }
        return (Expression) stack.pop();
    }

    /* renamed from: b */
    public static Expression m30855b(String str, int i) {
        int i2;
        char charAt;
        if (str.trim().length() == 0) {
            return null;
        }
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        int i3 = 0;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        while (i3 < str.length()) {
            char charAt2 = str.charAt(i3);
            if (charAt2 != ' ' && charAt2 != '\t' && charAt2 != '\n') {
                if (z) {
                    if (charAt2 == '(') {
                        if (z3) {
                            throw new ExpressionParseException("Open bracket found after negate.", i3);
                        }
                        stack2.push(MotionUtils.f31761c);
                    } else if (z2 || !(charAt2 == '+' || charAt2 == '-')) {
                        if ((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '.') {
                            int i4 = i3 + 1;
                            while (true) {
                                if (i4 >= str.length()) {
                                    break;
                                }
                                char charAt3 = str.charAt(i4);
                                if ((charAt3 >= '0' && charAt3 <= '9') || charAt3 == '.') {
                                    i4++;
                                } else if (charAt3 == 'e' || charAt3 == 'E') {
                                    i4++;
                                    if (i4 < str.length()) {
                                        char charAt4 = str.charAt(i4);
                                        if (charAt4 != '+' && charAt4 != '-' && (charAt4 < '0' || charAt4 > '9')) {
                                            throw new ExpressionParseException("Expected digit, plus sign or minus sign but found: " + String.valueOf(charAt4), i4 + i);
                                        }
                                        i4++;
                                    }
                                    while (i4 < str.length() && (charAt = str.charAt(i4)) >= '0' && charAt <= '9') {
                                        i4++;
                                    }
                                }
                            }
                            String substring = str.substring(i3, i4);
                            double parseDouble = Double.parseDouble(substring);
                            if (z3) {
                                parseDouble = -parseDouble;
                            }
                            stack.push(new ValNode(parseDouble));
                            i3 = i4 - 1;
                        } else {
                            if (charAt2 == ',' || charAt2 == ')' || charAt2 == '^' || charAt2 == '*' || charAt2 == '/' || charAt2 == '+' || charAt2 == '-') {
                                throw new ExpressionParseException("Unexpected character: " + String.valueOf(charAt2), i3 + i);
                            }
                            int i5 = i3 + 1;
                            while (i5 < str.length() && (charAt2 = str.charAt(i5)) != ',' && charAt2 != ' ' && charAt2 != '\t' && charAt2 != '\n' && charAt2 != '(' && charAt2 != ')' && charAt2 != '^' && charAt2 != '*' && charAt2 != '/' && charAt2 != '+' && charAt2 != '-') {
                                i5++;
                            }
                            if (i5 < str.length()) {
                                int i6 = i5;
                                while (true) {
                                    if ((charAt2 == ' ' || charAt2 == '\t' || charAt2 == '\n') && (i6 = i6 + 1) != str.length()) {
                                        charAt2 = str.charAt(i6);
                                    }
                                }
                                if (charAt2 == '(') {
                                    FuncNode funcNode = new FuncNode(str.substring(i3, i5), z3);
                                    int i7 = i6 + 1;
                                    int i8 = 1;
                                    while (i8 != 0) {
                                        i6++;
                                        if (i6 >= str.length()) {
                                            throw new ExpressionParseException("Missing function close bracket.", i3 + i);
                                        }
                                        char charAt5 = str.charAt(i6);
                                        if (charAt5 == ')') {
                                            i8--;
                                        } else if (charAt5 == '(') {
                                            i8++;
                                        } else if (charAt5 == ',' && i8 == 1) {
                                            Expression m30855b = m30855b(str.substring(i7, i6), i7);
                                            if (m30855b == null) {
                                                throw new ExpressionParseException("Incomplete function.", i7 + i);
                                            }
                                            funcNode.add(m30855b);
                                            i7 = i6 + 1;
                                        }
                                    }
                                    Expression m30855b2 = m30855b(str.substring(i7, i6), i7);
                                    if (m30855b2 != null) {
                                        funcNode.add(m30855b2);
                                    } else if (funcNode.numChildren() > 0) {
                                        throw new ExpressionParseException("Incomplete function.", i7 + i);
                                    }
                                    stack.push(funcNode);
                                } else {
                                    stack.push(new VarNode(str.substring(i3, i5), z3));
                                    i6--;
                                }
                                i3 = i6;
                            } else {
                                stack.push(new VarNode(str.substring(i3, i5), z3));
                                i3 = i5 - 1;
                            }
                        }
                        i2 = 1;
                        z = false;
                        z2 = false;
                        z3 = false;
                    } else {
                        i2 = 1;
                        z2 = true;
                        if (charAt2 == '-') {
                            z3 = true;
                        }
                    }
                } else {
                    if (charAt2 == ')') {
                        Stack stack3 = new Stack();
                        Stack stack4 = new Stack();
                        while (!stack2.isEmpty()) {
                            Object pop = stack2.pop();
                            if (pop.equals(MotionUtils.f31761c)) {
                                stack3.addToTail(stack.pop());
                                stack.push(m30854a(stack3, stack4));
                            } else {
                                stack3.addToTail(stack.pop());
                                stack4.addToTail(pop);
                            }
                        }
                        throw new ExpressionParseException("Missing open bracket.", i3 + i);
                    }
                    if (charAt2 != '^' && charAt2 != '*' && charAt2 != '/' && charAt2 != '+' && charAt2 != '-') {
                        throw new ExpressionParseException("Expected operator or close bracket but found: " + String.valueOf(charAt2), i3 + i);
                    }
                    stack2.push(String.valueOf(charAt2));
                    i2 = 1;
                    z = true;
                }
                i3 += i2;
            }
            i2 = 1;
            i3 += i2;
        }
        if (stack.size() == stack2.size() + 1) {
            return m30854a(stack, stack2);
        }
        throw new ExpressionParseException("Incomplete expression.", i + str.length());
    }

    public static Expression parse(String str) {
        if (str != null) {
            return m30855b(str, 0);
        }
        throw new ExpressionParseException("Expression string cannot be null.", -1);
    }
}
