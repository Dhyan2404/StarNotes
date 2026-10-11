package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantDouble;
import com.sun.org.apache.bcel.internal.classfile.ConstantFloat;
import com.sun.org.apache.bcel.internal.classfile.ConstantInteger;
import com.sun.org.apache.bcel.internal.classfile.ConstantLong;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
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
import com.sun.org.apache.bcel.internal.generic.CALOAD;
import com.sun.org.apache.bcel.internal.generic.CASTORE;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
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
import com.sun.org.apache.bcel.internal.generic.MONITORENTER;
import com.sun.org.apache.bcel.internal.generic.MONITOREXIT;
import com.sun.org.apache.bcel.internal.generic.MULTIANEWARRAY;
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
import com.sun.org.apache.bcel.internal.generic.ReturnaddressType;
import com.sun.org.apache.bcel.internal.generic.SALOAD;
import com.sun.org.apache.bcel.internal.generic.SASTORE;
import com.sun.org.apache.bcel.internal.generic.SIPUSH;
import com.sun.org.apache.bcel.internal.generic.SWAP;
import com.sun.org.apache.bcel.internal.generic.TABLESWITCH;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.generic.Visitor;

/* loaded from: classes10.dex */
public class ExecutionVisitor extends EmptyVisitor implements Visitor {
    private Frame frame = null;
    private ConstantPoolGen cpg = null;

    private LocalVariables locals() {
        return this.frame.getLocals();
    }

    private OperandStack stack() {
        return this.frame.getStack();
    }

    public void setConstantPoolGen(ConstantPoolGen constantPoolGen) {
        this.cpg = constantPoolGen;
    }

