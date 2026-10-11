package com.sun.org.apache.bcel.internal.verifier.statics;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import com.sun.org.apache.bcel.internal.classfile.Code;
import com.sun.org.apache.bcel.internal.classfile.CodeException;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantDouble;
import com.sun.org.apache.bcel.internal.classfile.ConstantFieldref;
import com.sun.org.apache.bcel.internal.classfile.ConstantFloat;
import com.sun.org.apache.bcel.internal.classfile.ConstantInteger;
import com.sun.org.apache.bcel.internal.classfile.ConstantInterfaceMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantLong;
import com.sun.org.apache.bcel.internal.classfile.ConstantMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantNameAndType;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.LineNumber;
import com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ATHROW;
import com.sun.org.apache.bcel.internal.generic.ArrayType;
import com.sun.org.apache.bcel.internal.generic.BREAKPOINT;
import com.sun.org.apache.bcel.internal.generic.CHECKCAST;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.DLOAD;
import com.sun.org.apache.bcel.internal.generic.DSTORE;
import com.sun.org.apache.bcel.internal.generic.EmptyVisitor;
import com.sun.org.apache.bcel.internal.generic.FLOAD;
import com.sun.org.apache.bcel.internal.generic.FSTORE;
import com.sun.org.apache.bcel.internal.generic.FieldInstruction;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;
import com.sun.org.apache.bcel.internal.generic.GotoInstruction;
import com.sun.org.apache.bcel.internal.generic.IINC;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.IMPDEP1;
import com.sun.org.apache.bcel.internal.generic.IMPDEP2;
import com.sun.org.apache.bcel.internal.generic.INSTANCEOF;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.InvokeInstruction;
import com.sun.org.apache.bcel.internal.generic.JsrInstruction;
import com.sun.org.apache.bcel.internal.generic.LDC;
import com.sun.org.apache.bcel.internal.generic.LDC2_W;
import com.sun.org.apache.bcel.internal.generic.LLOAD;
import com.sun.org.apache.bcel.internal.generic.LOOKUPSWITCH;
import com.sun.org.apache.bcel.internal.generic.LSTORE;
import com.sun.org.apache.bcel.internal.generic.LoadClass;
import com.sun.org.apache.bcel.internal.generic.MULTIANEWARRAY;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.NEWARRAY;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.PUTSTATIC;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
import com.sun.org.apache.bcel.internal.generic.TABLESWITCH;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.PassVerifier;
import com.sun.org.apache.bcel.internal.verifier.VerificationResult;
import com.sun.org.apache.bcel.internal.verifier.Verifier;
import com.sun.org.apache.bcel.internal.verifier.VerifierFactory;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.ClassConstraintException;
import com.sun.org.apache.bcel.internal.verifier.exc.InvalidMethodException;
import com.sun.org.apache.bcel.internal.verifier.exc.StaticCodeConstraintException;
import com.sun.org.apache.bcel.internal.verifier.exc.StaticCodeInstructionConstraintException;
import com.sun.org.apache.bcel.internal.verifier.exc.StaticCodeInstructionOperandConstraintException;

/* loaded from: classes10.dex */
public final class Pass3aVerifier extends PassVerifier {
    Code code;
    InstructionList instructionList;
    private int method_no;
    private Verifier myOwner;

    /* loaded from: classes10.dex */
    public class InstOperandConstraintVisitor extends EmptyVisitor {
        private ConstantPoolGen cpg;

        public InstOperandConstraintVisitor(ConstantPoolGen constantPoolGen) {
            this.cpg = constantPoolGen;
        }

        private void constraintViolated(Instruction instruction, String str) {
            throw new StaticCodeInstructionOperandConstraintException("Instruction " + instruction + " constraint violated: " + str);
        }

        private void indexValid(Instruction instruction, int i) {
            if (i < 0 || i >= this.cpg.getSize()) {
                constraintViolated(instruction, "Illegal constant pool index '" + i + "'.");
            }
        }

        private int max_locals() {
            return Repository.lookupClass(Pass3aVerifier.this.myOwner.getClassName()).getMethods()[Pass3aVerifier.this.method_no].getCode().getMaxLocals();
        }

