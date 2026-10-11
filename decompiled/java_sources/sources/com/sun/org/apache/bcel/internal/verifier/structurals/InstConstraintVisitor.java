package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantDouble;
import com.sun.org.apache.bcel.internal.classfile.ConstantFieldref;
import com.sun.org.apache.bcel.internal.classfile.ConstantFloat;
import com.sun.org.apache.bcel.internal.classfile.ConstantInteger;
import com.sun.org.apache.bcel.internal.classfile.ConstantLong;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.generic.AALOAD;
import com.sun.org.apache.bcel.internal.generic.AASTORE;
import com.sun.org.apache.bcel.internal.generic.ACONST_NULL;
import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.ARETURN;
import com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ATHROW;
import com.sun.org.apache.bcel.internal.generic.ArrayType;
import com.sun.org.apache.bcel.internal.generic.BALOAD;
import com.sun.org.apache.bcel.internal.generic.BASTORE;
import com.sun.org.apache.bcel.internal.generic.BIPUSH;
import com.sun.org.apache.bcel.internal.generic.BREAKPOINT;
import com.sun.org.apache.bcel.internal.generic.BasicType;
import com.sun.org.apache.bcel.internal.generic.CALOAD;
import com.sun.org.apache.bcel.internal.generic.CASTORE;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.CPInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.D2F;
import com.sun.org.apache.bcel.internal.generic.D2I;
import com.sun.org.apache.bcel.internal.generic.D2L;
import com.sun.org.apache.bcel.internal.generic.DADD;
import com.sun.org.apache.bcel.internal.generic.DALOAD;
import com.sun.org.apache.bcel.internal.generic.DASTORE;
import com.sun.org.apache.bcel.internal.generic.DCMPG;
import com.sun.org.apache.bcel.internal.generic.DCMPL;
import com.sun.org.apache.bcel.internal.generic.DCONST;
import com.sun.org.apache.bcel.internal.generic.DDIV;
import com.sun.org.apache.bcel.internal.generic.DLOAD;
import com.sun.org.apache.bcel.internal.generic.DMUL;
import com.sun.org.apache.bcel.internal.generic.DNEG;
import com.sun.org.apache.bcel.internal.generic.DREM;
import com.sun.org.apache.bcel.internal.generic.DRETURN;
import com.sun.org.apache.bcel.internal.generic.DSTORE;
import com.sun.org.apache.bcel.internal.generic.DSUB;
import com.sun.org.apache.bcel.internal.generic.DUP;
import com.sun.org.apache.bcel.internal.generic.DUP2;
import com.sun.org.apache.bcel.internal.generic.DUP2_X1;
import com.sun.org.apache.bcel.internal.generic.DUP2_X2;
import com.sun.org.apache.bcel.internal.generic.DUP_X1;
import com.sun.org.apache.bcel.internal.generic.DUP_X2;
import com.sun.org.apache.bcel.internal.generic.EmptyVisitor;
import com.sun.org.apache.bcel.internal.generic.F2D;
import com.sun.org.apache.bcel.internal.generic.F2I;
import com.sun.org.apache.bcel.internal.generic.F2L;
import com.sun.org.apache.bcel.internal.generic.FADD;
import com.sun.org.apache.bcel.internal.generic.FALOAD;
import com.sun.org.apache.bcel.internal.generic.FASTORE;
import com.sun.org.apache.bcel.internal.generic.FCMPG;
import com.sun.org.apache.bcel.internal.generic.FCMPL;
import com.sun.org.apache.bcel.internal.generic.FCONST;
import com.sun.org.apache.bcel.internal.generic.FDIV;
import com.sun.org.apache.bcel.internal.generic.FLOAD;
import com.sun.org.apache.bcel.internal.generic.FMUL;
import com.sun.org.apache.bcel.internal.generic.FNEG;
import com.sun.org.apache.bcel.internal.generic.FREM;
import com.sun.org.apache.bcel.internal.generic.FRETURN;
import com.sun.org.apache.bcel.internal.generic.FSTORE;
import com.sun.org.apache.bcel.internal.generic.FSUB;
import com.sun.org.apache.bcel.internal.generic.FieldInstruction;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.GOTO_W;
import com.sun.org.apache.bcel.internal.generic.I2B;
import com.sun.org.apache.bcel.internal.generic.I2C;
import com.sun.org.apache.bcel.internal.generic.I2D;
import com.sun.org.apache.bcel.internal.generic.I2F;
import com.sun.org.apache.bcel.internal.generic.I2L;
import com.sun.org.apache.bcel.internal.generic.I2S;
import com.sun.org.apache.bcel.internal.generic.IADD;
import com.sun.org.apache.bcel.internal.generic.IALOAD;
import com.sun.org.apache.bcel.internal.generic.IAND;
import com.sun.org.apache.bcel.internal.generic.IASTORE;
import com.sun.org.apache.bcel.internal.generic.ICONST;
import com.sun.org.apache.bcel.internal.generic.IDIV;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.IFGE;
import com.sun.org.apache.bcel.internal.generic.IFGT;
import com.sun.org.apache.bcel.internal.generic.IFLE;
import com.sun.org.apache.bcel.internal.generic.IFLT;
import com.sun.org.apache.bcel.internal.generic.IFNE;
import com.sun.org.apache.bcel.internal.generic.IFNONNULL;
import com.sun.org.apache.bcel.internal.generic.IFNULL;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPNE;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPGE;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPGT;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPLE;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPLT;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPNE;
import com.sun.org.apache.bcel.internal.generic.IINC;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.IMPDEP1;
import com.sun.org.apache.bcel.internal.generic.IMPDEP2;
import com.sun.org.apache.bcel.internal.generic.IMUL;
import com.sun.org.apache.bcel.internal.generic.INEG;
import com.sun.org.apache.bcel.internal.generic.INSTANCEOF;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.IOR;
import com.sun.org.apache.bcel.internal.generic.IREM;
import com.sun.org.apache.bcel.internal.generic.IRETURN;
import com.sun.org.apache.bcel.internal.generic.ISHL;
import com.sun.org.apache.bcel.internal.generic.ISHR;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.ISUB;
import com.sun.org.apache.bcel.internal.generic.IUSHR;
import com.sun.org.apache.bcel.internal.generic.IXOR;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InvokeInstruction;
import com.sun.org.apache.bcel.internal.generic.JSR;
import com.sun.org.apache.bcel.internal.generic.JSR_W;
import com.sun.org.apache.bcel.internal.generic.L2D;
import com.sun.org.apache.bcel.internal.generic.L2F;
import com.sun.org.apache.bcel.internal.generic.L2I;
import com.sun.org.apache.bcel.internal.generic.LADD;
import com.sun.org.apache.bcel.internal.generic.LALOAD;
import com.sun.org.apache.bcel.internal.generic.LAND;
import com.sun.org.apache.bcel.internal.generic.LASTORE;
import com.sun.org.apache.bcel.internal.generic.LCMP;
import com.sun.org.apache.bcel.internal.generic.LCONST;
import com.sun.org.apache.bcel.internal.generic.LDC;
import com.sun.org.apache.bcel.internal.generic.LDC2_W;
import com.sun.org.apache.bcel.internal.generic.LDC_W;
import com.sun.org.apache.bcel.internal.generic.LDIV;
import com.sun.org.apache.bcel.internal.generic.LLOAD;
import com.sun.org.apache.bcel.internal.generic.LMUL;
import com.sun.org.apache.bcel.internal.generic.LNEG;
import com.sun.org.apache.bcel.internal.generic.LOOKUPSWITCH;
import com.sun.org.apache.bcel.internal.generic.LOR;
import com.sun.org.apache.bcel.internal.generic.LREM;
import com.sun.org.apache.bcel.internal.generic.LRETURN;
import com.sun.org.apache.bcel.internal.generic.LSHL;
import com.sun.org.apache.bcel.internal.generic.LSHR;
import com.sun.org.apache.bcel.internal.generic.LSTORE;
import com.sun.org.apache.bcel.internal.generic.LSUB;
import com.sun.org.apache.bcel.internal.generic.LUSHR;
import com.sun.org.apache.bcel.internal.generic.LXOR;
import com.sun.org.apache.bcel.internal.generic.LoadClass;
import com.sun.org.apache.bcel.internal.generic.LoadInstruction;
import com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
import com.sun.org.apache.bcel.internal.generic.MONITORENTER;
import com.sun.org.apache.bcel.internal.generic.MONITOREXIT;
import com.sun.org.apache.bcel.internal.generic.MULTIANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.NEWARRAY;
import com.sun.org.apache.bcel.internal.generic.NOP;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.POP;
import com.sun.org.apache.bcel.internal.generic.POP2;
import com.sun.org.apache.bcel.internal.generic.PUTFIELD;
import com.sun.org.apache.bcel.internal.generic.PUTSTATIC;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.sun.org.apache.bcel.internal.generic.ReferenceType;
import com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
import com.sun.org.apache.bcel.internal.generic.ReturnaddressType;
import com.sun.org.apache.bcel.internal.generic.SALOAD;
import com.sun.org.apache.bcel.internal.generic.SASTORE;
import com.sun.org.apache.bcel.internal.generic.SIPUSH;
import com.sun.org.apache.bcel.internal.generic.SWAP;
import com.sun.org.apache.bcel.internal.generic.StackConsumer;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.bcel.internal.generic.StackProducer;
import com.sun.org.apache.bcel.internal.generic.StoreInstruction;
import com.sun.org.apache.bcel.internal.generic.TABLESWITCH;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.generic.Visitor;
import com.sun.org.apache.bcel.internal.verifier.VerificationResult;
import com.sun.org.apache.bcel.internal.verifier.VerifierFactory;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.StructuralCodeConstraintException;