    public void setFrame(Frame frame) {
        this.frame = frame;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitAALOAD(AALOAD aaload) {
        stack().pop();
        Type pop = stack().pop();
        ReferenceType referenceType = Type.NULL;
        if (pop == referenceType) {
            stack().push(referenceType);
        } else {
            stack().push(((ArrayType) pop).getElementType());
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitAASTORE(AASTORE aastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitACONST_NULL(ACONST_NULL aconst_null) {
        stack().push(Type.NULL);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitALOAD(ALOAD aload) {
        stack().push(locals().get(aload.getIndex()));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitANEWARRAY(ANEWARRAY anewarray) {
        stack().pop();
        stack().push(new ArrayType(anewarray.getType(this.cpg), 1));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitARETURN(ARETURN areturn) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitARRAYLENGTH(ARRAYLENGTH arraylength) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitASTORE(ASTORE astore) {
        locals().set(astore.getIndex(), stack().pop());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitATHROW(ATHROW athrow) {
        Type pop = stack().pop();
        stack().clear();
        if (pop.equals(Type.NULL)) {
            stack().push(Type.getType("Ljava/lang/NullPointerException;"));
        } else {
            stack().push(pop);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBALOAD(BALOAD baload) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBASTORE(BASTORE bastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitBIPUSH(BIPUSH bipush) {
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCALOAD(CALOAD caload) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCASTORE(CASTORE castore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitCHECKCAST(CHECKCAST checkcast) {
        stack().pop();
        stack().push(checkcast.getType(this.cpg));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitD2F(D2F d2f) {
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitD2I(D2I d2i) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitD2L(D2L d2l) {
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDADD(DADD dadd) {
        stack().pop();
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDALOAD(DALOAD daload) {
        stack().pop();
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDASTORE(DASTORE dastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDCMPG(DCMPG dcmpg) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDCMPL(DCMPL dcmpl) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDCONST(DCONST dconst) {
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDDIV(DDIV ddiv) {
        stack().pop();
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDLOAD(DLOAD dload) {
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDMUL(DMUL dmul) {
        stack().pop();
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDNEG(DNEG dneg) {
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDREM(DREM drem) {
        stack().pop();
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDRETURN(DRETURN dreturn) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDSTORE(DSTORE dstore) {
        locals().set(dstore.getIndex(), stack().pop());
        locals().set(dstore.getIndex() + 1, Type.UNKNOWN);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDSUB(DSUB dsub) {
        stack().pop();
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP(DUP dup) {
        Type pop = stack().pop();
        stack().push(pop);
        stack().push(pop);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP2(DUP2 dup2) {
        Type pop = stack().pop();
        if (pop.getSize() == 2) {
            stack().push(pop);
            stack().push(pop);
            return;
        }
        Type pop2 = stack().pop();
        stack().push(pop2);
        stack().push(pop);
        stack().push(pop2);
        stack().push(pop);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP2_X1(DUP2_X1 dup2_x1) {
        Type pop = stack().pop();
        if (pop.getSize() == 2) {
            Type pop2 = stack().pop();
            stack().push(pop);
            stack().push(pop2);
            stack().push(pop);
            return;
        }
        Type pop3 = stack().pop();
        Type pop4 = stack().pop();
        stack().push(pop3);
        stack().push(pop);
        stack().push(pop4);
        stack().push(pop3);
        stack().push(pop);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP2_X2(DUP2_X2 dup2_x2) {
        Type pop = stack().pop();
        if (pop.getSize() == 2) {
            Type pop2 = stack().pop();
            if (pop2.getSize() == 2) {
                stack().push(pop);
                stack().push(pop2);
                stack().push(pop);
                return;
            } else {
                Type pop3 = stack().pop();
                stack().push(pop);
                stack().push(pop3);
                stack().push(pop2);
                stack().push(pop);
                return;
            }
        }
        Type pop4 = stack().pop();
        Type pop5 = stack().pop();
        if (pop5.getSize() == 2) {
            stack().push(pop4);
            stack().push(pop);
            stack().push(pop5);
            stack().push(pop4);
            stack().push(pop);
            return;
        }
        Type pop6 = stack().pop();
        stack().push(pop4);
        stack().push(pop);
        stack().push(pop6);
        stack().push(pop5);
        stack().push(pop4);
        stack().push(pop);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP_X1(DUP_X1 dup_x1) {
        Type pop = stack().pop();
        Type pop2 = stack().pop();
        stack().push(pop);
        stack().push(pop2);
        stack().push(pop);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitDUP_X2(DUP_X2 dup_x2) {
        Type pop = stack().pop();
        Type pop2 = stack().pop();
        if (pop2.getSize() == 2) {
            stack().push(pop);
            stack().push(pop2);
            stack().push(pop);
        } else {
            Type pop3 = stack().pop();
            stack().push(pop);
            stack().push(pop3);
            stack().push(pop2);
            stack().push(pop);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitF2D(F2D f2d) {
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitF2I(F2I f2i) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitF2L(F2L f2l) {
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFADD(FADD fadd) {
        stack().pop();
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFALOAD(FALOAD faload) {
        stack().pop();
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFASTORE(FASTORE fastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFCMPG(FCMPG fcmpg) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFCMPL(FCMPL fcmpl) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFCONST(FCONST fconst) {
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFDIV(FDIV fdiv) {
        stack().pop();
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFLOAD(FLOAD fload) {
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFMUL(FMUL fmul) {
        stack().pop();
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFNEG(FNEG fneg) {
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFREM(FREM frem) {
        stack().pop();
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFRETURN(FRETURN freturn) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFSTORE(FSTORE fstore) {
        locals().set(fstore.getIndex(), stack().pop());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitFSUB(FSUB fsub) {
        stack().pop();
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGETFIELD(GETFIELD getfield) {
        stack().pop();
        Type fieldType = getfield.getFieldType(this.cpg);
        if (fieldType.equals(Type.BOOLEAN) || fieldType.equals(Type.CHAR) || fieldType.equals(Type.BYTE) || fieldType.equals(Type.SHORT)) {
            fieldType = Type.INT;
        }
        stack().push(fieldType);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGETSTATIC(GETSTATIC getstatic) {
        Type fieldType = getstatic.getFieldType(this.cpg);
        if (fieldType.equals(Type.BOOLEAN) || fieldType.equals(Type.CHAR) || fieldType.equals(Type.BYTE) || fieldType.equals(Type.SHORT)) {
            fieldType = Type.INT;
        }
        stack().push(fieldType);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGOTO(GOTO r1) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitGOTO_W(GOTO_W goto_w) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2B(I2B i2b) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2C(I2C i2c) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2D(I2D i2d) {
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2F(I2F i2f) {
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2L(I2L i2l) {
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitI2S(I2S i2s) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIADD(IADD iadd) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIALOAD(IALOAD iaload) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIAND(IAND iand) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIASTORE(IASTORE iastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitICONST(ICONST iconst) {
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIDIV(IDIV idiv) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFEQ(IFEQ ifeq) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFGE(IFGE ifge) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFGT(IFGT ifgt) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFLE(IFLE ifle) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFLT(IFLT iflt) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFNE(IFNE ifne) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFNONNULL(IFNONNULL ifnonnull) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIFNULL(IFNULL ifnull) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ACMPEQ(IF_ACMPEQ if_acmpeq) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ACMPNE(IF_ACMPNE if_acmpne) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPEQ(IF_ICMPEQ if_icmpeq) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPGE(IF_ICMPGE if_icmpge) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPGT(IF_ICMPGT if_icmpgt) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPLE(IF_ICMPLE if_icmple) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPLT(IF_ICMPLT if_icmplt) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIF_ICMPNE(IF_ICMPNE if_icmpne) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIINC(IINC iinc) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitILOAD(ILOAD iload) {
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIMUL(IMUL imul) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINEG(INEG ineg) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINSTANCEOF(INSTANCEOF r1) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKEINTERFACE(INVOKEINTERFACE invokeinterface) {
        stack().pop();
        for (int i = 0; i < invokeinterface.getArgumentTypes(this.cpg).length; i++) {
            stack().pop();
        }
        if (invokeinterface.getReturnType(this.cpg) != Type.VOID) {
            Type returnType = invokeinterface.getReturnType(this.cpg);
            if (returnType.equals(Type.BOOLEAN) || returnType.equals(Type.CHAR) || returnType.equals(Type.BYTE) || returnType.equals(Type.SHORT)) {
                returnType = Type.INT;
            }
            stack().push(returnType);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKESPECIAL(INVOKESPECIAL invokespecial) {
        if (invokespecial.getMethodName(this.cpg).equals(Constants.CONSTRUCTOR_NAME)) {
            UninitializedObjectType uninitializedObjectType = (UninitializedObjectType) stack().peek(invokespecial.getArgumentTypes(this.cpg).length);
            if (uninitializedObjectType == Frame._this) {
                Frame._this = null;
            }
            stack().initializeObject(uninitializedObjectType);
            locals().initializeObject(uninitializedObjectType);
        }
        stack().pop();
        for (int i = 0; i < invokespecial.getArgumentTypes(this.cpg).length; i++) {
            stack().pop();
        }
        if (invokespecial.getReturnType(this.cpg) != Type.VOID) {
            Type returnType = invokespecial.getReturnType(this.cpg);
            if (returnType.equals(Type.BOOLEAN) || returnType.equals(Type.CHAR) || returnType.equals(Type.BYTE) || returnType.equals(Type.SHORT)) {
                returnType = Type.INT;
            }
            stack().push(returnType);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKESTATIC(INVOKESTATIC invokestatic) {
        for (int i = 0; i < invokestatic.getArgumentTypes(this.cpg).length; i++) {
            stack().pop();
        }
        if (invokestatic.getReturnType(this.cpg) != Type.VOID) {
            Type returnType = invokestatic.getReturnType(this.cpg);
            if (returnType.equals(Type.BOOLEAN) || returnType.equals(Type.CHAR) || returnType.equals(Type.BYTE) || returnType.equals(Type.SHORT)) {
                returnType = Type.INT;
            }
            stack().push(returnType);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitINVOKEVIRTUAL(INVOKEVIRTUAL invokevirtual) {
        stack().pop();
        for (int i = 0; i < invokevirtual.getArgumentTypes(this.cpg).length; i++) {
            stack().pop();
        }
        if (invokevirtual.getReturnType(this.cpg) != Type.VOID) {
            Type returnType = invokevirtual.getReturnType(this.cpg);
            if (returnType.equals(Type.BOOLEAN) || returnType.equals(Type.CHAR) || returnType.equals(Type.BYTE) || returnType.equals(Type.SHORT)) {
                returnType = Type.INT;
            }
            stack().push(returnType);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIOR(IOR ior) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIREM(IREM irem) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIRETURN(IRETURN ireturn) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISHL(ISHL ishl) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISHR(ISHR ishr) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISTORE(ISTORE istore) {
        locals().set(istore.getIndex(), stack().pop());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitISUB(ISUB isub) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIUSHR(IUSHR iushr) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitIXOR(IXOR ixor) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitJSR(JSR jsr) {
        stack().push(new ReturnaddressType(jsr.physicalSuccessor()));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitJSR_W(JSR_W jsr_w) {
        stack().push(new ReturnaddressType(jsr_w.physicalSuccessor()));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitL2D(L2D l2d) {
        stack().pop();
        stack().push(Type.DOUBLE);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitL2F(L2F l2f) {
        stack().pop();
        stack().push(Type.FLOAT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitL2I(L2I l2i) {
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLADD(LADD ladd) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLALOAD(LALOAD laload) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLAND(LAND land) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLASTORE(LASTORE lastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLCMP(LCMP lcmp) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLCONST(LCONST lconst) {
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDC(LDC ldc) {
        Constant constant = this.cpg.getConstant(ldc.getIndex());
        if (constant instanceof ConstantInteger) {
            stack().push(Type.INT);
        }
        if (constant instanceof ConstantFloat) {
            stack().push(Type.FLOAT);
        }
        if (constant instanceof ConstantString) {
            stack().push(Type.STRING);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDC2_W(LDC2_W ldc2_w) {
        Constant constant = this.cpg.getConstant(ldc2_w.getIndex());
        if (constant instanceof ConstantLong) {
            stack().push(Type.LONG);
        }
        if (constant instanceof ConstantDouble) {
            stack().push(Type.DOUBLE);
        }
    }

    public void visitLDC_W(LDC_W ldc_w) {
        Constant constant = this.cpg.getConstant(ldc_w.getIndex());
        if (constant instanceof ConstantInteger) {
            stack().push(Type.INT);
        }
        if (constant instanceof ConstantFloat) {
            stack().push(Type.FLOAT);
        }
        if (constant instanceof ConstantString) {
            stack().push(Type.STRING);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLDIV(LDIV ldiv) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLLOAD(LLOAD lload) {
        stack().push(locals().get(lload.getIndex()));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLMUL(LMUL lmul) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLNEG(LNEG lneg) {
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLOOKUPSWITCH(LOOKUPSWITCH lookupswitch) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLOR(LOR lor) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLREM(LREM lrem) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLRETURN(LRETURN lreturn) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSHL(LSHL lshl) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSHR(LSHR lshr) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSTORE(LSTORE lstore) {
        locals().set(lstore.getIndex(), stack().pop());
        locals().set(lstore.getIndex() + 1, Type.UNKNOWN);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLSUB(LSUB lsub) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLUSHR(LUSHR lushr) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitLXOR(LXOR lxor) {
        stack().pop();
        stack().pop();
        stack().push(Type.LONG);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitMONITORENTER(MONITORENTER monitorenter) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitMONITOREXIT(MONITOREXIT monitorexit) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitMULTIANEWARRAY(MULTIANEWARRAY multianewarray) {
        for (int i = 0; i < multianewarray.getDimensions(); i++) {
            stack().pop();
        }
        stack().push(multianewarray.getType(this.cpg));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitNEW(NEW r3) {
        stack().push(new UninitializedObjectType((ObjectType) r3.getType(this.cpg)));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitNEWARRAY(NEWARRAY newarray) {
        stack().pop();
        stack().push(newarray.getType());
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitNOP(NOP nop) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPOP(POP pop) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPOP2(POP2 pop2) {
        if (stack().pop().getSize() == 1) {
            stack().pop();
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPUTFIELD(PUTFIELD putfield) {
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitPUTSTATIC(PUTSTATIC putstatic) {
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitRET(RET ret) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitRETURN(RETURN r1) {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSALOAD(SALOAD saload) {
        stack().pop();
        stack().pop();
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSASTORE(SASTORE sastore) {
        stack().pop();
        stack().pop();
        stack().pop();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSIPUSH(SIPUSH sipush) {
        stack().push(Type.INT);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitSWAP(SWAP swap) {
        Type pop = stack().pop();
        Type pop2 = stack().pop();
        stack().push(pop);
        stack().push(pop2);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
    public void visitTABLESWITCH(TABLESWITCH tableswitch) {
        stack().pop();
    }
}