        private boolean objarrayequals(Object[] objArr, Object[] objArr2) {
            if (objArr.length != objArr2.length) {
                return false;
            }
            for (int i = 0; i < objArr.length; i++) {
                if (!objArr[i].equals(objArr2[i])) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitALOAD(ALOAD aload) {
            int index = aload.getIndex();
            if (index < 0) {
                constraintViolated(aload, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(aload, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitANEWARRAY(ANEWARRAY anewarray) {
            indexValid(anewarray, anewarray.getIndex());
            Constant constant = this.cpg.getConstant(anewarray.getIndex());
            if (!(constant instanceof ConstantClass)) {
                constraintViolated(anewarray, "Expecting a CONSTANT_Class operand, but found a '" + constant + "'.");
            }
            Type type = anewarray.getType(this.cpg);
            if (!(type instanceof ArrayType) || ((ArrayType) type).getDimensions() < 255) {
                return;
            }
            constraintViolated(anewarray, "Not allowed to create an array with more than 255 dimensions.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitASTORE(ASTORE astore) {
            int index = astore.getIndex();
            if (index < 0) {
                constraintViolated(astore, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(astore, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitCHECKCAST(CHECKCAST checkcast) {
            indexValid(checkcast, checkcast.getIndex());
            Constant constant = this.cpg.getConstant(checkcast.getIndex());
            if (constant instanceof ConstantClass) {
                return;
            }
            constraintViolated(checkcast, "Expecting a CONSTANT_Class operand, but found a '" + constant + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitDLOAD(DLOAD dload) {
            int index = dload.getIndex();
            if (index < 0) {
                constraintViolated(dload, "Index '" + index + "' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]");
                return;
            }
            int max_locals = max_locals() - 2;
            if (index > max_locals) {
                constraintViolated(dload, "Index '" + index + "' must not be greater than max_locals-2 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitDSTORE(DSTORE dstore) {
            int index = dstore.getIndex();
            if (index < 0) {
                constraintViolated(dstore, "Index '" + index + "' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]");
                return;
            }
            int max_locals = max_locals() - 2;
            if (index > max_locals) {
                constraintViolated(dstore, "Index '" + index + "' must not be greater than max_locals-2 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitFLOAD(FLOAD fload) {
            int index = fload.getIndex();
            if (index < 0) {
                constraintViolated(fload, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(fload, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitFSTORE(FSTORE fstore) {
            int index = fstore.getIndex();
            if (index < 0) {
                constraintViolated(fstore, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(fstore, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitFieldInstruction(FieldInstruction fieldInstruction) {
            Field field;
            indexValid(fieldInstruction, fieldInstruction.getIndex());
            Constant constant = this.cpg.getConstant(fieldInstruction.getIndex());
            if (!(constant instanceof ConstantFieldref)) {
                constraintViolated(fieldInstruction, "Indexing a constant that's not a CONSTANT_Fieldref but a '" + constant + "'.");
            }
            String fieldName = fieldInstruction.getFieldName(this.cpg);
            JavaClass lookupClass = Repository.lookupClass(fieldInstruction.getClassType(this.cpg).getClassName());
            Field[] fields = lookupClass.getFields();
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
                constraintViolated(fieldInstruction, "Referenced field '" + fieldName + "' does not exist in class '" + lookupClass.getClassName() + "'.");
                return;
            }
            Type type = Type.getType(field.getSignature());
            Type type2 = fieldInstruction.getType(this.cpg);
            if (type.equals(type2)) {
                return;
            }
            constraintViolated(fieldInstruction, "Referenced field '" + fieldName + "' has type '" + type + "' instead of '" + type2 + "' as expected.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitGETSTATIC(GETSTATIC getstatic) {
            Field field;
            String fieldName = getstatic.getFieldName(this.cpg);
            Field[] fields = Repository.lookupClass(getstatic.getClassType(this.cpg).getClassName()).getFields();
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
            if (field.isStatic()) {
                return;
            }
            constraintViolated(getstatic, "Referenced field '" + field + "' is not static which it should be.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitIINC(IINC iinc) {
            int index = iinc.getIndex();
            if (index < 0) {
                constraintViolated(iinc, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(iinc, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitILOAD(ILOAD iload) {
            int index = iload.getIndex();
            if (index < 0) {
                constraintViolated(iload, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(iload, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitINSTANCEOF(INSTANCEOF r4) {
            indexValid(r4, r4.getIndex());
            Constant constant = this.cpg.getConstant(r4.getIndex());
            if (constant instanceof ConstantClass) {
                return;
            }
            constraintViolated(r4, "Expecting a CONSTANT_Class operand, but found a '" + constant + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitINVOKEINTERFACE(INVOKEINTERFACE invokeinterface) {
            Method method;
            JavaClass lookupClass = Repository.lookupClass(invokeinterface.getClassName(this.cpg));
            Method[] methods = lookupClass.getMethods();
            int i = 0;
            while (true) {
                if (i >= methods.length) {
                    method = null;
                    break;
                } else {
                    if (methods[i].getName().equals(invokeinterface.getMethodName(this.cpg)) && Type.getReturnType(methods[i].getSignature()).equals(invokeinterface.getReturnType(this.cpg)) && objarrayequals(Type.getArgumentTypes(methods[i].getSignature()), invokeinterface.getArgumentTypes(this.cpg))) {
                        method = methods[i];
                        break;
                    }
                    i++;
                }
            }
            if (method == null) {
                constraintViolated(invokeinterface, "Referenced method '" + invokeinterface.getMethodName(this.cpg) + "' with expected signature not found in class '" + lookupClass.getClassName() + "'. The native verfier does allow the method to be declared in some superinterface, which the Java Virtual Machine Specification, Second Edition does not.");
            }
            if (lookupClass.isClass()) {
                constraintViolated(invokeinterface, "Referenced class '" + lookupClass.getClassName() + "' is a class, but not an interface as expected.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitINVOKESPECIAL(INVOKESPECIAL invokespecial) {
            Method method;
            Method method2;
            JavaClass lookupClass = Repository.lookupClass(invokespecial.getClassName(this.cpg));
            Method[] methods = lookupClass.getMethods();
            int i = 0;
            while (true) {
                method = null;
                if (i >= methods.length) {
                    method2 = null;
                    break;
                } else {
                    if (methods[i].getName().equals(invokespecial.getMethodName(this.cpg)) && Type.getReturnType(methods[i].getSignature()).equals(invokespecial.getReturnType(this.cpg)) && objarrayequals(Type.getArgumentTypes(methods[i].getSignature()), invokespecial.getArgumentTypes(this.cpg))) {
                        method2 = methods[i];
                        break;
                    }
                    i++;
                }
            }
            if (method2 == null) {
                constraintViolated(invokespecial, "Referenced method '" + invokespecial.getMethodName(this.cpg) + "' with expected signature not found in class '" + lookupClass.getClassName() + "'. The native verfier does allow the method to be declared in some superclass or implemented interface, which the Java Virtual Machine Specification, Second Edition does not.");
            }
            JavaClass lookupClass2 = Repository.lookupClass(Pass3aVerifier.this.myOwner.getClassName());
            if (!lookupClass2.isSuper() || !Repository.instanceOf(lookupClass2, lookupClass) || lookupClass2.equals(lookupClass) || invokespecial.getMethodName(this.cpg).equals(Constants.CONSTRUCTOR_NAME)) {
                return;
            }
            int i2 = -1;
            while (i2 != 0) {
                i2 = lookupClass2.getSuperclassNameIndex();
                lookupClass2 = Repository.lookupClass(lookupClass2.getSuperclassName());
                Method[] methods2 = lookupClass2.getMethods();
                int i3 = 0;
                while (true) {
                    if (i3 < methods2.length) {
                        if (methods2[i3].getName().equals(invokespecial.getMethodName(this.cpg)) && Type.getReturnType(methods2[i3].getSignature()).equals(invokespecial.getReturnType(this.cpg)) && objarrayequals(Type.getArgumentTypes(methods2[i3].getSignature()), invokespecial.getArgumentTypes(this.cpg))) {
                            method = methods2[i3];
                            break;
                        }
                        i3++;
                    } else {
                        break;
                    }
                }
                if (method != null) {
                    break;
                }
            }
            if (method == null) {
                constraintViolated(invokespecial, "ACC_SUPER special lookup procedure not successful: method '" + invokespecial.getMethodName(this.cpg) + "' with proper signature not declared in superclass hierarchy.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitINVOKESTATIC(INVOKESTATIC invokestatic) {
            Method method;
            JavaClass lookupClass = Repository.lookupClass(invokestatic.getClassName(this.cpg));
            Method[] methods = lookupClass.getMethods();
            int i = 0;
            while (true) {
                if (i >= methods.length) {
                    method = null;
                    break;
                } else {
                    if (methods[i].getName().equals(invokestatic.getMethodName(this.cpg)) && Type.getReturnType(methods[i].getSignature()).equals(invokestatic.getReturnType(this.cpg)) && objarrayequals(Type.getArgumentTypes(methods[i].getSignature()), invokestatic.getArgumentTypes(this.cpg))) {
                        method = methods[i];
                        break;
                    }
                    i++;
                }
            }
            if (method == null) {
                constraintViolated(invokestatic, "Referenced method '" + invokestatic.getMethodName(this.cpg) + "' with expected signature not found in class '" + lookupClass.getClassName() + "'. The native verifier possibly allows the method to be declared in some superclass or implemented interface, which the Java Virtual Machine Specification, Second Edition does not.");
            }
            if (method.isStatic()) {
                return;
            }
            constraintViolated(invokestatic, "Referenced method '" + invokestatic.getMethodName(this.cpg) + "' has ACC_STATIC unset.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitINVOKEVIRTUAL(INVOKEVIRTUAL invokevirtual) {
            Method method;
            JavaClass lookupClass = Repository.lookupClass(invokevirtual.getClassName(this.cpg));
            Method[] methods = lookupClass.getMethods();
            int i = 0;
            while (true) {
                if (i >= methods.length) {
                    method = null;
                    break;
                } else {
                    if (methods[i].getName().equals(invokevirtual.getMethodName(this.cpg)) && Type.getReturnType(methods[i].getSignature()).equals(invokevirtual.getReturnType(this.cpg)) && objarrayequals(Type.getArgumentTypes(methods[i].getSignature()), invokevirtual.getArgumentTypes(this.cpg))) {
                        method = methods[i];
                        break;
                    }
                    i++;
                }
            }
            if (method == null) {
                constraintViolated(invokevirtual, "Referenced method '" + invokevirtual.getMethodName(this.cpg) + "' with expected signature not found in class '" + lookupClass.getClassName() + "'. The native verfier does allow the method to be declared in some superclass or implemented interface, which the Java Virtual Machine Specification, Second Edition does not.");
            }
            if (lookupClass.isClass()) {
                return;
            }
            constraintViolated(invokevirtual, "Referenced class '" + lookupClass.getClassName() + "' is an interface, but not a class as expected.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitISTORE(ISTORE istore) {
            int index = istore.getIndex();
            if (index < 0) {
                constraintViolated(istore, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(istore, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitInvokeInstruction(InvokeInstruction invokeInstruction) {
            indexValid(invokeInstruction, invokeInstruction.getIndex());
            if ((invokeInstruction instanceof INVOKEVIRTUAL) || (invokeInstruction instanceof INVOKESPECIAL) || (invokeInstruction instanceof INVOKESTATIC)) {
                Constant constant = this.cpg.getConstant(invokeInstruction.getIndex());
                if (constant instanceof ConstantMethodref) {
                    ConstantUtf8 constantUtf8 = (ConstantUtf8) this.cpg.getConstant(((ConstantNameAndType) this.cpg.getConstant(((ConstantMethodref) constant).getNameAndTypeIndex())).getNameIndex());
                    if (constantUtf8.getBytes().equals(Constants.CONSTRUCTOR_NAME) && !(invokeInstruction instanceof INVOKESPECIAL)) {
                        constraintViolated(invokeInstruction, "Only INVOKESPECIAL is allowed to invoke instance initialization methods.");
                    }
                    if (!constantUtf8.getBytes().equals(Constants.CONSTRUCTOR_NAME) && constantUtf8.getBytes().startsWith("<")) {
                        constraintViolated(invokeInstruction, "No method with a name beginning with '<' other than the instance initialization methods may be called by the method invocation instructions.");
                    }
                } else {
                    constraintViolated(invokeInstruction, "Indexing a constant that's not a CONSTANT_Methodref but a '" + constant + "'.");
                }
            } else {
                Constant constant2 = this.cpg.getConstant(invokeInstruction.getIndex());
                if (!(constant2 instanceof ConstantInterfaceMethodref)) {
                    constraintViolated(invokeInstruction, "Indexing a constant that's not a CONSTANT_InterfaceMethodref but a '" + constant2 + "'.");
                }
                String bytes = ((ConstantUtf8) this.cpg.getConstant(((ConstantNameAndType) this.cpg.getConstant(((ConstantInterfaceMethodref) constant2).getNameAndTypeIndex())).getNameIndex())).getBytes();
                if (bytes.equals(Constants.CONSTRUCTOR_NAME)) {
                    constraintViolated(invokeInstruction, "Method to invoke must not be '<init>'.");
                }
                if (bytes.equals(Constants.STATIC_INITIALIZER_NAME)) {
                    constraintViolated(invokeInstruction, "Method to invoke must not be '<clinit>'.");
                }
            }
            Type returnType = invokeInstruction.getReturnType(this.cpg);
            if (returnType instanceof ArrayType) {
                returnType = ((ArrayType) returnType).getBasicType();
            }
            if (returnType instanceof ObjectType) {
                VerificationResult doPass2 = VerifierFactory.getVerifier(((ObjectType) returnType).getClassName()).doPass2();
                if (doPass2.getStatus() != 1) {
                    constraintViolated(invokeInstruction, "Return type class/interface could not be verified successfully: '" + doPass2.getMessage() + "'.");
                }
            }
            Type[] argumentTypes = invokeInstruction.getArgumentTypes(this.cpg);
            for (int i = 0; i < argumentTypes.length; i++) {
                Type type = argumentTypes[i];
                if (type instanceof ArrayType) {
                    type = ((ArrayType) type).getBasicType();
                }
                if (type instanceof ObjectType) {
                    VerificationResult doPass22 = VerifierFactory.getVerifier(((ObjectType) type).getClassName()).doPass2();
                    if (doPass22.getStatus() != 1) {
                        constraintViolated(invokeInstruction, "Argument type class/interface could not be verified successfully: '" + doPass22.getMessage() + "'.");
                    }
                }
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitLDC(LDC ldc) {
            indexValid(ldc, ldc.getIndex());
            Constant constant = this.cpg.getConstant(ldc.getIndex());
            if ((constant instanceof ConstantInteger) || (constant instanceof ConstantFloat) || (constant instanceof ConstantString)) {
                return;
            }
            constraintViolated(ldc, "Operand of LDC or LDC_W must be one of CONSTANT_Integer, CONSTANT_Float or CONSTANT_String, but is '" + constant + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitLDC2_W(LDC2_W ldc2_w) {
            indexValid(ldc2_w, ldc2_w.getIndex());
            Constant constant = this.cpg.getConstant(ldc2_w.getIndex());
            if (!(constant instanceof ConstantLong) && !(constant instanceof ConstantDouble)) {
                constraintViolated(ldc2_w, "Operand of LDC2_W must be CONSTANT_Long or CONSTANT_Double, but is '" + constant + "'.");
            }
            try {
                indexValid(ldc2_w, ldc2_w.getIndex() + 1);
            } catch (StaticCodeInstructionOperandConstraintException unused) {
                throw new AssertionViolatedException("OOPS: Does not BCEL handle that? LDC2_W operand has a problem.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitLLOAD(LLOAD lload) {
            int index = lload.getIndex();
            if (index < 0) {
                constraintViolated(lload, "Index '" + index + "' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]");
                return;
            }
            int max_locals = max_locals() - 2;
            if (index > max_locals) {
                constraintViolated(lload, "Index '" + index + "' must not be greater than max_locals-2 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitLOOKUPSWITCH(LOOKUPSWITCH lookupswitch) {
            int[] matchs = lookupswitch.getMatchs();
            int i = Integer.MIN_VALUE;
            for (int i2 = 0; i2 < matchs.length; i2++) {
                if (matchs[i2] == i && i2 != 0) {
                    constraintViolated(lookupswitch, "Match '" + matchs[i2] + "' occurs more than once.");
                }
                int i3 = matchs[i2];
                if (i3 < i) {
                    constraintViolated(lookupswitch, "Lookup table must be sorted but isn't.");
                } else {
                    i = i3;
                }
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitLSTORE(LSTORE lstore) {
            int index = lstore.getIndex();
            if (index < 0) {
                constraintViolated(lstore, "Index '" + index + "' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]");
                return;
            }
            int max_locals = max_locals() - 2;
            if (index > max_locals) {
                constraintViolated(lstore, "Index '" + index + "' must not be greater than max_locals-2 '" + max_locals + "'.");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitLoadClass(LoadClass loadClass) {
            ObjectType loadClassType = loadClass.getLoadClassType(this.cpg);
            if (loadClassType != null) {
                VerificationResult doPass1 = VerifierFactory.getVerifier(loadClassType.getClassName()).doPass1();
                if (doPass1.getStatus() != 1) {
                    constraintViolated((Instruction) loadClass, "Class '" + loadClass.getLoadClassType(this.cpg).getClassName() + "' is referenced, but cannot be loaded: '" + doPass1 + "'.");
                }
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitMULTIANEWARRAY(MULTIANEWARRAY multianewarray) {
            indexValid(multianewarray, multianewarray.getIndex());
            Constant constant = this.cpg.getConstant(multianewarray.getIndex());
            if (!(constant instanceof ConstantClass)) {
                constraintViolated(multianewarray, "Expecting a CONSTANT_Class operand, but found a '" + constant + "'.");
            }
            short dimensions = multianewarray.getDimensions();
            if (dimensions < 1) {
                constraintViolated(multianewarray, "Number of dimensions to create must be greater than zero.");
            }
            Type type = multianewarray.getType(this.cpg);
            if (!(type instanceof ArrayType)) {
                constraintViolated(multianewarray, "Expecting a CONSTANT_Class referencing an array type. [Constraint not found in The Java Virtual Machine Specification, Second Edition, 4.8.1]");
                return;
            }
            if (((ArrayType) type).getDimensions() < dimensions) {
                constraintViolated(multianewarray, "Not allowed to create array with more dimensions ('+dimensions2create+') than the one referenced by the CONSTANT_Class '" + type + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitNEW(NEW r4) {
            indexValid(r4, r4.getIndex());
            Constant constant = this.cpg.getConstant(r4.getIndex());
            if (!(constant instanceof ConstantClass)) {
                constraintViolated(r4, "Expecting a CONSTANT_Class operand, but found a '" + constant + "'.");
                return;
            }
            if (Type.getType("L" + ((ConstantUtf8) this.cpg.getConstant(((ConstantClass) constant).getNameIndex())).getBytes() + AndroidTreeView.f47214k) instanceof ArrayType) {
                constraintViolated(r4, "NEW must not be used to create an array.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitNEWARRAY(NEWARRAY newarray) {
            byte typecode = newarray.getTypecode();
            if (typecode == 4 || typecode == 5 || typecode == 6 || typecode == 7 || typecode == 8 || typecode == 9 || typecode == 10 || typecode == 11) {
                return;
            }
            constraintViolated(newarray, "Illegal type code '+t+' for 'atype' operand.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitPUTSTATIC(PUTSTATIC putstatic) {
            Field field;
            String fieldName = putstatic.getFieldName(this.cpg);
            JavaClass lookupClass = Repository.lookupClass(putstatic.getClassType(this.cpg).getClassName());
            Field[] fields = lookupClass.getFields();
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
            if (field.isFinal() && !Pass3aVerifier.this.myOwner.getClassName().equals(putstatic.getClassType(this.cpg).getClassName())) {
                constraintViolated(putstatic, "Referenced field '" + field + "' is final and must therefore be declared in the current class '" + Pass3aVerifier.this.myOwner.getClassName() + "' which is not the case: it is declared in '" + putstatic.getClassType(this.cpg).getClassName() + "'.");
            }
            if (!field.isStatic()) {
                constraintViolated(putstatic, "Referenced field '" + field + "' is not static which it should be.");
            }
            String name = Repository.lookupClass(Pass3aVerifier.this.myOwner.getClassName()).getMethods()[Pass3aVerifier.this.method_no].getName();
            if (lookupClass.isClass() || name.equals(Constants.STATIC_INITIALIZER_NAME)) {
                return;
            }
            constraintViolated(putstatic, "Interface field '" + field + "' must be set in a '" + Constants.STATIC_INITIALIZER_NAME + "' method.");
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitRET(RET ret) {
            int index = ret.getIndex();
            if (index < 0) {
                constraintViolated(ret, "Index '" + index + "' must be non-negative.");
                return;
            }
            int max_locals = max_locals() - 1;
            if (index > max_locals) {
                constraintViolated(ret, "Index '" + index + "' must not be greater than max_locals-1 '" + max_locals + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.generic.EmptyVisitor, com.sun.org.apache.bcel.internal.generic.Visitor
        public void visitTABLESWITCH(TABLESWITCH tableswitch) {
        }
    }

    public Pass3aVerifier(Verifier verifier, int i) {
        this.myOwner = verifier;
        this.method_no = i;
    }

    private static boolean contains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void delayedPass2Checks() {
        LocalVariableTable localVariableTable;
        int[] instructionPositions = this.instructionList.getInstructionPositions();
        int length = this.code.getCode().length;
        LineNumberTable lineNumberTable = this.code.getLineNumberTable();
        if (lineNumberTable != null) {
            LineNumber[] lineNumberTable2 = lineNumberTable.getLineNumberTable();
            IntList intList = new IntList();
            for (int i = 0; i < lineNumberTable2.length; i++) {
                for (int i2 : instructionPositions) {
                    int startPC = lineNumberTable2[i].getStartPC();
                    if (i2 == startPC) {
                        if (intList.contains(startPC)) {
                            addMessage("LineNumberTable attribute '" + this.code.getLineNumberTable() + "' refers to the same code offset ('" + startPC + "') more than once which is violating the semantics [but is sometimes produced by IBM's 'jikes' compiler].");
                        } else {
                            intList.add(startPC);
                        }
                    }
                }
                throw new ClassConstraintException("Code attribute '" + this.code + "' has a LineNumberTable attribute '" + this.code.getLineNumberTable() + "' referring to a code offset ('" + lineNumberTable2[i].getStartPC() + "') that does not exist.");
            }
        }
        for (Attribute attribute : this.code.getAttributes()) {
            if ((attribute instanceof LocalVariableTable) && (localVariableTable = (LocalVariableTable) attribute) != null) {
                LocalVariable[] localVariableTable2 = localVariableTable.getLocalVariableTable();
                for (int i3 = 0; i3 < localVariableTable2.length; i3++) {
                    int startPC2 = localVariableTable2[i3].getStartPC();
                    int length2 = localVariableTable2[i3].getLength();
                    if (!contains(instructionPositions, startPC2)) {
                        throw new ClassConstraintException("Code attribute '" + this.code + "' has a LocalVariableTable attribute '" + this.code.getLocalVariableTable() + "' referring to a code offset ('" + startPC2 + "') that does not exist.");
                    }
                    int i4 = startPC2 + length2;
                    if (!contains(instructionPositions, i4) && i4 != length) {
                        throw new ClassConstraintException("Code attribute '" + this.code + "' has a LocalVariableTable attribute '" + this.code.getLocalVariableTable() + "' referring to a code offset start_pc+length ('" + i4 + "') that does not exist.");
                    }
                }
            }
        }
        CodeException[] exceptionTable = this.code.getExceptionTable();
        for (int i5 = 0; i5 < exceptionTable.length; i5++) {
            int startPC3 = exceptionTable[i5].getStartPC();
            int endPC = exceptionTable[i5].getEndPC();
            int handlerPC = exceptionTable[i5].getHandlerPC();
            if (startPC3 >= endPC) {
                throw new ClassConstraintException("Code attribute '" + this.code + "' has an exception_table entry '" + exceptionTable[i5] + "' that has its start_pc ('" + startPC3 + "') not smaller than its end_pc ('" + endPC + "').");
            }
            if (!contains(instructionPositions, startPC3)) {
                throw new ClassConstraintException("Code attribute '" + this.code + "' has an exception_table entry '" + exceptionTable[i5] + "' that has a non-existant bytecode offset as its start_pc ('" + startPC3 + "').");
            }
            if (!contains(instructionPositions, endPC) && endPC != length) {
                throw new ClassConstraintException("Code attribute '" + this.code + "' has an exception_table entry '" + exceptionTable[i5] + "' that has a non-existant bytecode offset as its end_pc ('" + startPC3 + "') [that is also not equal to code_length ('" + length + "')].");
            }
            if (!contains(instructionPositions, handlerPC)) {
                throw new ClassConstraintException("Code attribute '" + this.code + "' has an exception_table entry '" + exceptionTable[i5] + "' that has a non-existant bytecode offset as its handler_pc ('" + handlerPC + "').");
            }
        }
    }

    private void pass3StaticInstructionChecks() {
        if (this.code.getCode().length >= 65536) {
            throw new StaticCodeInstructionConstraintException("Code array in code attribute '" + this.code + "' too big: must be smaller than 65536 bytes.");
        }
        for (InstructionHandle start = this.instructionList.getStart(); start != null; start = start.getNext()) {
            Instruction instruction = start.getInstruction();
            if (instruction instanceof IMPDEP1) {
                throw new StaticCodeInstructionConstraintException("IMPDEP1 must not be in the code, it is an illegal instruction for _internal_ JVM use!");
            }
            if (instruction instanceof IMPDEP2) {
                throw new StaticCodeInstructionConstraintException("IMPDEP2 must not be in the code, it is an illegal instruction for _internal_ JVM use!");
            }
            if (instruction instanceof BREAKPOINT) {
                throw new StaticCodeInstructionConstraintException("BREAKPOINT must not be in the code, it is an illegal instruction for _internal_ JVM use!");
            }
        }
        Instruction instruction2 = this.instructionList.getEnd().getInstruction();
        if (!(instruction2 instanceof ReturnInstruction) && !(instruction2 instanceof RET) && !(instruction2 instanceof GotoInstruction) && !(instruction2 instanceof ATHROW)) {
            throw new StaticCodeInstructionConstraintException("Execution must not fall off the bottom of the code array. This constraint is enforced statically as some existing verifiers do - so it may be a false alarm if the last instruction is not reachable.");
        }
    }

    private void pass3StaticInstructionOperandsChecks() {
        InstOperandConstraintVisitor instOperandConstraintVisitor = new InstOperandConstraintVisitor(new ConstantPoolGen(Repository.lookupClass(this.myOwner.getClassName()).getConstantPool()));
        for (InstructionHandle start = this.instructionList.getStart(); start != null; start = start.getNext()) {
            Instruction instruction = start.getInstruction();
            if (instruction instanceof JsrInstruction) {
                InstructionHandle target = ((JsrInstruction) instruction).getTarget();
                if (target == this.instructionList.getStart()) {
                    throw new StaticCodeInstructionOperandConstraintException("Due to JustIce's clear definition of subroutines, no JSR or JSR_W may have a top-level instruction (such as the very first instruction, which is targeted by instruction '" + start + "' as its target.");
                }
                if (!(target.getInstruction() instanceof ASTORE)) {
                    throw new StaticCodeInstructionOperandConstraintException("Due to JustIce's clear definition of subroutines, no JSR or JSR_W may target anything else than an ASTORE instruction. Instruction '" + start + "' targets '" + target + "'.");
                }
            }
            start.accept(instOperandConstraintVisitor);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.verifier.PassVerifier
    public VerificationResult do_verify() {
        VerificationResult doPass2 = this.myOwner.doPass2();
        VerificationResult verificationResult = VerificationResult.VR_OK;
        if (!doPass2.equals(verificationResult)) {
            return VerificationResult.VR_NOTYET;
        }
        Method[] methods = Repository.lookupClass(this.myOwner.getClassName()).getMethods();
        int i = this.method_no;
        if (i >= methods.length) {
            throw new InvalidMethodException("METHOD DOES NOT EXIST!");
        }
        Method method = methods[i];
        this.code = method.getCode();
        if (method.isAbstract() || method.isNative()) {
            return verificationResult;
        }
        try {
            InstructionList instructionList = new InstructionList(method.getCode().getCode());
            this.instructionList = instructionList;
            instructionList.setPositions(true);
            try {
                delayedPass2Checks();
                try {
                    pass3StaticInstructionChecks();
                    pass3StaticInstructionOperandsChecks();
                    return verificationResult;
                } catch (StaticCodeConstraintException e) {
                    return new VerificationResult(2, e.getMessage());
                }
            } catch (ClassConstraintException e2) {
                return new VerificationResult(2, e2.getMessage());
            }
        } catch (RuntimeException unused) {
            return new VerificationResult(2, "Bad bytecode in the code array of the Code attribute of method '" + method + "'.");
        }
    }

    public int getMethodNo() {
        return this.method_no;
    }
}