/* loaded from: classes10.dex */
public class InstConstraintVisitor extends EmptyVisitor implements Visitor {
    private static ObjectType GENERIC_ARRAY = new ObjectType("com.sun.org.apache.bcel.internal.verifier.structurals.GenericArray");
    private Frame frame = null;
    private ConstantPoolGen cpg = null;

    /* renamed from: mg */
    private MethodGen f64083mg = null;

    private void _visitStackAccessor(Instruction instruction) {
        int consumeStack = instruction.consumeStack(this.cpg);
        if (consumeStack > stack().slotsUsed()) {
            constraintViolated(instruction, "Cannot consume " + consumeStack + " stack slots: only " + stack().slotsUsed() + " slot(s) left on stack!\nStack:\n" + stack());
        }
        int produceStack = instruction.produceStack(this.cpg) - instruction.consumeStack(this.cpg);
        if (stack().slotsUsed() + produceStack > stack().maxStack()) {
            constraintViolated(instruction, "Cannot produce " + produceStack + " stack slots: only " + (stack().maxStack() - stack().slotsUsed()) + " free stack slot(s) left.\nStack:\n" + stack());
        }
    }

    private boolean arrayrefOfArrayType(Instruction instruction, Type type) {
        boolean z = type instanceof ArrayType;
        if (!z && !type.equals(Type.NULL)) {
            constraintViolated(instruction, "The 'arrayref' does not refer to an array but is of type " + type + ".");
        }
        return z;
    }

    private void constraintViolated(Instruction instruction, String str) {
        String name = instruction.getClass().getName();
        throw new StructuralCodeConstraintException("Instruction " + name.substring(name.lastIndexOf(46) + 1) + " constraint violated: " + str);
    }

    private void indexOfInt(Instruction instruction, Type type) {
        if (type.equals(Type.INT)) {
            return;
        }
        constraintViolated(instruction, "The 'index' is not of type int but of type " + type + ".");
    }

    private LocalVariables locals() {
        return this.frame.getLocals();
    }

    private void referenceTypeIsInitialized(Instruction instruction, ReferenceType referenceType) {
        if (referenceType instanceof UninitializedObjectType) {
            constraintViolated(instruction, "Working on an uninitialized object '" + referenceType + "'.");
        }
    }

    private OperandStack stack() {
        return this.frame.getStack();
    }

    private void valueOfInt(Instruction instruction, Type type) {
        if (type.equals(Type.INT)) {
            return;
        }
        constraintViolated(instruction, "The 'value' is not of type int but of type " + type + ".");
    }

    public void setConstantPoolGen(ConstantPoolGen constantPoolGen) {
        this.cpg = constantPoolGen;
    }

    public void setFrame(Frame frame) {
        this.frame = frame;
    }

