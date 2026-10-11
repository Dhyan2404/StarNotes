package com.sun.org.apache.bcel.internal.util;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.generic.ClassGenException;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.regexp.internal.C13245RE;
import com.sun.org.apache.regexp.internal.RESyntaxException;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes10.dex */
public class InstructionFinder {
    private static final int NO_OPCODES = 256;
    private static final int OFFSET = 32767;
    private static final HashMap map;
    private InstructionHandle[] handles;

    /* renamed from: il */
    private InstructionList f64075il;
    private String il_string;

    /* loaded from: classes10.dex */
    public interface CodeConstraint {
        boolean checkCode(InstructionHandle[] instructionHandleArr);
    }

    static {
        HashMap hashMap = new HashMap();
        map = hashMap;
        hashMap.put("arithmeticinstruction", "(irem|lrem|iand|ior|ineg|isub|lneg|fneg|fmul|ldiv|fadd|lxor|frem|idiv|land|ixor|ishr|fsub|lshl|fdiv|iadd|lor|dmul|lsub|ishl|imul|lmul|lushr|dneg|iushr|lshr|ddiv|drem|dadd|ladd|dsub)");
        hashMap.put("invokeinstruction", "(invokevirtual|invokeinterface|invokestatic|invokespecial)");
        hashMap.put("arrayinstruction", "(baload|aastore|saload|caload|fastore|lastore|iaload|castore|iastore|aaload|bastore|sastore|faload|laload|daload|dastore)");
        hashMap.put("gotoinstruction", "(goto|goto_w)");
        hashMap.put("conversioninstruction", "(d2l|l2d|i2s|d2i|l2i|i2b|l2f|d2f|f2i|i2d|i2l|f2d|i2c|f2l|i2f)");
        hashMap.put("localvariableinstruction", "(fstore|iinc|lload|dstore|dload|iload|aload|astore|istore|fload|lstore)");
        hashMap.put("loadinstruction", "(fload|dload|lload|iload|aload)");
        hashMap.put("fieldinstruction", "(getfield|putstatic|getstatic|putfield)");
        hashMap.put("cpinstruction", "(ldc2_w|invokeinterface|multianewarray|putstatic|instanceof|getstatic|checkcast|getfield|invokespecial|ldc_w|invokestatic|invokevirtual|putfield|ldc|new|anewarray)");
        hashMap.put("stackinstruction", "(dup2|swap|dup2_x2|pop|pop2|dup|dup2_x1|dup_x2|dup_x1)");
        hashMap.put("branchinstruction", "(ifle|if_acmpne|if_icmpeq|if_acmpeq|ifnonnull|goto_w|iflt|ifnull|if_icmpne|tableswitch|if_icmple|ifeq|if_icmplt|jsr_w|if_icmpgt|ifgt|jsr|goto|ifne|ifge|lookupswitch|if_icmpge)");
        hashMap.put("returninstruction", "(lreturn|ireturn|freturn|dreturn|areturn|return)");
        hashMap.put("storeinstruction", "(istore|fstore|dstore|astore|lstore)");
        hashMap.put("select", "(tableswitch|lookupswitch)");
        hashMap.put("ifinstruction", "(ifeq|ifgt|if_icmpne|if_icmpeq|ifge|ifnull|ifne|if_icmple|if_icmpge|if_acmpeq|if_icmplt|if_acmpne|ifnonnull|iflt|if_icmpgt|ifle)");
        hashMap.put("jsrinstruction", "(jsr|jsr_w)");
        hashMap.put("variablelengthinstruction", "(tableswitch|jsr|goto|lookupswitch)");
        hashMap.put("unconditionalbranch", "(goto|jsr|jsr_w|athrow|goto_w)");
        hashMap.put("constantpushinstruction", "(dconst|bipush|sipush|fconst|iconst|lconst)");
        hashMap.put("typedinstruction", "(imul|lsub|aload|fload|lor|new|aaload|fcmpg|iand|iaload|lrem|idiv|d2l|isub|dcmpg|dastore|ret|f2d|f2i|drem|iinc|i2c|checkcast|frem|lreturn|astore|lushr|daload|dneg|fastore|istore|lshl|ldiv|lstore|areturn|ishr|ldc_w|invokeinterface|aastore|lxor|ishl|l2d|i2f|return|faload|sipush|iushr|caload|instanceof|invokespecial|putfield|fmul|ireturn|laload|d2f|lneg|ixor|i2l|fdiv|lastore|multianewarray|i2b|getstatic|i2d|putstatic|fcmpl|saload|ladd|irem|dload|jsr_w|dconst|dcmpl|fsub|freturn|ldc|aconst_null|castore|lmul|ldc2_w|dadd|iconst|f2l|ddiv|dstore|land|jsr|anewarray|dmul|bipush|dsub|sastore|d2i|i2s|lshr|iadd|l2i|lload|bastore|fstore|fneg|iload|fadd|baload|fconst|ior|ineg|dreturn|l2f|lconst|getfield|invokevirtual|invokestatic|iastore)");
        hashMap.put("popinstruction", "(fstore|dstore|pop|pop2|astore|putstatic|istore|lstore)");
        hashMap.put("allocationinstruction", "(multianewarray|new|anewarray|newarray)");
        hashMap.put("indexedinstruction", "(lload|lstore|fload|ldc2_w|invokeinterface|multianewarray|astore|dload|putstatic|instanceof|getstatic|checkcast|getfield|invokespecial|dstore|istore|iinc|ldc_w|ret|fstore|invokestatic|iload|putfield|invokevirtual|ldc|new|aload|anewarray)");
        hashMap.put("pushinstruction", "(dup|lload|dup2|bipush|fload|ldc2_w|sipush|lconst|fconst|dload|getstatic|ldc_w|aconst_null|dconst|iload|ldc|iconst|aload)");
        hashMap.put("stackproducer", "(imul|lsub|aload|fload|lor|new|aaload|fcmpg|iand|iaload|lrem|idiv|d2l|isub|dcmpg|dup|f2d|f2i|drem|i2c|checkcast|frem|lushr|daload|dneg|lshl|ldiv|ishr|ldc_w|invokeinterface|lxor|ishl|l2d|i2f|faload|sipush|iushr|caload|instanceof|invokespecial|fmul|laload|d2f|lneg|ixor|i2l|fdiv|getstatic|i2b|swap|i2d|dup2|fcmpl|saload|ladd|irem|dload|jsr_w|dconst|dcmpl|fsub|ldc|arraylength|aconst_null|tableswitch|lmul|ldc2_w|iconst|dadd|f2l|ddiv|land|jsr|anewarray|dmul|bipush|dsub|d2i|newarray|i2s|lshr|iadd|lload|l2i|fneg|iload|fadd|baload|fconst|lookupswitch|ior|ineg|lconst|l2f|getfield|invokevirtual|invokestatic)");
        hashMap.put("stackconsumer", "(imul|lsub|lor|iflt|fcmpg|if_icmpgt|iand|ifeq|if_icmplt|lrem|ifnonnull|idiv|d2l|isub|dcmpg|dastore|if_icmpeq|f2d|f2i|drem|i2c|checkcast|frem|lreturn|astore|lushr|pop2|monitorexit|dneg|fastore|istore|lshl|ldiv|lstore|areturn|if_icmpge|ishr|monitorenter|invokeinterface|aastore|lxor|ishl|l2d|i2f|return|iushr|instanceof|invokespecial|fmul|ireturn|d2f|lneg|ixor|pop|i2l|ifnull|fdiv|lastore|i2b|if_acmpeq|ifge|swap|i2d|putstatic|fcmpl|ladd|irem|dcmpl|fsub|freturn|ifgt|castore|lmul|dadd|f2l|ddiv|dstore|land|if_icmpne|if_acmpne|dmul|dsub|sastore|ifle|d2i|i2s|lshr|iadd|l2i|bastore|fstore|fneg|fadd|ior|ineg|ifne|dreturn|l2f|if_icmple|getfield|invokevirtual|invokestatic|iastore)");
        hashMap.put("exceptionthrower", "(irem|lrem|laload|putstatic|baload|dastore|areturn|getstatic|ldiv|anewarray|iastore|castore|idiv|saload|lastore|fastore|putfield|lreturn|caload|getfield|return|aastore|freturn|newarray|instanceof|multianewarray|athrow|faload|iaload|aaload|dreturn|monitorenter|checkcast|bastore|arraylength|new|invokevirtual|sastore|ldc_w|ireturn|invokespecial|monitorexit|invokeinterface|ldc|invokestatic|daload)");
        hashMap.put("loadclass", "(multianewarray|invokeinterface|instanceof|invokespecial|putfield|checkcast|putstatic|invokevirtual|new|getstatic|invokestatic|getfield|anewarray)");
        hashMap.put("instructiontargeter", "(ifle|if_acmpne|if_icmpeq|if_acmpeq|ifnonnull|goto_w|iflt|ifnull|if_icmpne|tableswitch|if_icmple|ifeq|if_icmplt|jsr_w|if_icmpgt|ifgt|jsr|goto|ifne|ifge|lookupswitch|if_icmpge)");
        hashMap.put("if_icmp", "(if_icmpne|if_icmpeq|if_icmple|if_icmpge|if_icmplt|if_icmpgt)");
        hashMap.put("if_acmp", "(if_acmpeq|if_acmpne)");
        hashMap.put(Constants.ELEMNAME_IF_STRING, "(ifeq|ifne|iflt|ifge|ifgt|ifle)");
        hashMap.put("iconst", precompile((short) 3, (short) 8, (short) 2));
        hashMap.put("lconst", new String(new char[]{'(', makeChar((short) 9), '|', makeChar((short) 10), ')'}));
        hashMap.put("dconst", new String(new char[]{'(', makeChar((short) 14), '|', makeChar((short) 15), ')'}));
        hashMap.put("fconst", new String(new char[]{'(', makeChar((short) 11), '|', makeChar((short) 12), ')'}));
        hashMap.put("iload", precompile((short) 26, (short) 29, (short) 21));
        hashMap.put("dload", precompile((short) 38, (short) 41, (short) 24));
        hashMap.put("fload", precompile((short) 34, (short) 37, (short) 23));
        hashMap.put("aload", precompile((short) 42, (short) 45, (short) 25));
        hashMap.put("istore", precompile((short) 59, (short) 62, (short) 54));
        hashMap.put("dstore", precompile((short) 71, (short) 74, (short) 57));
        hashMap.put("fstore", precompile((short) 67, (short) 70, (short) 56));
        hashMap.put("astore", precompile((short) 75, (short) 78, (short) 58));
        for (String str : hashMap.keySet()) {
            HashMap hashMap2 = map;
            String str2 = (String) hashMap2.get(str);
            if (str2.charAt(1) < 32767) {
                hashMap2.put(str, compilePattern(str2));
            }
        }
        StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
        for (short s = 0; s < 256; s = (short) (s + 1)) {
            if (com.sun.org.apache.bcel.internal.Constants.NO_OF_OPERANDS[s] != -1) {
                stringBuffer.append(makeChar(s));
                if (s < 255) {
                    stringBuffer.append('|');
                }
            }
        }
        stringBuffer.append(')');
        map.put("instruction", stringBuffer.toString());
    }

