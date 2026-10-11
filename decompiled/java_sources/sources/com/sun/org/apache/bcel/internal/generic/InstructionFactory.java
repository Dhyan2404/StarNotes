package com.sun.org.apache.bcel.internal.generic;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class InstructionFactory implements InstructionConstants, Serializable {
    private static MethodObject[] append_mos;

    /* renamed from: cg */
    protected ClassGen f64068cg;

    /* renamed from: cp */
    protected ConstantPoolGen f64069cp;

    /* loaded from: classes10.dex */
    public static class MethodObject {
        int access;
        String[] arg_names;
        Type[] arg_types;
        String class_name;
        String name;
        Type result_type;

        public MethodObject(String str, String str2, Type type, Type[] typeArr, int i) {
            this.class_name = str;
            this.name = str2;
            this.result_type = type;
            this.arg_types = typeArr;
            this.access = i;
        }
    }

    static {
        ObjectType objectType = Type.STRINGBUFFER;
        Type[] typeArr = {Type.STRING};
        Type[] typeArr2 = {Type.OBJECT};
        Type[] typeArr3 = {Type.BOOLEAN};
        Type[] typeArr4 = {Type.CHAR};
        Type[] typeArr5 = {Type.FLOAT};
        Type[] typeArr6 = {Type.DOUBLE};
        BasicType basicType = Type.INT;
        append_mos = new MethodObject[]{new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, typeArr, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, typeArr2, 1), null, null, new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, typeArr3, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, typeArr4, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, typeArr5, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, typeArr6, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, new Type[]{basicType}, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, new Type[]{basicType}, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, new Type[]{basicType}, 1), new MethodObject(Constants.STRING_BUFFER_CLASS, RequestParameters.SUBRESOURCE_APPEND, objectType, new Type[]{Type.LONG}, 1)};
    }

    public InstructionFactory(ClassGen classGen, ConstantPoolGen constantPoolGen) {
        this.f64068cg = classGen;
        this.f64069cp = constantPoolGen;
    }

    public static ArrayInstruction createArrayLoad(Type type) {
        switch (type.getType()) {
            case 4:
            case 8:
                return InstructionConstants.BALOAD;
            case 5:
                return InstructionConstants.CALOAD;
            case 6:
                return InstructionConstants.FALOAD;
            case 7:
                return InstructionConstants.DALOAD;
            case 9:
                return InstructionConstants.SALOAD;
            case 10:
                return InstructionConstants.IALOAD;
            case 11:
                return InstructionConstants.LALOAD;
            case 12:
            default:
                throw new RuntimeException("Invalid type " + type);
            case 13:
            case 14:
                return InstructionConstants.AALOAD;
        }
    }

    public static ArrayInstruction createArrayStore(Type type) {
        switch (type.getType()) {
            case 4:
            case 8:
                return InstructionConstants.BASTORE;
            case 5:
                return InstructionConstants.CASTORE;
            case 6:
                return InstructionConstants.FASTORE;
            case 7:
                return InstructionConstants.DASTORE;
            case 9:
                return InstructionConstants.SASTORE;
            case 10:
                return InstructionConstants.IASTORE;
            case 11:
                return InstructionConstants.LASTORE;
            case 12:
            default:
                throw new RuntimeException("Invalid type " + type);
            case 13:
            case 14:
                return InstructionConstants.AASTORE;
        }
    }

    private static final ArithmeticInstruction createBinaryDoubleOp(char c) {
        if (c == '*') {
            return InstructionConstants.DMUL;
        }
        if (c == '+') {
            return InstructionConstants.DADD;
        }
        if (c == '-') {
            return InstructionConstants.DSUB;
        }
        if (c == '/') {
            return InstructionConstants.DDIV;
        }
        throw new RuntimeException("Invalid operand " + c);
    }

    private static final ArithmeticInstruction createBinaryFloatOp(char c) {
        if (c == '*') {
            return InstructionConstants.FMUL;
        }
        if (c == '+') {
            return InstructionConstants.FADD;
        }
        if (c == '-') {
            return InstructionConstants.FSUB;
        }
        if (c == '/') {
            return InstructionConstants.FDIV;
        }
        throw new RuntimeException("Invalid operand " + c);
    }

    private static final ArithmeticInstruction createBinaryIntOp(char c, String str) {
        if (c == '%') {
            return InstructionConstants.IREM;
        }
        if (c == '&') {
            return InstructionConstants.IAND;
        }
        if (c == '*') {
            return InstructionConstants.IMUL;
        }
        if (c == '+') {
            return InstructionConstants.IADD;
        }
        if (c == '-') {
            return InstructionConstants.ISUB;
        }
        if (c == '/') {
            return InstructionConstants.IDIV;
        }
        if (c == '<') {
            return InstructionConstants.ISHL;
        }
        if (c == '>') {
            return str.equals(">>>") ? InstructionConstants.IUSHR : InstructionConstants.ISHR;
        }
        if (c == '^') {
            return InstructionConstants.IXOR;
        }
        if (c == '|') {
            return InstructionConstants.IOR;
        }
        throw new RuntimeException("Invalid operand " + str);
    }

    private static final ArithmeticInstruction createBinaryLongOp(char c, String str) {
        if (c == '%') {
            return InstructionConstants.LREM;
        }
        if (c == '&') {
            return InstructionConstants.LAND;
        }
        if (c == '*') {
            return InstructionConstants.LMUL;
        }
        if (c == '+') {
            return InstructionConstants.LADD;
        }
        if (c == '-') {
            return InstructionConstants.LSUB;
        }
        if (c == '/') {
            return InstructionConstants.LDIV;
        }
        if (c == '<') {
            return InstructionConstants.LSHL;
        }
        if (c == '>') {
            return str.equals(">>>") ? InstructionConstants.LUSHR : InstructionConstants.LSHR;
        }
        if (c == '^') {
            return InstructionConstants.LXOR;
        }
        if (c == '|') {
            return InstructionConstants.LOR;
        }
        throw new RuntimeException("Invalid operand " + str);
    }

    public static ArithmeticInstruction createBinaryOperation(String str, Type type) {
        char c = str.toCharArray()[0];
        switch (type.getType()) {
            case 5:
            case 8:
            case 9:
            case 10:
                return createBinaryIntOp(c, str);
            case 6:
                return createBinaryFloatOp(c);
            case 7:
                return createBinaryDoubleOp(c);
            case 11:
                return createBinaryLongOp(c, str);
            default:
                throw new RuntimeException("Invalid type " + type);
        }
    }

    public static BranchInstruction createBranchInstruction(short s, InstructionHandle instructionHandle) {
        switch (s) {
            case 153:
                return new IFEQ(instructionHandle);
            case 154:
                return new IFNE(instructionHandle);
            case 155:
                return new IFLT(instructionHandle);
            case 156:
                return new IFGE(instructionHandle);
            case 157:
                return new IFGT(instructionHandle);
            case 158:
                return new IFLE(instructionHandle);
            case 159:
                return new IF_ICMPEQ(instructionHandle);
            case 160:
                return new IF_ICMPNE(instructionHandle);
            case 161:
                return new IF_ICMPLT(instructionHandle);
            case 162:
                return new IF_ICMPGE(instructionHandle);
            case 163:
                return new IF_ICMPGT(instructionHandle);
            case 164:
                return new IF_ICMPLE(instructionHandle);
            case 165:
                return new IF_ACMPEQ(instructionHandle);
            case 166:
                return new IF_ACMPNE(instructionHandle);
            case 167:
                return new GOTO(instructionHandle);
            case 168:
                return new JSR(instructionHandle);
            default:
                switch (s) {
                    case 198:
                        return new IFNULL(instructionHandle);
                    case 199:
                        return new IFNONNULL(instructionHandle);
                    case 200:
                        return new GOTO_W(instructionHandle);
                    case 201:
                        return new JSR_W(instructionHandle);
                    default:
                        throw new RuntimeException("Invalid opcode: " + ((int) s));
                }
        }
    }

    public static StackInstruction createDup(int i) {
        return i == 2 ? InstructionConstants.DUP2 : InstructionConstants.DUP;
    }

    public static StackInstruction createDup_1(int i) {
        return i == 2 ? InstructionConstants.DUP2_X1 : InstructionConstants.DUP_X1;
    }

    public static StackInstruction createDup_2(int i) {
        return i == 2 ? InstructionConstants.DUP2_X2 : InstructionConstants.DUP_X2;
    }

    public static LocalVariableInstruction createLoad(Type type, int i) {
        switch (type.getType()) {
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
                return new ILOAD(i);
            case 6:
                return new FLOAD(i);
            case 7:
                return new DLOAD(i);
            case 11:
                return new LLOAD(i);
            case 12:
            default:
                throw new RuntimeException("Invalid type " + type);
            case 13:
            case 14:
                return new ALOAD(i);
        }
    }

    public static Instruction createNull(Type type) {
        switch (type.getType()) {
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
                return InstructionConstants.ICONST_0;
            case 6:
                return InstructionConstants.FCONST_0;
            case 7:
                return InstructionConstants.DCONST_0;
            case 11:
                return InstructionConstants.LCONST_0;
            case 12:
                return InstructionConstants.NOP;
            case 13:
            case 14:
                return InstructionConstants.ACONST_NULL;
            default:
                throw new RuntimeException("Invalid type: " + type);
        }
    }

    public static StackInstruction createPop(int i) {
        return i == 2 ? InstructionConstants.POP2 : InstructionConstants.POP;
    }

    public static ReturnInstruction createReturn(Type type) {
        switch (type.getType()) {
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
                return InstructionConstants.IRETURN;
            case 6:
                return InstructionConstants.FRETURN;
            case 7:
                return InstructionConstants.DRETURN;
            case 11:
                return InstructionConstants.LRETURN;
            case 12:
                return InstructionConstants.RETURN;
            case 13:
            case 14:
                return InstructionConstants.ARETURN;
            default:
                throw new RuntimeException("Invalid type: " + type);
        }
    }

    public static LocalVariableInstruction createStore(Type type, int i) {
        switch (type.getType()) {
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
                return new ISTORE(i);
            case 6:
                return new FSTORE(i);
            case 7:
                return new DSTORE(i);
            case 11:
                return new LSTORE(i);
            case 12:
            default:
                throw new RuntimeException("Invalid type " + type);
            case 13:
            case 14:
                return new ASTORE(i);
        }
    }

    public static Instruction createThis() {
        return new ALOAD(0);
    }

    private static final boolean isString(Type type) {
        return (type instanceof ObjectType) && ((ObjectType) type).getClassName().equals("java.lang.String");
    }

    public Instruction createAppend(Type type) {
        byte type2 = type.getType();
        if (isString(type)) {
            return createInvoke(append_mos[0], (short) 182);
        }
        switch (type2) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                return createInvoke(append_mos[type2], (short) 182);
            case 12:
            default:
                throw new RuntimeException("Oops: No append for this type? " + type);
            case 13:
            case 14:
                return createInvoke(append_mos[1], (short) 182);
        }
    }

    public Instruction createCast(Type type, Type type2) {
        if (!(type instanceof BasicType) || !(type2 instanceof BasicType)) {
            if ((type instanceof ReferenceType) && (type2 instanceof ReferenceType)) {
                return type2 instanceof ArrayType ? new CHECKCAST(this.f64069cp.addArrayClass((ArrayType) type2)) : new CHECKCAST(this.f64069cp.addClass(((ObjectType) type2).getClassName()));
            }
            throw new RuntimeException("Can not cast " + type + " to " + type2);
        }
        byte type3 = type2.getType();
        byte type4 = type.getType();
        if (type3 == 11 && (type4 == 5 || type4 == 8 || type4 == 9)) {
            type4 = 10;
        }
        String[] strArr = {BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "F", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "B", "S", "I", "L"};
        String str = "com.sun.org.apache.bcel.internal.generic." + strArr[type4 - 5] + "2" + strArr[type3 - 5];
        try {
            return (Instruction) Class.forName(str).newInstance();
        } catch (Exception unused) {
            throw new RuntimeException("Could not find instruction: " + str);
        }
    }

    public CHECKCAST createCheckCast(ReferenceType referenceType) {
        return referenceType instanceof ArrayType ? new CHECKCAST(this.f64069cp.addArrayClass((ArrayType) referenceType)) : new CHECKCAST(this.f64069cp.addClass((ObjectType) referenceType));
    }

    public Instruction createConstant(Object obj) {
        PUSH push;
        if (obj instanceof Number) {
            push = new PUSH(this.f64069cp, (Number) obj);
        } else if (obj instanceof String) {
            push = new PUSH(this.f64069cp, (String) obj);
        } else if (obj instanceof Boolean) {
            push = new PUSH(this.f64069cp, (Boolean) obj);
        } else {
            if (!(obj instanceof Character)) {
                throw new ClassGenException("Illegal type: " + obj.getClass());
            }
            push = new PUSH(this.f64069cp, (Character) obj);
        }
        return push.getInstruction();
    }

    public FieldInstruction createFieldAccess(String str, String str2, Type type, short s) {
        int addFieldref = this.f64069cp.addFieldref(str, str2, type.getSignature());
        switch (s) {
            case 178:
                return new GETSTATIC(addFieldref);
            case 179:
                return new PUTSTATIC(addFieldref);
            case 180:
                return new GETFIELD(addFieldref);
            case 181:
                return new PUTFIELD(addFieldref);
            default:
                throw new RuntimeException("Oops: Unknown getfield kind:" + ((int) s));
        }
    }

    public GETFIELD createGetField(String str, String str2, Type type) {
        return new GETFIELD(this.f64069cp.addFieldref(str, str2, type.getSignature()));
    }

    public GETSTATIC createGetStatic(String str, String str2, Type type) {
        return new GETSTATIC(this.f64069cp.addFieldref(str, str2, type.getSignature()));
    }

    public INSTANCEOF createInstanceOf(ReferenceType referenceType) {
        return referenceType instanceof ArrayType ? new INSTANCEOF(this.f64069cp.addArrayClass((ArrayType) referenceType)) : new INSTANCEOF(this.f64069cp.addClass((ObjectType) referenceType));
    }

    public InvokeInstruction createInvoke(String str, String str2, Type type, Type[] typeArr, short s) {
        int addMethodref;
        String methodSignature = Type.getMethodSignature(type, typeArr);
        int i = 0;
        for (Type type2 : typeArr) {
            i += type2.getSize();
        }
        if (s == 185) {
            addMethodref = this.f64069cp.addInterfaceMethodref(str, str2, methodSignature);
        } else {
            addMethodref = this.f64069cp.addMethodref(str, str2, methodSignature);
        }
        switch (s) {
            case 182:
                return new INVOKEVIRTUAL(addMethodref);
            case 183:
                return new INVOKESPECIAL(addMethodref);
            case 184:
                return new INVOKESTATIC(addMethodref);
            case 185:
                return new INVOKEINTERFACE(addMethodref, i + 1);
            default:
                throw new RuntimeException("Oops: Unknown invoke kind:" + ((int) s));
        }
    }

    public NEW createNew(ObjectType objectType) {
        return new NEW(this.f64069cp.addClass(objectType));
    }

    public Instruction createNewArray(Type type, short s) {
        if (s == 1) {
            return type instanceof ObjectType ? new ANEWARRAY(this.f64069cp.addClass((ObjectType) type)) : type instanceof ArrayType ? new ANEWARRAY(this.f64069cp.addArrayClass((ArrayType) type)) : new NEWARRAY(((BasicType) type).getType());
        }
        return new MULTIANEWARRAY(this.f64069cp.addArrayClass(type instanceof ArrayType ? (ArrayType) type : new ArrayType(type, s)), s);
    }

    public InstructionList createPrintln(String str) {
        InstructionList instructionList = new InstructionList();
        int addFieldref = this.f64069cp.addFieldref("java.lang.System", "out", "Ljava/io/PrintStream;");
        int addMethodref = this.f64069cp.addMethodref("java.io.PrintStream", "println", "(Ljava/lang/String;)V");
        instructionList.append(new GETSTATIC(addFieldref));
        instructionList.append(new PUSH(this.f64069cp, str));
        instructionList.append(new INVOKEVIRTUAL(addMethodref));
        return instructionList;
    }

    public PUTFIELD createPutField(String str, String str2, Type type) {
        return new PUTFIELD(this.f64069cp.addFieldref(str, str2, type.getSignature()));
    }

    public PUTSTATIC createPutStatic(String str, String str2, Type type) {
        return new PUTSTATIC(this.f64069cp.addFieldref(str, str2, type.getSignature()));
    }

    public ClassGen getClassGen() {
        return this.f64068cg;
    }

    public ConstantPoolGen getConstantPool() {
        return this.f64069cp;
    }

    public void setClassGen(ClassGen classGen) {
        this.f64068cg = classGen;
    }

    public void setConstantPool(ConstantPoolGen constantPoolGen) {
        this.f64069cp = constantPoolGen;
    }

    public NEW createNew(String str) {
        return createNew(new ObjectType(str));
    }

    public InstructionFactory(ClassGen classGen) {
        this(classGen, classGen.getConstantPool());
    }

    public InstructionFactory(ConstantPoolGen constantPoolGen) {
        this(null, constantPoolGen);
    }

    private InvokeInstruction createInvoke(MethodObject methodObject, short s) {
        return createInvoke(methodObject.class_name, methodObject.name, methodObject.result_type, methodObject.arg_types, s);
    }
}