    public void setMethodGen(MethodGen methodGen) {
        this.f64083mg = methodGen;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitAALOAD(AALOAD aaload) {
        Type peek = stack().peek(1);
        indexOfInt(aaload, stack().peek(0));
        if (arrayrefOfArrayType(aaload, peek)) {
            ArrayType arrayType = (ArrayType) peek;
            if (!(arrayType.getElementType() instanceof ReferenceType)) {
                constraintViolated(aaload, "The 'arrayref' does not refer to an array with elements of a ReferenceType but to an array of " + arrayType.getElementType() + ".");
            }
            referenceTypeIsInitialized(aaload, (ReferenceType) arrayType.getElementType());
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitAASTORE(AASTORE aastore) {
        Type peek = stack().peek(2);
        Type peek2 = stack().peek(1);
        Type peek3 = stack().peek(0);
        indexOfInt(aastore, peek2);
        if (peek3 instanceof ReferenceType) {
            referenceTypeIsInitialized(aastore, (ReferenceType) peek3);
        } else {
            constraintViolated(aastore, "The 'value' is not of a ReferenceType but of type " + peek3 + ".");
        }
        if (arrayrefOfArrayType(aastore, peek)) {
            ArrayType arrayType = (ArrayType) peek;
            if (!(arrayType.getElementType() instanceof ReferenceType)) {
                constraintViolated(aastore, "The 'arrayref' does not refer to an array with elements of a ReferenceType but to an array of " + arrayType.getElementType() + ".");
            }
            if (((ReferenceType) peek3).isAssignmentCompatibleWith((ReferenceType) arrayType.getElementType())) {
                return;
            }
            constraintViolated(aastore, "The type of 'value' ('" + peek3 + "') is not assignment compatible to the components of the array 'arrayref' refers to. ('" + arrayType.getElementType() + "')");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitACONST_NULL(ACONST_NULL aconst_null) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitALOAD(ALOAD aload) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitANEWARRAY(ANEWARRAY anewarray) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek.equals(basicType)) {
            return;
        }
        constraintViolated(anewarray, "The 'count' at the stack top is not of type '" + basicType + "' but of type '" + stack().peek() + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitARETURN(ARETURN areturn) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(areturn, "The 'objectref' at the stack top is not of a ReferenceType but of type '" + stack().peek() + "'.");
        }
        referenceTypeIsInitialized(areturn, (ReferenceType) stack().peek());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitARRAYLENGTH(ARRAYLENGTH arraylength) {
        arrayrefOfArrayType(arraylength, stack().peek(0));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitASTORE(ASTORE astore) {
        if (!(stack().peek() instanceof ReferenceType) && !(stack().peek() instanceof ReturnaddressType)) {
            constraintViolated(astore, "The 'objectref' is not of a ReferenceType or of ReturnaddressType but of " + stack().peek() + ".");
        }
        if (stack().peek() instanceof ReferenceType) {
            referenceTypeIsInitialized(astore, (ReferenceType) stack().peek());
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitATHROW(ATHROW athrow) {
        if (!(stack().peek() instanceof ObjectType) && !stack().peek().equals(Type.NULL)) {
            constraintViolated(athrow, "The 'objectref' is not of an (initialized) ObjectType but of type " + stack().peek() + ".");
        }
        if (stack().peek().equals(Type.NULL)) {
            return;
        }
        ObjectType objectType = (ObjectType) stack().peek();
        ObjectType objectType2 = (ObjectType) Type.getType("Ljava/lang/Throwable;");
        if (objectType.subclassOf(objectType2) || objectType.equals(objectType2)) {
            return;
        }
        constraintViolated(athrow, "The 'objectref' is not of class Throwable or of a subclass of Throwable, but of '" + stack().peek() + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBALOAD(BALOAD baload) {
        Type peek = stack().peek(1);
        indexOfInt(baload, stack().peek(0));
        if (arrayrefOfArrayType(baload, peek)) {
            ArrayType arrayType = (ArrayType) peek;
            if (arrayType.getElementType().equals(Type.BOOLEAN) || arrayType.getElementType().equals(Type.BYTE)) {
                return;
            }
            constraintViolated(baload, "The 'arrayref' does not refer to an array with elements of a Type.BYTE or Type.BOOLEAN but to an array of '" + arrayType.getElementType() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBASTORE(BASTORE bastore) {
        Type peek = stack().peek(2);
        Type peek2 = stack().peek(1);
        Type peek3 = stack().peek(0);
        indexOfInt(bastore, peek2);
        valueOfInt(bastore, peek3);
        if (arrayrefOfArrayType(bastore, peek)) {
            ArrayType arrayType = (ArrayType) peek;
            if (arrayType.getElementType().equals(Type.BOOLEAN) || arrayType.getElementType().equals(Type.BYTE)) {
                return;
            }
            constraintViolated(bastore, "The 'arrayref' does not refer to an array with elements of a Type.BYTE or Type.BOOLEAN but to an array of '" + arrayType.getElementType() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBIPUSH(BIPUSH bipush) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBREAKPOINT(BREAKPOINT breakpoint) {
        throw new AssertionViolatedException("In this JustIce verification pass there should not occur an illegal instruction such as BREAKPOINT.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCALOAD(CALOAD caload) {
        Type peek = stack().peek(1);
        indexOfInt(caload, stack().peek(0));
        arrayrefOfArrayType(caload, peek);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCASTORE(CASTORE castore) {
        Type peek = stack().peek(2);
        Type peek2 = stack().peek(1);
        Type peek3 = stack().peek(0);
        indexOfInt(castore, peek2);
        valueOfInt(castore, peek3);
        if (arrayrefOfArrayType(castore, peek)) {
            ArrayType arrayType = (ArrayType) peek;
            if (arrayType.getElementType().equals(Type.CHAR)) {
                return;
            }
            constraintViolated(castore, "The 'arrayref' does not refer to an array with elements of type char but to an array of type " + arrayType.getElementType() + ".");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCHECKCAST(CHECKCAST checkcast) {
        Type peek = stack().peek(0);
        if (peek instanceof ReferenceType) {
            referenceTypeIsInitialized(checkcast, (ReferenceType) peek);
        } else {
            constraintViolated(checkcast, "The 'objectref' is not of a ReferenceType but of type " + peek + ".");
        }
        Constant constant = this.cpg.getConstant(checkcast.getIndex());
        if (constant instanceof ConstantClass) {
            return;
        }
        constraintViolated(checkcast, "The Constant at 'index' is not a ConstantClass, but '" + constant + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCPInstruction(CPInstruction cPInstruction) {
        int index = cPInstruction.getIndex();
        if (index < 0 || index >= this.cpg.getSize()) {
            throw new AssertionViolatedException("Huh?! Constant pool index of instruction '" + cPInstruction + "' illegal? Pass 3a should have checked this!");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitD2F(D2F d2f) {
        if (stack().peek() != Type.DOUBLE) {
            constraintViolated(d2f, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitD2I(D2I d2i) {
        if (stack().peek() != Type.DOUBLE) {
            constraintViolated(d2i, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitD2L(D2L d2l) {
        if (stack().peek() != Type.DOUBLE) {
            constraintViolated(d2l, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDADD(DADD dadd) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(dadd, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(dadd, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDALOAD(DALOAD daload) {
        indexOfInt(daload, stack().peek());
        if (stack().peek(1) == Type.NULL) {
            return;
        }
        if (!(stack().peek(1) instanceof ArrayType)) {
            constraintViolated(daload, "Stack next-to-top must be of type double[] but is '" + stack().peek(1) + "'.");
        }
        if (((ArrayType) stack().peek(1)).getBasicType() != Type.DOUBLE) {
            constraintViolated(daload, "Stack next-to-top must be of type double[] but is '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDASTORE(DASTORE dastore) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(dastore, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        indexOfInt(dastore, stack().peek(1));
        if (stack().peek(2) == Type.NULL) {
            return;
        }
        if (!(stack().peek(2) instanceof ArrayType)) {
            constraintViolated(dastore, "Stack next-to-next-to-top must be of type double[] but is '" + stack().peek(2) + "'.");
        }
        if (((ArrayType) stack().peek(2)).getBasicType() != basicType) {
            constraintViolated(dastore, "Stack next-to-next-to-top must be of type double[] but is '" + stack().peek(2) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDCMPG(DCMPG dcmpg) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(dcmpg, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(dcmpg, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDCMPL(DCMPL dcmpl) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(dcmpl, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(dcmpl, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDCONST(DCONST dconst) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDDIV(DDIV ddiv) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(ddiv, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ddiv, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDLOAD(DLOAD dload) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDMUL(DMUL dmul) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(dmul, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(dmul, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDNEG(DNEG dneg) {
        if (stack().peek() != Type.DOUBLE) {
            constraintViolated(dneg, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDREM(DREM drem) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(drem, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(drem, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDRETURN(DRETURN dreturn) {
        if (stack().peek() != Type.DOUBLE) {
            constraintViolated(dreturn, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDSTORE(DSTORE dstore) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDSUB(DSUB dsub) {
        Type peek = stack().peek();
        BasicType basicType = Type.DOUBLE;
        if (peek != basicType) {
            constraintViolated(dsub, "The value at the stack top is not of type 'double', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(dsub, "The value at the stack next-to-top is not of type 'double', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP(DUP dup) {
        if (stack().peek().getSize() != 1) {
            constraintViolated(dup, "Won't DUP type on stack top '" + stack().peek() + "' because it must occupy exactly one slot, not '" + stack().peek().getSize() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP2(DUP2 dup2) {
        if (stack().peek().getSize() == 2 || stack().peek(1).getSize() == 1) {
            return;
        }
        constraintViolated(dup2, "If stack top's size is 1, then stack next-to-top's size must also be 1. But it is '" + stack().peek(1) + "' of size '" + stack().peek(1).getSize() + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP2_X1(DUP2_X1 dup2_x1) {
        if (stack().peek().getSize() == 2) {
            if (stack().peek(1).getSize() != 1) {
                constraintViolated(dup2_x1, "If stack top's size is 2, then stack next-to-top's size must be 1. But it is '" + stack().peek(1) + "' of size '" + stack().peek(1).getSize() + "'.");
                return;
            }
            return;
        }
        if (stack().peek(1).getSize() != 1) {
            constraintViolated(dup2_x1, "If stack top's size is 1, then stack next-to-top's size must also be 1. But it is '" + stack().peek(1) + "' of size '" + stack().peek(1).getSize() + "'.");
        }
        if (stack().peek(2).getSize() != 1) {
            constraintViolated(dup2_x1, "If stack top's size is 1, then stack next-to-next-to-top's size must also be 1. But it is '" + stack().peek(2) + "' of size '" + stack().peek(2).getSize() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP2_X2(DUP2_X2 dup2_x2) {
        if (stack().peek(0).getSize() == 2) {
            if (stack().peek(1).getSize() == 2 || stack().peek(2).getSize() == 1) {
                return;
            }
            constraintViolated(dup2_x2, "If stack top's size is 2 and stack-next-to-top's size is 1, then stack next-to-next-to-top's size must also be 1. But it is '" + stack().peek(2) + "' of size '" + stack().peek(2).getSize() + "'.");
        } else if (stack().peek(1).getSize() == 1 && (stack().peek(2).getSize() == 2 || stack().peek(3).getSize() == 1)) {
            return;
        }
        constraintViolated(dup2_x2, "The operand sizes on the stack do not match any of the four forms of usage of this instruction.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP_X1(DUP_X1 dup_x1) {
        if (stack().peek().getSize() != 1) {
            constraintViolated(dup_x1, "Type on stack top '" + stack().peek() + "' should occupy exactly one slot, not '" + stack().peek().getSize() + "'.");
        }
        if (stack().peek(1).getSize() != 1) {
            constraintViolated(dup_x1, "Type on stack next-to-top '" + stack().peek(1) + "' should occupy exactly one slot, not '" + stack().peek(1).getSize() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP_X2(DUP_X2 dup_x2) {
        if (stack().peek().getSize() != 1) {
            constraintViolated(dup_x2, "Stack top type must be of size 1, but is '" + stack().peek() + "' of size '" + stack().peek().getSize() + "'.");
        }
        if (stack().peek(1).getSize() == 2 || stack().peek(2).getSize() == 1) {
            return;
        }
        constraintViolated(dup_x2, "If stack top's size is 1 and stack next-to-top's size is 1, stack next-to-next-to-top's size must also be 1, but is: '" + stack().peek(2) + "' of size '" + stack().peek(2).getSize() + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitF2D(F2D f2d) {
        if (stack().peek() != Type.FLOAT) {
            constraintViolated(f2d, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitF2I(F2I f2i) {
        if (stack().peek() != Type.FLOAT) {
            constraintViolated(f2i, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitF2L(F2L f2l) {
        if (stack().peek() != Type.FLOAT) {
            constraintViolated(f2l, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFADD(FADD fadd) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fadd, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(fadd, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFALOAD(FALOAD faload) {
        indexOfInt(faload, stack().peek());
        if (stack().peek(1) == Type.NULL) {
            return;
        }
        if (!(stack().peek(1) instanceof ArrayType)) {
            constraintViolated(faload, "Stack next-to-top must be of type float[] but is '" + stack().peek(1) + "'.");
        }
        if (((ArrayType) stack().peek(1)).getBasicType() != Type.FLOAT) {
            constraintViolated(faload, "Stack next-to-top must be of type float[] but is '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFASTORE(FASTORE fastore) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fastore, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        indexOfInt(fastore, stack().peek(1));
        if (stack().peek(2) == Type.NULL) {
            return;
        }
        if (!(stack().peek(2) instanceof ArrayType)) {
            constraintViolated(fastore, "Stack next-to-next-to-top must be of type float[] but is '" + stack().peek(2) + "'.");
        }
        if (((ArrayType) stack().peek(2)).getBasicType() != basicType) {
            constraintViolated(fastore, "Stack next-to-next-to-top must be of type float[] but is '" + stack().peek(2) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFCMPG(FCMPG fcmpg) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fcmpg, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(fcmpg, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFCMPL(FCMPL fcmpl) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fcmpl, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(fcmpl, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFCONST(FCONST fconst) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFDIV(FDIV fdiv) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fdiv, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(fdiv, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFLOAD(FLOAD fload) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFMUL(FMUL fmul) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fmul, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(fmul, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFNEG(FNEG fneg) {
        if (stack().peek() != Type.FLOAT) {
            constraintViolated(fneg, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFREM(FREM frem) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(frem, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(frem, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFRETURN(FRETURN freturn) {
        if (stack().peek() != Type.FLOAT) {
            constraintViolated(freturn, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFSTORE(FSTORE fstore) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFSUB(FSUB fsub) {
        Type peek = stack().peek();
        BasicType basicType = Type.FLOAT;
        if (peek != basicType) {
            constraintViolated(fsub, "The value at the stack top is not of type 'float', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(fsub, "The value at the stack next-to-top is not of type 'float', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFieldInstruction(FieldInstruction fieldInstruction) {
        Constant constant = this.cpg.getConstant(fieldInstruction.getIndex());
        if (!(constant instanceof ConstantFieldref)) {
            constraintViolated(fieldInstruction, "Index '" + fieldInstruction.getIndex() + "' should refer to a CONSTANT_Fieldref_info structure, but refers to '" + constant + "'.");
        }
        Type type = fieldInstruction.getType(this.cpg);
        if (type instanceof ObjectType) {
            String className = ((ObjectType) type).getClassName();
            VerificationResult doPass2 = VerifierFactory.getVerifier(className).doPass2();
            if (doPass2.getStatus() != 1) {
                constraintViolated(fieldInstruction, "Class '" + className + "' is referenced, but cannot be loaded and resolved: '" + doPass2 + "'.");
            }
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGETFIELD(GETFIELD getfield) {
        Field field;
        Type peek = stack().peek();
        if (!(peek instanceof ObjectType) && peek != Type.NULL) {
            constraintViolated(getfield, "Stack top should be an object reference that's not an array reference, but is '" + peek + "'.");
        }
        String fieldName = getfield.getFieldName(this.cpg);
        Field[] fields = Repository.lookupClass(getfield.getClassType(this.cpg).getClassName()).getFields();
        int i = 0;
        while (true) {
            if (i >= fields.length) {
                field = null;
                break;
            } else {
                if (fields[i].getName().equals(fieldName)) {
                    field = fields[i];
                    break;
                }
                i++;
            }
        }
        if (field == null) {
            throw new AssertionViolatedException("Field not found?!?");
        }
        if (field.isProtected()) {
            ObjectType classType = getfield.getClassType(this.cpg);
            ObjectType objectType = new ObjectType(this.f64083mg.getClassName());
            if (classType.equals(objectType) || objectType.subclassOf(classType)) {
                Type peek2 = stack().peek();
                if (peek2 == Type.NULL) {
                    return;
                }
                if (!(peek2 instanceof ObjectType)) {
                    constraintViolated(getfield, "The 'objectref' must refer to an object that's not an array. Found instead: '" + peek2 + "'.");
                }
                ObjectType objectType2 = (ObjectType) peek2;
                if (!objectType2.equals(objectType)) {
                    objectType2.subclassOf(objectType);
                }
            }
        }
        if (field.isStatic()) {
            constraintViolated(getfield, "Referenced field '" + field + "' is static which it shouldn't be.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGETSTATIC(GETSTATIC getstatic) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGOTO(GOTO r1) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGOTO_W(GOTO_W goto_w) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2B(I2B i2b) {
        if (stack().peek() != Type.INT) {
            constraintViolated(i2b, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2C(I2C i2c) {
        if (stack().peek() != Type.INT) {
            constraintViolated(i2c, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2D(I2D i2d) {
        if (stack().peek() != Type.INT) {
            constraintViolated(i2d, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2F(I2F i2f) {
        if (stack().peek() != Type.INT) {
            constraintViolated(i2f, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2L(I2L i2l) {
        if (stack().peek() != Type.INT) {
            constraintViolated(i2l, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2S(I2S i2s) {
        if (stack().peek() != Type.INT) {
            constraintViolated(i2s, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIADD(IADD iadd) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(iadd, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(iadd, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIALOAD(IALOAD iaload) {
        indexOfInt(iaload, stack().peek());
        if (stack().peek(1) == Type.NULL) {
            return;
        }
        if (!(stack().peek(1) instanceof ArrayType)) {
            constraintViolated(iaload, "Stack next-to-top must be of type int[] but is '" + stack().peek(1) + "'.");
        }
        if (((ArrayType) stack().peek(1)).getBasicType() != Type.INT) {
            constraintViolated(iaload, "Stack next-to-top must be of type int[] but is '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIAND(IAND iand) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(iand, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(iand, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIASTORE(IASTORE iastore) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(iastore, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        indexOfInt(iastore, stack().peek(1));
        if (stack().peek(2) == Type.NULL) {
            return;
        }
        if (!(stack().peek(2) instanceof ArrayType)) {
            constraintViolated(iastore, "Stack next-to-next-to-top must be of type int[] but is '" + stack().peek(2) + "'.");
        }
        if (((ArrayType) stack().peek(2)).getBasicType() != basicType) {
            constraintViolated(iastore, "Stack next-to-next-to-top must be of type int[] but is '" + stack().peek(2) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitICONST(ICONST iconst) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIDIV(IDIV idiv) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(idiv, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(idiv, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFEQ(IFEQ ifeq) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ifeq, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFGE(IFGE ifge) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ifge, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFGT(IFGT ifgt) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ifgt, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFLE(IFLE ifle) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ifle, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFLT(IFLT iflt) {
        if (stack().peek() != Type.INT) {
            constraintViolated(iflt, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFNE(IFNE ifne) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ifne, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFNONNULL(IFNONNULL ifnonnull) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(ifnonnull, "The value at the stack top is not of a ReferenceType, but of type '" + stack().peek() + "'.");
        }
        referenceTypeIsInitialized(ifnonnull, (ReferenceType) stack().peek());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFNULL(IFNULL ifnull) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(ifnull, "The value at the stack top is not of a ReferenceType, but of type '" + stack().peek() + "'.");
        }
        referenceTypeIsInitialized(ifnull, (ReferenceType) stack().peek());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ACMPEQ(IF_ACMPEQ if_acmpeq) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(if_acmpeq, "The value at the stack top is not of a ReferenceType, but of type '" + stack().peek() + "'.");
        }
        referenceTypeIsInitialized(if_acmpeq, (ReferenceType) stack().peek());
        if (!(stack().peek(1) instanceof ReferenceType)) {
            constraintViolated(if_acmpeq, "The value at the stack next-to-top is not of a ReferenceType, but of type '" + stack().peek(1) + "'.");
        }
        referenceTypeIsInitialized(if_acmpeq, (ReferenceType) stack().peek(1));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ACMPNE(IF_ACMPNE if_acmpne) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(if_acmpne, "The value at the stack top is not of a ReferenceType, but of type '" + stack().peek() + "'.");
            referenceTypeIsInitialized(if_acmpne, (ReferenceType) stack().peek());
        }
        if (stack().peek(1) instanceof ReferenceType) {
            return;
        }
        constraintViolated(if_acmpne, "The value at the stack next-to-top is not of a ReferenceType, but of type '" + stack().peek(1) + "'.");
        referenceTypeIsInitialized(if_acmpne, (ReferenceType) stack().peek(1));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPEQ(IF_ICMPEQ if_icmpeq) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(if_icmpeq, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(if_icmpeq, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPGE(IF_ICMPGE if_icmpge) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(if_icmpge, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(if_icmpge, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPGT(IF_ICMPGT if_icmpgt) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(if_icmpgt, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(if_icmpgt, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPLE(IF_ICMPLE if_icmple) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(if_icmple, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(if_icmple, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPLT(IF_ICMPLT if_icmplt) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(if_icmplt, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(if_icmplt, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPNE(IF_ICMPNE if_icmpne) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(if_icmpne, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(if_icmpne, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIINC(IINC iinc) {
        if (locals().maxLocals() <= (iinc.getType(this.cpg).getSize() == 1 ? iinc.getIndex() : iinc.getIndex() + 1)) {
            constraintViolated(iinc, "The 'index' is not a valid index into the local variable array.");
        }
        indexOfInt(iinc, locals().get(iinc.getIndex()));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitILOAD(ILOAD iload) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIMPDEP1(IMPDEP1 impdep1) {
        throw new AssertionViolatedException("In this JustIce verification pass there should not occur an illegal instruction such as IMPDEP1.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIMPDEP2(IMPDEP2 impdep2) {
        throw new AssertionViolatedException("In this JustIce verification pass there should not occur an illegal instruction such as IMPDEP2.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIMUL(IMUL imul) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(imul, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(imul, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINEG(INEG ineg) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ineg, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINSTANCEOF(INSTANCEOF r4) {
        Type peek = stack().peek(0);
        if (peek instanceof ReferenceType) {
            referenceTypeIsInitialized(r4, (ReferenceType) peek);
        } else {
            constraintViolated(r4, "The 'objectref' is not of a ReferenceType but of type " + peek + ".");
        }
        Constant constant = this.cpg.getConstant(r4.getIndex());
        if (constant instanceof ConstantClass) {
            return;
        }
        constraintViolated(r4, "The Constant at 'index' is not a ConstantClass, but '" + constant + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKEINTERFACE(INVOKEINTERFACE invokeinterface) {
        int count = invokeinterface.getCount();
        if (count == 0) {
            constraintViolated(invokeinterface, "The 'count' argument must not be 0.");
        }
        Type type = invokeinterface.getType(this.cpg);
        int i = 1;
        if (type instanceof ObjectType) {
            String className = ((ObjectType) type).getClassName();
            VerificationResult doPass2 = VerifierFactory.getVerifier(className).doPass2();
            if (doPass2.getStatus() != 1) {
                constraintViolated(invokeinterface, "Class '" + className + "' is referenced, but cannot be loaded and resolved: '" + doPass2 + "'.");
            }
        }
        Type[] argumentTypes = invokeinterface.getArgumentTypes(this.cpg);
        int length = argumentTypes.length;
        int i2 = length - 1;
        for (int i3 = i2; i3 >= 0; i3--) {
            Type peek = stack().peek(i2 - i3);
            Type type2 = argumentTypes[i3];
            if (type2 == Type.BOOLEAN || type2 == Type.BYTE || type2 == Type.CHAR || type2 == Type.SHORT) {
                type2 = Type.INT;
            }
            if (!peek.equals(type2) && (!(peek instanceof ReferenceType) || !(type2 instanceof ReferenceType))) {
                constraintViolated(invokeinterface, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack.");
            }
        }
        Type peek2 = stack().peek(length);
        if (peek2 == Type.NULL) {
            return;
        }
        if (!(peek2 instanceof ReferenceType)) {
            constraintViolated(invokeinterface, "Expecting a reference type as 'objectref' on the stack, not a '" + peek2 + "'.");
        }
        referenceTypeIsInitialized(invokeinterface, (ReferenceType) peek2);
        if (!(peek2 instanceof ObjectType) && !(peek2 instanceof ArrayType)) {
            constraintViolated(invokeinterface, "Expecting an ObjectType as 'objectref' on the stack, not a '" + peek2 + "'.");
        }
        for (Type type3 : argumentTypes) {
            i += type3.getSize();
        }
        if (count != i) {
            constraintViolated(invokeinterface, "The 'count' argument should probably read '" + i + "' but is '" + count + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKESPECIAL(INVOKESPECIAL invokespecial) {
        String className;
        if (invokespecial.getMethodName(this.cpg).equals(Constants.CONSTRUCTOR_NAME) && !(stack().peek(invokespecial.getArgumentTypes(this.cpg).length) instanceof UninitializedObjectType)) {
            constraintViolated(invokespecial, "Possibly initializing object twice. A valid instruction sequence must not have an uninitialized object on the operand stack or in a local variable during a backwards branch, or in a local variable in code protected by an exception handler. Please see The Java Virtual Machine Specification, Second Edition, 4.9.4 (pages 147 and 148) for details.");
        }
        Type type = invokespecial.getType(this.cpg);
        if (type instanceof ObjectType) {
            String className2 = ((ObjectType) type).getClassName();
            VerificationResult doPass2 = VerifierFactory.getVerifier(className2).doPass2();
            if (doPass2.getStatus() != 1) {
                constraintViolated(invokespecial, "Class '" + className2 + "' is referenced, but cannot be loaded and resolved: '" + doPass2 + "'.");
            }
        }
        Type[] argumentTypes = invokespecial.getArgumentTypes(this.cpg);
        int length = argumentTypes.length;
        int i = length - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            Type peek = stack().peek(i - i2);
            Type type2 = argumentTypes[i2];
            if (type2 == Type.BOOLEAN || type2 == Type.BYTE || type2 == Type.CHAR || type2 == Type.SHORT) {
                type2 = Type.INT;
            }
            if (!peek.equals(type2)) {
                if (!(peek instanceof ReferenceType) || !(type2 instanceof ReferenceType)) {
                    constraintViolated(invokespecial, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack.");
                } else if (!((ReferenceType) peek).isAssignmentCompatibleWith((ReferenceType) type2)) {
                    constraintViolated(invokespecial, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack (which is not assignment compatible).");
                }
            }
        }
        Type peek2 = stack().peek(length);
        if (peek2 == Type.NULL) {
            return;
        }
        if (!(peek2 instanceof ReferenceType)) {
            constraintViolated(invokespecial, "Expecting a reference type as 'objectref' on the stack, not a '" + peek2 + "'.");
        }
        if (invokespecial.getMethodName(this.cpg).equals(Constants.CONSTRUCTOR_NAME)) {
            if (!(peek2 instanceof UninitializedObjectType)) {
                constraintViolated(invokespecial, "Expecting an UninitializedObjectType as 'objectref' on the stack, not a '" + peek2 + "'. Otherwise, you couldn't invoke a method since an array has no methods (not to speak of a return address).");
            }
            className = ((UninitializedObjectType) peek2).getInitialized().getClassName();
        } else {
            referenceTypeIsInitialized(invokespecial, (ReferenceType) peek2);
            if (!(peek2 instanceof ObjectType)) {
                if (peek2 instanceof ArrayType) {
                    peek2 = GENERIC_ARRAY;
                } else {
                    constraintViolated(invokespecial, "Expecting an ObjectType as 'objectref' on the stack, not a '" + peek2 + "'.");
                }
            }
            className = ((ObjectType) peek2).getClassName();
        }
        String className3 = invokespecial.getClassName(this.cpg);
        if (Repository.instanceOf(className, className3)) {
            return;
        }
        constraintViolated(invokespecial, "The 'objref' item '" + peek2 + "' does not implement '" + className3 + "' as expected.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKESTATIC(INVOKESTATIC invokestatic) {
        Type type = invokestatic.getType(this.cpg);
        if (type instanceof ObjectType) {
            String className = ((ObjectType) type).getClassName();
            VerificationResult doPass2 = VerifierFactory.getVerifier(className).doPass2();
            if (doPass2.getStatus() != 1) {
                constraintViolated(invokestatic, "Class '" + className + "' is referenced, but cannot be loaded and resolved: '" + doPass2 + "'.");
            }
        }
        Type[] argumentTypes = invokestatic.getArgumentTypes(this.cpg);
        int length = argumentTypes.length - 1;
        for (int i = length; i >= 0; i--) {
            Type peek = stack().peek(length - i);
            Type type2 = argumentTypes[i];
            if (type2 == Type.BOOLEAN || type2 == Type.BYTE || type2 == Type.CHAR || type2 == Type.SHORT) {
                type2 = Type.INT;
            }
            if (!peek.equals(type2)) {
                if (!(peek instanceof ReferenceType) || !(type2 instanceof ReferenceType)) {
                    constraintViolated(invokestatic, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack.");
                } else if (!((ReferenceType) peek).isAssignmentCompatibleWith((ReferenceType) type2)) {
                    constraintViolated(invokestatic, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack (which is not assignment compatible).");
                }
            }
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKEVIRTUAL(INVOKEVIRTUAL invokevirtual) {
        Type type = invokevirtual.getType(this.cpg);
        if (type instanceof ObjectType) {
            String className = ((ObjectType) type).getClassName();
            VerificationResult doPass2 = VerifierFactory.getVerifier(className).doPass2();
            if (doPass2.getStatus() != 1) {
                constraintViolated(invokevirtual, "Class '" + className + "' is referenced, but cannot be loaded and resolved: '" + doPass2 + "'.");
            }
        }
        Type[] argumentTypes = invokevirtual.getArgumentTypes(this.cpg);
        int length = argumentTypes.length;
        int i = length - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            Type peek = stack().peek(i - i2);
            Type type2 = argumentTypes[i2];
            if (type2 == Type.BOOLEAN || type2 == Type.BYTE || type2 == Type.CHAR || type2 == Type.SHORT) {
                type2 = Type.INT;
            }
            if (!peek.equals(type2)) {
                if (!(peek instanceof ReferenceType) || !(type2 instanceof ReferenceType)) {
                    constraintViolated(invokevirtual, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack.");
                } else if (!((ReferenceType) peek).isAssignmentCompatibleWith((ReferenceType) type2)) {
                    constraintViolated(invokevirtual, "Expecting a '" + type2 + "' but found a '" + peek + "' on the stack (which is not assignment compatible).");
                }
            }
        }
        Type peek2 = stack().peek(length);
        if (peek2 == Type.NULL) {
            return;
        }
        if (!(peek2 instanceof ReferenceType)) {
            constraintViolated(invokevirtual, "Expecting a reference type as 'objectref' on the stack, not a '" + peek2 + "'.");
        }
        referenceTypeIsInitialized(invokevirtual, (ReferenceType) peek2);
        if (!(peek2 instanceof ObjectType)) {
            if (peek2 instanceof ArrayType) {
                peek2 = GENERIC_ARRAY;
            } else {
                constraintViolated(invokevirtual, "Expecting an ObjectType as 'objectref' on the stack, not a '" + peek2 + "'.");
            }
        }
        String className2 = ((ObjectType) peek2).getClassName();
        String className3 = invokevirtual.getClassName(this.cpg);
        if (Repository.instanceOf(className2, className3)) {
            return;
        }
        constraintViolated(invokevirtual, "The 'objref' item '" + peek2 + "' does not implement '" + className3 + "' as expected.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIOR(IOR ior) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(ior, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ior, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIREM(IREM irem) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(irem, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(irem, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIRETURN(IRETURN ireturn) {
        if (stack().peek() != Type.INT) {
            constraintViolated(ireturn, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISHL(ISHL ishl) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(ishl, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ishl, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISHR(ISHR ishr) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(ishr, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ishr, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISTORE(ISTORE istore) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISUB(ISUB isub) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(isub, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(isub, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIUSHR(IUSHR iushr) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(iushr, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(iushr, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIXOR(IXOR ixor) {
        Type peek = stack().peek();
        BasicType basicType = Type.INT;
        if (peek != basicType) {
            constraintViolated(ixor, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ixor, "The value at the stack next-to-top is not of type 'int', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitInvokeInstruction(InvokeInstruction invokeInstruction) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitJSR(JSR jsr) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitJSR_W(JSR_W jsr_w) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitL2D(L2D l2d) {
        if (stack().peek() != Type.LONG) {
            constraintViolated(l2d, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitL2F(L2F l2f) {
        if (stack().peek() != Type.LONG) {
            constraintViolated(l2f, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitL2I(L2I l2i) {
        if (stack().peek() != Type.LONG) {
            constraintViolated(l2i, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLADD(LADD ladd) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(ladd, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ladd, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLALOAD(LALOAD laload) {
        indexOfInt(laload, stack().peek());
        if (stack().peek(1) == Type.NULL) {
            return;
        }
        if (!(stack().peek(1) instanceof ArrayType)) {
            constraintViolated(laload, "Stack next-to-top must be of type long[] but is '" + stack().peek(1) + "'.");
        }
        if (((ArrayType) stack().peek(1)).getBasicType() != Type.LONG) {
            constraintViolated(laload, "Stack next-to-top must be of type long[] but is '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLAND(LAND land) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(land, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(land, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLASTORE(LASTORE lastore) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lastore, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        indexOfInt(lastore, stack().peek(1));
        if (stack().peek(2) == Type.NULL) {
            return;
        }
        if (!(stack().peek(2) instanceof ArrayType)) {
            constraintViolated(lastore, "Stack next-to-next-to-top must be of type long[] but is '" + stack().peek(2) + "'.");
        }
        if (((ArrayType) stack().peek(2)).getBasicType() != basicType) {
            constraintViolated(lastore, "Stack next-to-next-to-top must be of type long[] but is '" + stack().peek(2) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLCMP(LCMP lcmp) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lcmp, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(lcmp, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLCONST(LCONST lconst) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDC(LDC ldc) {
        Constant constant = this.cpg.getConstant(ldc.getIndex());
        if ((constant instanceof ConstantInteger) || (constant instanceof ConstantFloat) || (constant instanceof ConstantString)) {
            return;
        }
        constraintViolated(ldc, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is '" + constant + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDC2_W(LDC2_W ldc2_w) {
        Constant constant = this.cpg.getConstant(ldc2_w.getIndex());
        if ((constant instanceof ConstantLong) || (constant instanceof ConstantDouble)) {
            return;
        }
        constraintViolated(ldc2_w, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is '" + constant + "'.");
    }

    public void visitLDC_W(LDC_W ldc_w) {
        Constant constant = this.cpg.getConstant(ldc_w.getIndex());
        if ((constant instanceof ConstantInteger) || (constant instanceof ConstantFloat) || (constant instanceof ConstantString)) {
            return;
        }
        constraintViolated(ldc_w, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is '" + constant + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDIV(LDIV ldiv) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(ldiv, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(ldiv, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLLOAD(LLOAD lload) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLMUL(LMUL lmul) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lmul, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(lmul, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLNEG(LNEG lneg) {
        if (stack().peek() != Type.LONG) {
            constraintViolated(lneg, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLOOKUPSWITCH(LOOKUPSWITCH lookupswitch) {
        if (stack().peek() != Type.INT) {
            constraintViolated(lookupswitch, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLOR(LOR lor) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lor, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(lor, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLREM(LREM lrem) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lrem, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(lrem, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLRETURN(LRETURN lreturn) {
        if (stack().peek() != Type.LONG) {
            constraintViolated(lreturn, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSHL(LSHL lshl) {
        if (stack().peek() != Type.INT) {
            constraintViolated(lshl, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != Type.LONG) {
            constraintViolated(lshl, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSHR(LSHR lshr) {
        if (stack().peek() != Type.INT) {
            constraintViolated(lshr, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != Type.LONG) {
            constraintViolated(lshr, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSTORE(LSTORE lstore) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSUB(LSUB lsub) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lsub, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(lsub, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLUSHR(LUSHR lushr) {
        if (stack().peek() != Type.INT) {
            constraintViolated(lushr, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != Type.LONG) {
            constraintViolated(lushr, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLXOR(LXOR lxor) {
        Type peek = stack().peek();
        BasicType basicType = Type.LONG;
        if (peek != basicType) {
            constraintViolated(lxor, "The value at the stack top is not of type 'long', but of type '" + stack().peek() + "'.");
        }
        if (stack().peek(1) != basicType) {
            constraintViolated(lxor, "The value at the stack next-to-top is not of type 'long', but of type '" + stack().peek(1) + "'.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLoadClass(LoadClass loadClass) {
        ObjectType loadClassType = loadClass.getLoadClassType(this.cpg);
        if (loadClassType != null) {
            VerificationResult doPass2 = VerifierFactory.getVerifier(loadClassType.getClassName()).doPass2();
            if (doPass2.getStatus() != 1) {
                constraintViolated((Instruction) loadClass, "Class '" + loadClass.getLoadClassType(this.cpg).getClassName() + "' is referenced, but cannot be loaded and resolved: '" + doPass2 + "'.");
            }
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLoadInstruction(LoadInstruction loadInstruction) {
        Type type = locals().get(loadInstruction.getIndex());
        Type type2 = Type.UNKNOWN;
        if (type == type2) {
            constraintViolated(loadInstruction, "Read-Access on local variable " + loadInstruction.getIndex() + " with unknown content.");
        }
        if (loadInstruction.getType(this.cpg).getSize() == 2 && locals().get(loadInstruction.getIndex() + 1) != type2) {
            constraintViolated(loadInstruction, "Reading a two-locals value from local variables " + loadInstruction.getIndex() + CloudStorageConstants.OPERATION_AND + (loadInstruction.getIndex() + 1) + " where the latter one is destroyed.");
        }
        if (loadInstruction instanceof ALOAD) {
            if (!(locals().get(loadInstruction.getIndex()) instanceof ReferenceType)) {
                constraintViolated(loadInstruction, "Local Variable type and LOADing Instruction type mismatch: Local Variable: '" + locals().get(loadInstruction.getIndex()) + "'; Instruction expects a ReferenceType.");
            }
        } else if (locals().get(loadInstruction.getIndex()) != loadInstruction.getType(this.cpg)) {
            constraintViolated(loadInstruction, "Local Variable type and LOADing Instruction type mismatch: Local Variable: '" + locals().get(loadInstruction.getIndex()) + "'; Instruction type: '" + loadInstruction.getType(this.cpg) + "'.");
        }
        if (stack().maxStack() - stack().slotsUsed() < loadInstruction.getType(this.cpg).getSize()) {
            constraintViolated(loadInstruction, "Not enough free stack slots to load a '" + loadInstruction.getType(this.cpg) + "' onto the OperandStack.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLocalVariableInstruction(LocalVariableInstruction localVariableInstruction) {
        if (locals().maxLocals() <= (localVariableInstruction.getType(this.cpg).getSize() == 1 ? localVariableInstruction.getIndex() : localVariableInstruction.getIndex() + 1)) {
            constraintViolated(localVariableInstruction, "The 'index' is not a valid index into the local variable array.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitMONITORENTER(MONITORENTER monitorenter) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(monitorenter, "The stack top should be of a ReferenceType, but is '" + stack().peek() + "'.");
        }
        referenceTypeIsInitialized(monitorenter, (ReferenceType) stack().peek());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitMONITOREXIT(MONITOREXIT monitorexit) {
        if (!(stack().peek() instanceof ReferenceType)) {
            constraintViolated(monitorexit, "The stack top should be of a ReferenceType, but is '" + stack().peek() + "'.");
        }
        referenceTypeIsInitialized(monitorexit, (ReferenceType) stack().peek());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitMULTIANEWARRAY(MULTIANEWARRAY multianewarray) {
        short dimensions = multianewarray.getDimensions();
        for (int i = 0; i < dimensions; i++) {
            if (stack().peek(i) != Type.INT) {
                constraintViolated(multianewarray, "The '" + ((int) dimensions) + "' upper stack types should be 'int' but aren't.");
            }
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitNEW(NEW r5) {
        Type type = r5.getType(this.cpg);
        if (!(type instanceof ReferenceType)) {
            throw new AssertionViolatedException("NEW.getType() returning a non-reference type?!");
        }
        if (!(type instanceof ObjectType)) {
            constraintViolated(r5, "Expecting a class type (ObjectType) to work on. Found: '" + type + "'.");
        }
        ObjectType objectType = (ObjectType) type;
        if (objectType.referencesClass()) {
            return;
        }
        constraintViolated(r5, "Expecting a class type (ObjectType) to work on. Found: '" + objectType + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitNEWARRAY(NEWARRAY newarray) {
        if (stack().peek() != Type.INT) {
            constraintViolated(newarray, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitNOP(NOP nop) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPOP(POP pop) {
        if (stack().peek().getSize() != 1) {
            constraintViolated(pop, "Stack top size should be 1 but stack top is '" + stack().peek() + "' of size '" + stack().peek().getSize() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPOP2(POP2 pop2) {
        if (stack().peek().getSize() != 2) {
            constraintViolated(pop2, "Stack top size should be 2 but stack top is '" + stack().peek() + "' of size '" + stack().peek().getSize() + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPUTFIELD(PUTFIELD putfield) {
        ReferenceType referenceType;
        Field field;
        Type peek = stack().peek(1);
        if (!(peek instanceof ObjectType) && peek != Type.NULL) {
            constraintViolated(putfield, "Stack next-to-top should be an object reference that's not an array reference, but is '" + peek + "'.");
        }
        String fieldName = putfield.getFieldName(this.cpg);
        Field[] fields = Repository.lookupClass(putfield.getClassType(this.cpg).getClassName()).getFields();
        int i = 0;
        while (true) {
            referenceType = null;
            if (i >= fields.length) {
                field = null;
                break;
            } else {
                if (fields[i].getName().equals(fieldName)) {
                    field = fields[i];
                    break;
                }
                i++;
            }
        }
        if (field == null) {
            throw new AssertionViolatedException("Field not found?!?");
        }
        Type peek2 = stack().peek();
        Type type = Type.getType(field.getSignature());
        Type type2 = (type == Type.BOOLEAN || type == Type.BYTE || type == Type.CHAR || type == Type.SHORT) ? Type.INT : type;
        if (type instanceof ReferenceType) {
            if (peek2 instanceof ReferenceType) {
                referenceType = (ReferenceType) peek2;
                referenceTypeIsInitialized(putfield, referenceType);
            } else {
                constraintViolated(putfield, "The stack top type '" + peek2 + "' is not of a reference type as expected.");
            }
            if (!referenceType.isAssignmentCompatibleWith(type2)) {
                constraintViolated(putfield, "The stack top type '" + peek2 + "' is not assignment compatible with '" + type2 + "'.");
            }
        } else if (type2 != peek2) {
            constraintViolated(putfield, "The stack top type '" + peek2 + "' is not of type '" + type2 + "' as expected.");
        }
        if (field.isProtected()) {
            ObjectType classType = putfield.getClassType(this.cpg);
            ObjectType objectType = new ObjectType(this.f64083mg.getClassName());
            if (classType.equals(objectType) || objectType.subclassOf(classType)) {
                Type peek3 = stack().peek(1);
                if (peek3 == Type.NULL) {
                    return;
                }
                if (!(peek3 instanceof ObjectType)) {
                    constraintViolated(putfield, "The 'objectref' must refer to an object that's not an array. Found instead: '" + peek3 + "'.");
                }
                ObjectType objectType2 = (ObjectType) peek3;
                if (!objectType2.equals(objectType) && !objectType2.subclassOf(objectType)) {
                    constraintViolated(putfield, "The referenced field has the ACC_PROTECTED modifier, and it's a member of the current class or a superclass of the current class. However, the referenced object type '" + stack().peek() + "' is not the current class or a subclass of the current class.");
                }
            }
        }
        if (field.isStatic()) {
            constraintViolated(putfield, "Referenced field '" + field + "' is static which it shouldn't be.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPUTSTATIC(PUTSTATIC putstatic) {
        ReferenceType referenceType;
        Field field;
        String fieldName = putstatic.getFieldName(this.cpg);
        Field[] fields = Repository.lookupClass(putstatic.getClassType(this.cpg).getClassName()).getFields();
        int i = 0;
        while (true) {
            referenceType = null;
            if (i >= fields.length) {
                field = null;
                break;
            } else {
                if (fields[i].getName().equals(fieldName)) {
                    field = fields[i];
                    break;
                }
                i++;
            }
        }
        if (field == null) {
            throw new AssertionViolatedException("Field not found?!?");
        }
        Type peek = stack().peek();
        Type type = Type.getType(field.getSignature());
        Type type2 = (type == Type.BOOLEAN || type == Type.BYTE || type == Type.CHAR || type == Type.SHORT) ? Type.INT : type;
        if (!(type instanceof ReferenceType)) {
            if (type2 != peek) {
                constraintViolated(putstatic, "The stack top type '" + peek + "' is not of type '" + type2 + "' as expected.");
                return;
            }
            return;
        }
        if (peek instanceof ReferenceType) {
            referenceType = (ReferenceType) peek;
            referenceTypeIsInitialized(putstatic, referenceType);
        } else {
            constraintViolated(putstatic, "The stack top type '" + peek + "' is not of a reference type as expected.");
        }
        if (referenceType.isAssignmentCompatibleWith(type2)) {
            return;
        }
        constraintViolated(putstatic, "The stack top type '" + peek + "' is not assignment compatible with '" + type2 + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitRET(RET ret) {
        if (!(locals().get(ret.getIndex()) instanceof ReturnaddressType)) {
            constraintViolated(ret, "Expecting a ReturnaddressType in local variable " + ret.getIndex() + ".");
        }
        if (locals().get(ret.getIndex()) == ReturnaddressType.NO_TARGET) {
            throw new AssertionViolatedException("Oops: RET expecting a target!");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitRETURN(RETURN r3) {
        if (!this.f64083mg.getName().equals(Constants.CONSTRUCTOR_NAME) || Frame._this == null || this.f64083mg.getClassName().equals(Type.OBJECT.getClassName())) {
            return;
        }
        constraintViolated(r3, "Leaving a constructor that itself did not call a constructor.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitReturnInstruction(ReturnInstruction returnInstruction) {
        if (returnInstruction instanceof RETURN) {
            return;
        }
        if (returnInstruction instanceof ARETURN) {
            if (stack().peek() == Type.NULL) {
                return;
            }
            if (!(stack().peek() instanceof ReferenceType)) {
                constraintViolated(returnInstruction, "Reference type expected on top of stack, but is: '" + stack().peek() + "'.");
            }
            referenceTypeIsInitialized(returnInstruction, (ReferenceType) stack().peek());
            return;
        }
        Type type = this.f64083mg.getType();
        if (type == Type.BOOLEAN || type == Type.BYTE || type == Type.SHORT || type == Type.CHAR) {
            type = Type.INT;
        }
        if (type.equals(stack().peek())) {
            return;
        }
        constraintViolated(returnInstruction, "Current method has return type of '" + this.f64083mg.getType() + "' expecting a '" + type + "' on top of the stack. But stack top is a '" + stack().peek() + "'.");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSALOAD(SALOAD saload) {
        indexOfInt(saload, stack().peek());
        if (stack().peek(1) == Type.NULL) {
            return;
        }
        if (!(stack().peek(1) instanceof ArrayType)) {
            constraintViolated(saload, "Stack next-to-top must be of type short[] but is '" + stack().peek(1) + "'.");
        }
        if (((ArrayType) stack().peek(1)).getBasicType() != Type.SHORT) {
            constraintViolated(saload, "Stack next-to-top must be of type short[] but is '" + stack().peek(1) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSASTORE(SASTORE sastore) {
        if (stack().peek() != Type.INT) {
            constraintViolated(sastore, "The value at the stack top is not of type 'int', but of type '" + stack().peek() + "'.");
        }
        indexOfInt(sastore, stack().peek(1));
        if (stack().peek(2) == Type.NULL) {
            return;
        }
        if (!(stack().peek(2) instanceof ArrayType)) {
            constraintViolated(sastore, "Stack next-to-next-to-top must be of type short[] but is '" + stack().peek(2) + "'.");
        }
        if (((ArrayType) stack().peek(2)).getBasicType() != Type.SHORT) {
            constraintViolated(sastore, "Stack next-to-next-to-top must be of type short[] but is '" + stack().peek(2) + "'.");
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSIPUSH(SIPUSH sipush) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSWAP(SWAP swap) {
        if (stack().peek().getSize() != 1) {
            constraintViolated(swap, "The value at the stack top is not of size '1', but of size '" + stack().peek().getSize() + "'.");
        }
        if (stack().peek(1).getSize() != 1) {
            constraintViolated(swap, "The value at the stack next-to-top is not of size '1', but of size '" + stack().peek(1).getSize() + "'.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitStackConsumer(StackConsumer stackConsumer) {
        _visitStackAccessor((Instruction) stackConsumer);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitStackInstruction(StackInstruction stackInstruction) {
        _visitStackAccessor(stackInstruction);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitStackProducer(StackProducer stackProducer) {
        _visitStackAccessor((Instruction) stackProducer);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitStoreInstruction(StoreInstruction storeInstruction) {
        if (stack().isEmpty()) {
            constraintViolated(storeInstruction, "Cannot STORE: Stack to read from is empty.");
        }
        if (!(storeInstruction instanceof ASTORE)) {
            if (stack().peek() != storeInstruction.getType(this.cpg)) {
                constraintViolated(storeInstruction, "Stack top type and STOREing Instruction type mismatch: Stack top: '" + stack().peek() + "'; Instruction type: '" + storeInstruction.getType(this.cpg) + "'.");
                return;
            }
            return;
        }
        Type peek = stack().peek();
        boolean z = peek instanceof ReferenceType;
        if (!z && !(peek instanceof ReturnaddressType)) {
            constraintViolated(storeInstruction, "Stack top type and STOREing Instruction type mismatch: Stack top: '" + stack().peek() + "'; Instruction expects a ReferenceType or a ReturnadressType.");
        }
        if (z) {
            referenceTypeIsInitialized(storeInstruction, (ReferenceType) peek);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitTABLESWITCH(TABLESWITCH tableswitch) {
        indexOfInt(tableswitch, stack().peek());
    }
}