    public InstructionFinder(InstructionList instructionList) {
        this.f64075il = instructionList;
        reread();
    }

    private static final String compilePattern(String str) {
        String lowerCase = str.toLowerCase();
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = lowerCase.charAt(i);
            if (Character.isLetterOrDigit(charAt)) {
                StringBuffer stringBuffer2 = new StringBuffer();
                while (true) {
                    if ((!Character.isLetterOrDigit(charAt) && charAt != '_') || i >= length) {
                        break;
                    }
                    stringBuffer2.append(charAt);
                    i++;
                    if (i >= length) {
                        break;
                    }
                    charAt = lowerCase.charAt(i);
                }
                i--;
                stringBuffer.append(mapName(stringBuffer2.toString()));
            } else if (!Character.isWhitespace(charAt)) {
                stringBuffer.append(charAt);
            }
            i++;
        }
        return stringBuffer.toString();
    }

    private InstructionHandle[] getMatch(int i, int i2) {
        InstructionHandle[] instructionHandleArr = new InstructionHandle[i2];
        System.arraycopy(this.handles, i, instructionHandleArr, 0, i2);
        return instructionHandleArr;
    }

    private static final char makeChar(short s) {
        return (char) (s + Short.MAX_VALUE);
    }

    private static final String mapName(String str) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            return str2;
        }
        for (short s = 0; s < 256; s = (short) (s + 1)) {
            if (str.equals(com.sun.org.apache.bcel.internal.Constants.OPCODE_NAMES[s])) {
                return "" + makeChar(s);
            }
        }
        throw new RuntimeException("Instruction unknown: " + str);
    }

    private static final String pattern2string(String str) {
        return pattern2string(str, true);
    }

    private static String precompile(short s, short s2, short s3) {
        StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
        while (s <= s2) {
            stringBuffer.append(makeChar(s));
            stringBuffer.append('|');
            s = (short) (s + 1);
        }
        stringBuffer.append(makeChar(s3));
        stringBuffer.append(MotionUtils.f31762d);
        return stringBuffer.toString();
    }

    public final InstructionList getInstructionList() {
        return this.f64075il;
    }

    public final void reread() {
        int length = this.f64075il.getLength();
        char[] cArr = new char[length];
        this.handles = this.f64075il.getInstructionHandles();
        for (int i = 0; i < length; i++) {
            cArr[i] = makeChar(this.handles[i].getInstruction().getOpcode());
        }
        this.il_string = new String(cArr);
    }

    public final Iterator search(String str, InstructionHandle instructionHandle, CodeConstraint codeConstraint) {
        String compilePattern = compilePattern(str);
        int i = 0;
        while (true) {
            InstructionHandle[] instructionHandleArr = this.handles;
            if (i >= instructionHandleArr.length) {
                i = -1;
                break;
            }
            if (instructionHandleArr[i] == instructionHandle) {
                break;
            }
            i++;
        }
        if (i != -1) {
            try {
                C13245RE c13245re = new C13245RE(compilePattern);
                ArrayList arrayList = new ArrayList();
                while (i < this.il_string.length() && c13245re.match(this.il_string, i)) {
                    int parenStart = c13245re.getParenStart(0);
                    int parenEnd = c13245re.getParenEnd(0);
                    InstructionHandle[] match = getMatch(parenStart, c13245re.getParenLength(0));
                    if (codeConstraint == null || codeConstraint.checkCode(match)) {
                        arrayList.add(match);
                    }
                    i = parenEnd;
                }
                return arrayList.iterator();
            } catch (RESyntaxException e) {
                System.err.println(e);
                return null;
            }
        }
        throw new ClassGenException("Instruction handle " + instructionHandle + " not found in instruction list.");
    }

    private static final String pattern2string(String str, boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < 32767) {
                stringBuffer.append(charAt);
            } else if (z) {
                stringBuffer.append(com.sun.org.apache.bcel.internal.Constants.OPCODE_NAMES[charAt - 32767]);
            } else {
                stringBuffer.append(charAt - 32767);
            }
        }
        return stringBuffer.toString();
    }

    public final Iterator search(String str) {
        return search(str, this.f64075il.getStart(), null);
    }

    public final Iterator search(String str, InstructionHandle instructionHandle) {
        return search(str, instructionHandle, null);
    }

    public final Iterator search(String str, CodeConstraint codeConstraint) {
        return search(str, this.f64075il.getStart(), codeConstraint);
    }
}
