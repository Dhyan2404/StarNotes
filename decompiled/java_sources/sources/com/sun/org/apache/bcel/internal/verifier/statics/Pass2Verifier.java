package com.sun.org.apache.bcel.internal.verifier.statics;

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
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import com.sun.org.apache.bcel.internal.classfile.ConstantValue;
import com.sun.org.apache.bcel.internal.classfile.Deprecated;
import com.sun.org.apache.bcel.internal.classfile.DescendingVisitor;
import com.sun.org.apache.bcel.internal.classfile.EmptyVisitor;
import com.sun.org.apache.bcel.internal.classfile.ExceptionTable;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.InnerClass;
import com.sun.org.apache.bcel.internal.classfile.InnerClasses;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.LineNumber;
import com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.Node;
import com.sun.org.apache.bcel.internal.classfile.SourceFile;
import com.sun.org.apache.bcel.internal.classfile.Synthetic;
import com.sun.org.apache.bcel.internal.classfile.Unknown;
import com.sun.org.apache.bcel.internal.classfile.Visitor;
import com.sun.org.apache.bcel.internal.generic.ArrayType;
import com.sun.org.apache.bcel.internal.generic.ObjectType;
import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.org.apache.bcel.internal.verifier.PassVerifier;
import com.sun.org.apache.bcel.internal.verifier.VerificationResult;
import com.sun.org.apache.bcel.internal.verifier.Verifier;
import com.sun.org.apache.bcel.internal.verifier.VerifierFactory;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.ClassConstraintException;
import com.sun.org.apache.bcel.internal.verifier.exc.LocalVariableInfoInconsistentException;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;

/* loaded from: classes10.dex */
public final class Pass2Verifier extends PassVerifier implements Constants {
    private LocalVariablesInfo[] localVariablesInfos;
    private Verifier myOwner;

    /* loaded from: classes10.dex */
    public class CPESSC_Visitor extends EmptyVisitor implements Visitor {
        private Class CONST_Class;
        private Class CONST_Double;
        private Class CONST_Float;
        private Class CONST_Integer;
        private Class CONST_Long;
        private Class CONST_NameAndType;
        private Class CONST_String;
        private Class CONST_Utf8;
        private DescendingVisitor carrier;

        /* renamed from: cp */
        private final ConstantPool f64077cp;
        private final int cplen;
        private HashSet field_names;
        private HashSet field_names_and_desc;

        /* renamed from: jc */
        private final JavaClass f64078jc;
        private HashSet method_names_and_desc;

        private void checkIndex(Node node, int i, Class cls) {
            if (i < 0 || i >= this.cplen) {
                throw new ClassConstraintException("Invalid index '" + i + "' used by '" + Pass2Verifier.tostring(node) + "'.");
            }
            Constant constant = this.f64077cp.getConstant(i);
            if (cls.isInstance(constant)) {
                return;
            }
            throw new ClassCastException("Illegal constant '" + Pass2Verifier.tostring(constant) + "' at index '" + i + "'. '" + Pass2Verifier.tostring(node) + "' expects a '" + cls + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitCode(Code code) {
            checkIndex(code, code.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(code.getNameIndex())).getBytes();
            if (!bytes.equals(AttributeLayout.ATTRIBUTE_CODE)) {
                throw new ClassConstraintException("The Code attribute '" + Pass2Verifier.tostring(code) + "' is not correctly named 'Code' but '" + bytes + "'.");
            }
            if (!(this.carrier.predecessor() instanceof Method)) {
                Pass2Verifier.this.addMessage("Code attribute '" + Pass2Verifier.tostring(code) + "' is not declared in a method_info structure but in '" + this.carrier.predecessor() + "'. Ignored.");
                return;
            }
            Method method = (Method) this.carrier.predecessor();
            if (code.getCode().length == 0) {
                throw new ClassConstraintException("Code array of Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + method + "') must not be empty.");
            }
            CodeException[] exceptionTable = code.getExceptionTable();
            for (int i = 0; i < exceptionTable.length; i++) {
                int catchType = exceptionTable[i].getCatchType();
                if (catchType != 0) {
                    checkIndex(code, catchType, this.CONST_Class);
                    ConstantClass constantClass = (ConstantClass) this.f64077cp.getConstant(catchType);
                    checkIndex(constantClass, constantClass.getNameIndex(), this.CONST_Utf8);
                    String replace = ((ConstantUtf8) this.f64077cp.getConstant(constantClass.getNameIndex())).getBytes().replace('/', '.');
                    VerificationResult doPass1 = VerifierFactory.getVerifier(replace).doPass1();
                    if (doPass1 != VerificationResult.VR_OK) {
                        throw new ClassConstraintException("Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + method + "') has an exception_table entry '" + Pass2Verifier.tostring(exceptionTable[i]) + "' that references '" + replace + "' as an Exception but it does not pass verification pass 1: " + doPass1);
                    }
                    JavaClass lookupClass = Repository.lookupClass(replace);
                    JavaClass lookupClass2 = Repository.lookupClass(Type.THROWABLE.getClassName());
                    JavaClass lookupClass3 = Repository.lookupClass(Type.OBJECT.getClassName());
                    while (lookupClass != lookupClass3 && lookupClass != lookupClass2) {
                        VerificationResult doPass12 = VerifierFactory.getVerifier(lookupClass.getSuperclassName()).doPass1();
                        if (doPass12 != VerificationResult.VR_OK) {
                            throw new ClassConstraintException("Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + method + "') has an exception_table entry '" + Pass2Verifier.tostring(exceptionTable[i]) + "' that references '" + replace + "' as an Exception but '" + lookupClass.getSuperclassName() + "' in the ancestor hierachy does not pass verification pass 1: " + doPass12);
                        }
                        lookupClass = Repository.lookupClass(lookupClass.getSuperclassName());
                    }
                    if (lookupClass != lookupClass2) {
                        throw new ClassConstraintException("Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + method + "') has an exception_table entry '" + Pass2Verifier.tostring(exceptionTable[i]) + "' that references '" + replace + "' as an Exception but it is not a subclass of '" + lookupClass2.getClassName() + "'.");
                    }
                }
            }
            Method[] methods = Repository.lookupClass(Pass2Verifier.this.myOwner.getClassName()).getMethods();
            int i2 = 0;
            while (true) {
                if (i2 >= methods.length) {
                    i2 = -1;
                    break;
                } else if (method == methods[i2]) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                throw new AssertionViolatedException("Could not find a known BCEL Method object in the corresponding BCEL JavaClass object.");
            }
            Pass2Verifier.this.localVariablesInfos[i2] = new LocalVariablesInfo(code.getMaxLocals());
            Attribute[] attributes = code.getAttributes();
            int i3 = 0;
            for (int i4 = 0; i4 < attributes.length; i4++) {
                Attribute attribute = attributes[i4];
                if ((attribute instanceof LineNumberTable) || (attribute instanceof LocalVariableTable)) {
                    Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i4]) + "' as an attribute of Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + method + "') will effectively be ignored and is only useful for debuggers and such.");
                } else {
                    Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i4]) + "' as an attribute of Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + method + "') is unknown and will therefore be ignored.");
                }
                Attribute attribute2 = attributes[i4];
                if (attribute2 instanceof LocalVariableTable) {
                    LocalVariableTable localVariableTable = (LocalVariableTable) attribute2;
                    checkIndex(localVariableTable, localVariableTable.getNameIndex(), this.CONST_Utf8);
                    String bytes2 = ((ConstantUtf8) this.f64077cp.getConstant(localVariableTable.getNameIndex())).getBytes();
                    if (!bytes2.equals(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TABLE)) {
                        throw new ClassConstraintException("The LocalVariableTable attribute '" + Pass2Verifier.tostring(localVariableTable) + "' is not correctly named 'LocalVariableTable' but '" + bytes2 + "'.");
                    }
                    LocalVariable[] localVariableTable2 = localVariableTable.getLocalVariableTable();
                    for (int i5 = 0; i5 < localVariableTable2.length; i5++) {
                        checkIndex(localVariableTable, localVariableTable2[i5].getNameIndex(), this.CONST_Utf8);
                        String bytes3 = ((ConstantUtf8) this.f64077cp.getConstant(localVariableTable2[i5].getNameIndex())).getBytes();
                        if (!Pass2Verifier.validJavaIdentifier(bytes3)) {
                            throw new ClassConstraintException("LocalVariableTable '" + Pass2Verifier.tostring(localVariableTable) + "' references a local variable by the name '" + bytes3 + "' which is not a legal Java simple name.");
                        }
                        checkIndex(localVariableTable, localVariableTable2[i5].getSignatureIndex(), this.CONST_Utf8);
                        String bytes4 = ((ConstantUtf8) this.f64077cp.getConstant(localVariableTable2[i5].getSignatureIndex())).getBytes();
                        try {
                            Type type = Type.getType(bytes4);
                            int index = localVariableTable2[i5].getIndex();
                            if (((type == Type.LONG || type == Type.DOUBLE) ? index + 1 : index) >= code.getMaxLocals()) {
                                throw new ClassConstraintException("LocalVariableTable attribute '" + Pass2Verifier.tostring(localVariableTable) + "' references a LocalVariable '" + Pass2Verifier.tostring(localVariableTable2[i5]) + "' with an index that exceeds the surrounding Code attribute's max_locals value of '" + code.getMaxLocals() + "'.");
                            }
                            try {
                                Pass2Verifier.this.localVariablesInfos[i2].add(index, bytes3, localVariableTable2[i5].getStartPC(), localVariableTable2[i5].getLength(), type);
                            } catch (LocalVariableInfoInconsistentException e) {
                                throw new ClassConstraintException("Conflicting information in LocalVariableTable '" + Pass2Verifier.tostring(localVariableTable) + "' found in Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + Pass2Verifier.tostring(method) + "'). " + e.getMessage());
                            }
                        } catch (ClassFormatError unused) {
                            throw new ClassConstraintException("Illegal descriptor (==signature) '" + bytes4 + "' used by LocalVariable '" + Pass2Verifier.tostring(localVariableTable2[i5]) + "' referenced by '" + Pass2Verifier.tostring(localVariableTable) + "'.");
                        }
                    }
                    i3++;
                    if (i3 > code.getMaxLocals()) {
                        throw new ClassConstraintException("Number of LocalVariableTable attributes of Code attribute '" + Pass2Verifier.tostring(code) + "' (method '" + Pass2Verifier.tostring(method) + "') exceeds number of local variable slots '" + code.getMaxLocals() + "' ('There may be no more than one LocalVariableTable attribute per local variable in the Code attribute.').");
                    }
                }
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitCodeException(CodeException codeException) {
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantClass(ConstantClass constantClass) {
            if (constantClass.getTag() == 7) {
                checkIndex(constantClass, constantClass.getNameIndex(), this.CONST_Utf8);
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantClass) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantDouble(ConstantDouble constantDouble) {
            if (constantDouble.getTag() == 6) {
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantDouble) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantFieldref(ConstantFieldref constantFieldref) {
            if (constantFieldref.getTag() == 9) {
                checkIndex(constantFieldref, constantFieldref.getClassIndex(), this.CONST_Class);
                checkIndex(constantFieldref, constantFieldref.getNameAndTypeIndex(), this.CONST_NameAndType);
            } else {
                throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantFieldref) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantFloat(ConstantFloat constantFloat) {
            if (constantFloat.getTag() == 4) {
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantFloat) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantInteger(ConstantInteger constantInteger) {
            if (constantInteger.getTag() == 3) {
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantInteger) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantInterfaceMethodref(ConstantInterfaceMethodref constantInterfaceMethodref) {
            if (constantInterfaceMethodref.getTag() == 11) {
                checkIndex(constantInterfaceMethodref, constantInterfaceMethodref.getClassIndex(), this.CONST_Class);
                checkIndex(constantInterfaceMethodref, constantInterfaceMethodref.getNameAndTypeIndex(), this.CONST_NameAndType);
            } else {
                throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantInterfaceMethodref) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantLong(ConstantLong constantLong) {
            if (constantLong.getTag() == 5) {
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantLong) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantMethodref(ConstantMethodref constantMethodref) {
            if (constantMethodref.getTag() == 10) {
                checkIndex(constantMethodref, constantMethodref.getClassIndex(), this.CONST_Class);
                checkIndex(constantMethodref, constantMethodref.getNameAndTypeIndex(), this.CONST_NameAndType);
            } else {
                throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantMethodref) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantNameAndType(ConstantNameAndType constantNameAndType) {
            if (constantNameAndType.getTag() == 12) {
                checkIndex(constantNameAndType, constantNameAndType.getNameIndex(), this.CONST_Utf8);
                checkIndex(constantNameAndType, constantNameAndType.getSignatureIndex(), this.CONST_Utf8);
            } else {
                throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantNameAndType) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantPool(ConstantPool constantPool) {
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantString(ConstantString constantString) {
            if (constantString.getTag() == 8) {
                checkIndex(constantString, constantString.getStringIndex(), this.CONST_Utf8);
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantString) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantUtf8(ConstantUtf8 constantUtf8) {
            if (constantUtf8.getTag() == 1) {
                return;
            }
            throw new ClassConstraintException("Wrong constant tag in '" + Pass2Verifier.tostring(constantUtf8) + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantValue(ConstantValue constantValue) {
            checkIndex(constantValue, constantValue.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(constantValue.getNameIndex())).getBytes();
            if (!bytes.equals(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE)) {
                throw new ClassConstraintException("The ConstantValue attribute '" + Pass2Verifier.tostring(constantValue) + "' is not correctly named 'ConstantValue' but '" + bytes + "'.");
            }
            Object predecessor = this.carrier.predecessor();
            if (predecessor instanceof Field) {
                Field field = (Field) predecessor;
                Type type = Type.getType(((ConstantUtf8) this.f64077cp.getConstant(field.getSignatureIndex())).getBytes());
                int constantValueIndex = constantValue.getConstantValueIndex();
                if (constantValueIndex < 0 || constantValueIndex >= this.cplen) {
                    throw new ClassConstraintException("Invalid index '" + constantValueIndex + "' used by '" + Pass2Verifier.tostring(constantValue) + "'.");
                }
                Constant constant = this.f64077cp.getConstant(constantValueIndex);
                if (this.CONST_Long.isInstance(constant) && type.equals(Type.LONG)) {
                    return;
                }
                if (this.CONST_Float.isInstance(constant) && type.equals(Type.FLOAT)) {
                    return;
                }
                if (this.CONST_Double.isInstance(constant) && type.equals(Type.DOUBLE)) {
                    return;
                }
                if (this.CONST_Integer.isInstance(constant) && (type.equals(Type.INT) || type.equals(Type.SHORT) || type.equals(Type.CHAR) || type.equals(Type.BYTE) || type.equals(Type.BOOLEAN))) {
                    return;
                }
                if (this.CONST_String.isInstance(constant) && type.equals(Type.STRING)) {
                    return;
                }
                throw new ClassConstraintException("Illegal type of ConstantValue '" + constantValue + "' embedding Constant '" + constant + "'. It is referenced by field '" + Pass2Verifier.tostring(field) + "' expecting a different type: '" + type + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitDeprecated(Deprecated deprecated) {
            checkIndex(deprecated, deprecated.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(deprecated.getNameIndex())).getBytes();
            if (bytes.equals(AttributeLayout.ATTRIBUTE_DEPRECATED)) {
                return;
            }
            throw new ClassConstraintException("The Deprecated attribute '" + Pass2Verifier.tostring(deprecated) + "' is not correctly named 'Deprecated' but '" + bytes + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitExceptionTable(ExceptionTable exceptionTable) {
            checkIndex(exceptionTable, exceptionTable.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(exceptionTable.getNameIndex())).getBytes();
            if (!bytes.equals(AttributeLayout.ATTRIBUTE_EXCEPTIONS)) {
                throw new ClassConstraintException("The Exceptions attribute '" + Pass2Verifier.tostring(exceptionTable) + "' is not correctly named 'Exceptions' but '" + bytes + "'.");
            }
            int[] exceptionIndexTable = exceptionTable.getExceptionIndexTable();
            for (int i = 0; i < exceptionIndexTable.length; i++) {
                checkIndex(exceptionTable, exceptionIndexTable[i], this.CONST_Class);
                ConstantClass constantClass = (ConstantClass) this.f64077cp.getConstant(exceptionIndexTable[i]);
                checkIndex(constantClass, constantClass.getNameIndex(), this.CONST_Utf8);
                String replace = ((ConstantUtf8) this.f64077cp.getConstant(constantClass.getNameIndex())).getBytes().replace('/', '.');
                VerificationResult doPass1 = VerifierFactory.getVerifier(replace).doPass1();
                if (doPass1 != VerificationResult.VR_OK) {
                    throw new ClassConstraintException("Exceptions attribute '" + Pass2Verifier.tostring(exceptionTable) + "' references '" + replace + "' as an Exception but it does not pass verification pass 1: " + doPass1);
                }
                JavaClass lookupClass = Repository.lookupClass(replace);
                JavaClass lookupClass2 = Repository.lookupClass(Type.THROWABLE.getClassName());
                JavaClass lookupClass3 = Repository.lookupClass(Type.OBJECT.getClassName());
                while (lookupClass != lookupClass3 && lookupClass != lookupClass2) {
                    VerificationResult doPass12 = VerifierFactory.getVerifier(lookupClass.getSuperclassName()).doPass1();
                    if (doPass12 != VerificationResult.VR_OK) {
                        throw new ClassConstraintException("Exceptions attribute '" + Pass2Verifier.tostring(exceptionTable) + "' references '" + replace + "' as an Exception but '" + lookupClass.getSuperclassName() + "' in the ancestor hierachy does not pass verification pass 1: " + doPass12);
                    }
                    lookupClass = Repository.lookupClass(lookupClass.getSuperclassName());
                }
                if (lookupClass != lookupClass2) {
                    throw new ClassConstraintException("Exceptions attribute '" + Pass2Verifier.tostring(exceptionTable) + "' references '" + replace + "' as an Exception but it is not a subclass of '" + lookupClass2.getClassName() + "'.");
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [boolean, int] */
        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitField(Field field) {
            if (this.f64078jc.isClass()) {
                ?? isPrivate = field.isPrivate();
                int i = isPrivate;
                if (field.isProtected()) {
                    i = isPrivate + 1;
                }
                int i2 = i;
                if (field.isPublic()) {
                    i2 = i + 1;
                }
                if (i2 > 1) {
                    throw new ClassConstraintException("Field '" + Pass2Verifier.tostring(field) + "' must only have at most one of its ACC_PRIVATE, ACC_PROTECTED, ACC_PUBLIC modifiers set.");
                }
                if (field.isFinal() && field.isVolatile()) {
                    throw new ClassConstraintException("Field '" + Pass2Verifier.tostring(field) + "' must only have at most one of its ACC_FINAL, ACC_VOLATILE modifiers set.");
                }
            } else {
                if (!field.isPublic()) {
                    throw new ClassConstraintException("Interface field '" + Pass2Verifier.tostring(field) + "' must have the ACC_PUBLIC modifier set but hasn't!");
                }
                if (!field.isStatic()) {
                    throw new ClassConstraintException("Interface field '" + Pass2Verifier.tostring(field) + "' must have the ACC_STATIC modifier set but hasn't!");
                }
                if (!field.isFinal()) {
                    throw new ClassConstraintException("Interface field '" + Pass2Verifier.tostring(field) + "' must have the ACC_FINAL modifier set but hasn't!");
                }
            }
            if ((field.getAccessFlags() & (-224)) > 0) {
                Pass2Verifier.this.addMessage("Field '" + Pass2Verifier.tostring(field) + "' has access flag(s) other than ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_VOLATILE, ACC_TRANSIENT set (ignored).");
            }
            checkIndex(field, field.getNameIndex(), this.CONST_Utf8);
            String name = field.getName();
            if (!Pass2Verifier.validFieldName(name)) {
                throw new ClassConstraintException("Field '" + Pass2Verifier.tostring(field) + "' has illegal name '" + field.getName() + "'.");
            }
            checkIndex(field, field.getSignatureIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(field.getSignatureIndex())).getBytes();
            try {
                Type.getType(bytes);
                String str = name + bytes;
                if (this.field_names_and_desc.contains(str)) {
                    throw new ClassConstraintException("No two fields (like '" + Pass2Verifier.tostring(field) + "') are allowed have same names and descriptors!");
                }
                if (this.field_names.contains(name)) {
                    Pass2Verifier.this.addMessage("More than one field of name '" + name + "' detected (but with different type descriptors). This is very unusual.");
                }
                this.field_names_and_desc.add(str);
                this.field_names.add(name);
                Attribute[] attributes = field.getAttributes();
                for (int i3 = 0; i3 < attributes.length; i3++) {
                    Attribute attribute = attributes[i3];
                    if (!(attribute instanceof ConstantValue) && !(attribute instanceof Synthetic) && !(attribute instanceof Deprecated)) {
                        Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i3]) + "' as an attribute of Field '" + Pass2Verifier.tostring(field) + "' is unknown and will therefore be ignored.");
                    }
                    if (!(attributes[i3] instanceof ConstantValue)) {
                        Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i3]) + "' as an attribute of Field '" + Pass2Verifier.tostring(field) + "' is not a ConstantValue and is therefore only of use for debuggers and such.");
                    }
                }
            } catch (ClassFormatError unused) {
                throw new ClassConstraintException("Illegal descriptor (==signature) '" + bytes + "' used by '" + Pass2Verifier.tostring(field) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitInnerClass(InnerClass innerClass) {
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitInnerClasses(InnerClasses innerClasses) {
            checkIndex(innerClasses, innerClasses.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(innerClasses.getNameIndex())).getBytes();
            if (!bytes.equals(AttributeLayout.ATTRIBUTE_INNER_CLASSES)) {
                throw new ClassConstraintException("The InnerClasses attribute '" + Pass2Verifier.tostring(innerClasses) + "' is not correctly named 'InnerClasses' but '" + bytes + "'.");
            }
            InnerClass[] innerClasses2 = innerClasses.getInnerClasses();
            for (int i = 0; i < innerClasses2.length; i++) {
                checkIndex(innerClasses, innerClasses2[i].getInnerClassIndex(), this.CONST_Class);
                int outerClassIndex = innerClasses2[i].getOuterClassIndex();
                if (outerClassIndex != 0) {
                    checkIndex(innerClasses, outerClassIndex, this.CONST_Class);
                }
                int innerNameIndex = innerClasses2[i].getInnerNameIndex();
                if (innerNameIndex != 0) {
                    checkIndex(innerClasses, innerNameIndex, this.CONST_Utf8);
                }
                if ((innerClasses2[i].getInnerAccessFlags() & (-1568)) != 0) {
                    Pass2Verifier.this.addMessage("Unknown access flag for inner class '" + Pass2Verifier.tostring(innerClasses2[i]) + "' set (InnerClasses attribute '" + Pass2Verifier.tostring(innerClasses) + "').");
                }
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitJavaClass(JavaClass javaClass) {
            Attribute[] attributes = javaClass.getAttributes();
            boolean innerClassReferenced = new InnerClassDetector(this.f64078jc).innerClassReferenced();
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < attributes.length; i++) {
                Attribute attribute = attributes[i];
                if (!(attribute instanceof SourceFile) && !(attribute instanceof Deprecated) && !(attribute instanceof InnerClasses) && !(attribute instanceof Synthetic)) {
                    Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i]) + "' as an attribute of the ClassFile structure '" + Pass2Verifier.tostring(javaClass) + "' is unknown and will therefore be ignored.");
                }
                Attribute attribute2 = attributes[i];
                if (attribute2 instanceof SourceFile) {
                    if (z2) {
                        throw new ClassConstraintException("A ClassFile structure (like '" + Pass2Verifier.tostring(javaClass) + "') may have no more than one SourceFile attribute.");
                    }
                    z2 = true;
                }
                if (attribute2 instanceof InnerClasses) {
                    if (!z) {
                        z = true;
                    } else if (innerClassReferenced) {
                        throw new ClassConstraintException("A Classfile structure (like '" + Pass2Verifier.tostring(javaClass) + "') must have exactly one InnerClasses attribute if at least one Inner Class is referenced (which is the case). More than one InnerClasses attribute was found.");
                    }
                    if (!innerClassReferenced) {
                        Pass2Verifier.this.addMessage("No referenced Inner Class found, but InnerClasses attribute '" + Pass2Verifier.tostring(attributes[i]) + "' found. Strongly suggest removal of that attribute.");
                    }
                }
            }
            if (!innerClassReferenced || z) {
                return;
            }
            Pass2Verifier.this.addMessage("A Classfile structure (like '" + Pass2Verifier.tostring(javaClass) + "') must have exactly one InnerClasses attribute if at least one Inner Class is referenced (which is the case). No InnerClasses attribute was found.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitLineNumber(LineNumber lineNumber) {
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitLineNumberTable(LineNumberTable lineNumberTable) {
            checkIndex(lineNumberTable, lineNumberTable.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(lineNumberTable.getNameIndex())).getBytes();
            if (bytes.equals(AttributeLayout.ATTRIBUTE_LINE_NUMBER_TABLE)) {
                return;
            }
            throw new ClassConstraintException("The LineNumberTable attribute '" + Pass2Verifier.tostring(lineNumberTable) + "' is not correctly named 'LineNumberTable' but '" + bytes + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitLocalVariable(LocalVariable localVariable) {
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitLocalVariableTable(LocalVariableTable localVariableTable) {
        }

        /* JADX WARN: Type inference failed for: r3v42, types: [boolean, int] */
        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitMethod(Method method) {
            VerificationResult doPass1;
            VerificationResult doPass12;
            checkIndex(method, method.getNameIndex(), this.CONST_Utf8);
            String name = method.getName();
            if (!Pass2Verifier.validMethodName(name, true)) {
                throw new ClassConstraintException("Method '" + Pass2Verifier.tostring(method) + "' has illegal name '" + name + "'.");
            }
            checkIndex(method, method.getSignatureIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(method.getSignatureIndex())).getBytes();
            try {
                Type returnType = Type.getReturnType(bytes);
                Type[] argumentTypes = Type.getArgumentTypes(bytes);
                if (returnType instanceof ArrayType) {
                    returnType = ((ArrayType) returnType).getBasicType();
                }
                if ((returnType instanceof ObjectType) && (doPass12 = VerifierFactory.getVerifier(((ObjectType) returnType).getClassName()).doPass1()) != VerificationResult.VR_OK) {
                    throw new ClassConstraintException("Method '" + Pass2Verifier.tostring(method) + "' has a return type that does not pass verification pass 1: '" + doPass12 + "'.");
                }
                for (int i = 0; i < argumentTypes.length; i++) {
                    Type type = argumentTypes[i];
                    if (type instanceof ArrayType) {
                        type = ((ArrayType) type).getBasicType();
                    }
                    if ((type instanceof ObjectType) && (doPass1 = VerifierFactory.getVerifier(((ObjectType) type).getClassName()).doPass1()) != VerificationResult.VR_OK) {
                        throw new ClassConstraintException("Method '" + Pass2Verifier.tostring(method) + "' has an argument type that does not pass verification pass 1: '" + doPass1 + "'.");
                    }
                }
                if (name.equals(Constants.STATIC_INITIALIZER_NAME) && argumentTypes.length != 0) {
                    throw new ClassConstraintException("Method '" + Pass2Verifier.tostring(method) + "' has illegal name '" + name + "'. It's name resembles the class or interface initialization method which it isn't because of its arguments (==descriptor).");
                }
                if (this.f64078jc.isClass()) {
                    ?? isPrivate = method.isPrivate();
                    int i2 = isPrivate;
                    if (method.isProtected()) {
                        i2 = isPrivate + 1;
                    }
                    int i3 = i2;
                    if (method.isPublic()) {
                        i3 = i2 + 1;
                    }
                    if (i3 > 1) {
                        throw new ClassConstraintException("Method '" + Pass2Verifier.tostring(method) + "' must only have at most one of its ACC_PRIVATE, ACC_PROTECTED, ACC_PUBLIC modifiers set.");
                    }
                    if (method.isAbstract()) {
                        if (method.isFinal()) {
                            throw new ClassConstraintException("Abstract method '" + Pass2Verifier.tostring(method) + "' must not have the ACC_FINAL modifier set.");
                        }
                        if (method.isNative()) {
                            throw new ClassConstraintException("Abstract method '" + Pass2Verifier.tostring(method) + "' must not have the ACC_NATIVE modifier set.");
                        }
                        if (method.isPrivate()) {
                            throw new ClassConstraintException("Abstract method '" + Pass2Verifier.tostring(method) + "' must not have the ACC_PRIVATE modifier set.");
                        }
                        if (method.isStatic()) {
                            throw new ClassConstraintException("Abstract method '" + Pass2Verifier.tostring(method) + "' must not have the ACC_STATIC modifier set.");
                        }
                        if (method.isStrictfp()) {
                            throw new ClassConstraintException("Abstract method '" + Pass2Verifier.tostring(method) + "' must not have the ACC_STRICT modifier set.");
                        }
                        if (method.isSynchronized()) {
                            throw new ClassConstraintException("Abstract method '" + Pass2Verifier.tostring(method) + "' must not have the ACC_SYNCHRONIZED modifier set.");
                        }
                    }
                } else if (!name.equals(Constants.STATIC_INITIALIZER_NAME)) {
                    if (!method.isPublic()) {
                        throw new ClassConstraintException("Interface method '" + Pass2Verifier.tostring(method) + "' must have the ACC_PUBLIC modifier set but hasn't!");
                    }
                    if (!method.isAbstract()) {
                        throw new ClassConstraintException("Interface method '" + Pass2Verifier.tostring(method) + "' must have the ACC_STATIC modifier set but hasn't!");
                    }
                    if (method.isPrivate() || method.isProtected() || method.isStatic() || method.isFinal() || method.isSynchronized() || method.isNative() || method.isStrictfp()) {
                        throw new ClassConstraintException("Interface method '" + Pass2Verifier.tostring(method) + "' must not have any of the ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT, ACC_STRICT modifiers set.");
                    }
                }
                if (name.equals(Constants.CONSTRUCTOR_NAME) && (method.isStatic() || method.isFinal() || method.isSynchronized() || method.isNative() || method.isAbstract())) {
                    throw new ClassConstraintException("Instance initialization method '" + Pass2Verifier.tostring(method) + "' must not have any of the ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT modifiers set.");
                }
                if (name.equals(Constants.STATIC_INITIALIZER_NAME)) {
                    if ((method.getAccessFlags() & (-2049)) > 0) {
                        Pass2Verifier.this.addMessage("Class or interface initialization method '" + Pass2Verifier.tostring(method) + "' has superfluous access modifier(s) set: everything but ACC_STRICT is ignored.");
                    }
                    if (method.isAbstract()) {
                        throw new ClassConstraintException("Class or interface initialization method '" + Pass2Verifier.tostring(method) + "' must not be abstract. This contradicts the Java Language Specification, Second Edition (which omits this constraint) but is common practice of existing verifiers.");
                    }
                }
                if ((method.getAccessFlags() & (-3392)) > 0) {
                    Pass2Verifier.this.addMessage("Method '" + Pass2Verifier.tostring(method) + "' has access flag(s) other than ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT, ACC_STRICT set (ignored).");
                }
                String str = name + bytes;
                if (this.method_names_and_desc.contains(str)) {
                    throw new ClassConstraintException("No two methods (like '" + Pass2Verifier.tostring(method) + "') are allowed have same names and desciptors!");
                }
                this.method_names_and_desc.add(str);
                Attribute[] attributes = method.getAttributes();
                int i4 = 0;
                for (int i5 = 0; i5 < attributes.length; i5++) {
                    Attribute attribute = attributes[i5];
                    if (!(attribute instanceof Code) && !(attribute instanceof ExceptionTable) && !(attribute instanceof Synthetic) && !(attribute instanceof Deprecated)) {
                        Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i5]) + "' as an attribute of Method '" + Pass2Verifier.tostring(method) + "' is unknown and will therefore be ignored.");
                    }
                    Attribute attribute2 = attributes[i5];
                    if (!(attribute2 instanceof Code) && !(attribute2 instanceof ExceptionTable)) {
                        Pass2Verifier.this.addMessage("Attribute '" + Pass2Verifier.tostring(attributes[i5]) + "' as an attribute of Method '" + Pass2Verifier.tostring(method) + "' is neither Code nor Exceptions and is therefore only of use for debuggers and such.");
                    }
                    if ((attributes[i5] instanceof Code) && (method.isNative() || method.isAbstract())) {
                        throw new ClassConstraintException("Native or abstract methods like '" + Pass2Verifier.tostring(method) + "' must not have a Code attribute like '" + Pass2Verifier.tostring(attributes[i5]) + "'.");
                    }
                    if (attributes[i5] instanceof Code) {
                        i4++;
                    }
                }
                if (method.isNative() || method.isAbstract() || i4 == 1) {
                    return;
                }
                throw new ClassConstraintException("Non-native, non-abstract methods like '" + Pass2Verifier.tostring(method) + "' must have exactly one Code attribute (found: " + i4 + ").");
            } catch (ClassFormatError unused) {
                throw new ClassConstraintException("Illegal descriptor (==signature) '" + bytes + "' used by Method '" + Pass2Verifier.tostring(method) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitSourceFile(SourceFile sourceFile) {
            checkIndex(sourceFile, sourceFile.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(sourceFile.getNameIndex())).getBytes();
            if (!bytes.equals(AttributeLayout.ATTRIBUTE_SOURCE_FILE)) {
                throw new ClassConstraintException("The SourceFile attribute '" + Pass2Verifier.tostring(sourceFile) + "' is not correctly named 'SourceFile' but '" + bytes + "'.");
            }
            checkIndex(sourceFile, sourceFile.getSourceFileIndex(), this.CONST_Utf8);
            String bytes2 = ((ConstantUtf8) this.f64077cp.getConstant(sourceFile.getSourceFileIndex())).getBytes();
            String lowerCase = bytes2.toLowerCase();
            if (bytes2.indexOf(47) == -1 && bytes2.indexOf(92) == -1 && bytes2.indexOf(58) == -1 && lowerCase.lastIndexOf(".java") != -1) {
                return;
            }
            Pass2Verifier.this.addMessage("SourceFile attribute '" + Pass2Verifier.tostring(sourceFile) + "' has a funny name: remember not to confuse certain parsers working on javap's output. Also, this name ('" + bytes2 + "') is considered an unqualified (simple) file name only.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitSynthetic(Synthetic synthetic) {
            checkIndex(synthetic, synthetic.getNameIndex(), this.CONST_Utf8);
            String bytes = ((ConstantUtf8) this.f64077cp.getConstant(synthetic.getNameIndex())).getBytes();
            if (bytes.equals("Synthetic")) {
                return;
            }
            throw new ClassConstraintException("The Synthetic attribute '" + Pass2Verifier.tostring(synthetic) + "' is not correctly named 'Synthetic' but '" + bytes + "'.");
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitUnknown(Unknown unknown) {
            checkIndex(unknown, unknown.getNameIndex(), this.CONST_Utf8);
            Pass2Verifier.this.addMessage("Unknown attribute '" + Pass2Verifier.tostring(unknown) + "'. This attribute is not known in any context!");
        }

        private CPESSC_Visitor(JavaClass javaClass) {
            this.field_names = new HashSet();
            this.field_names_and_desc = new HashSet();
            this.method_names_and_desc = new HashSet();
            this.f64078jc = javaClass;
            ConstantPool constantPool = javaClass.getConstantPool();
            this.f64077cp = constantPool;
            this.cplen = constantPool.getLength();
            this.CONST_Class = ConstantClass.class;
            this.CONST_String = ConstantString.class;
            this.CONST_Integer = ConstantInteger.class;
            this.CONST_Float = ConstantFloat.class;
            this.CONST_Long = ConstantLong.class;
            this.CONST_Double = ConstantDouble.class;
            this.CONST_NameAndType = ConstantNameAndType.class;
            this.CONST_Utf8 = ConstantUtf8.class;
            DescendingVisitor descendingVisitor = new DescendingVisitor(javaClass, this);
            this.carrier = descendingVisitor;
            descendingVisitor.visit();
        }
    }

    /* loaded from: classes10.dex */
    public class FAMRAV_Visitor extends EmptyVisitor implements Visitor {

        /* renamed from: cp */
        private final ConstantPool f64079cp;

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantFieldref(ConstantFieldref constantFieldref) {
            if (constantFieldref.getTag() != 9) {
                throw new ClassConstraintException("ConstantFieldref '" + Pass2Verifier.tostring(constantFieldref) + "' has wrong tag!");
            }
            ConstantNameAndType constantNameAndType = (ConstantNameAndType) this.f64079cp.getConstant(constantFieldref.getNameAndTypeIndex());
            String bytes = ((ConstantUtf8) this.f64079cp.getConstant(constantNameAndType.getNameIndex())).getBytes();
            if (!Pass2Verifier.validFieldName(bytes)) {
                throw new ClassConstraintException("Invalid field name '" + bytes + "' referenced by '" + Pass2Verifier.tostring(constantFieldref) + "'.");
            }
            String bytes2 = ((ConstantUtf8) this.f64079cp.getConstant(((ConstantClass) this.f64079cp.getConstant(constantFieldref.getClassIndex())).getNameIndex())).getBytes();
            if (!Pass2Verifier.validClassName(bytes2)) {
                throw new ClassConstraintException("Illegal class name '" + bytes2 + "' used by '" + Pass2Verifier.tostring(constantFieldref) + "'.");
            }
            String bytes3 = ((ConstantUtf8) this.f64079cp.getConstant(constantNameAndType.getSignatureIndex())).getBytes();
            try {
                Type.getType(bytes3);
            } catch (ClassFormatError unused) {
                throw new ClassConstraintException("Illegal descriptor (==signature) '" + bytes3 + "' used by '" + Pass2Verifier.tostring(constantFieldref) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantInterfaceMethodref(ConstantInterfaceMethodref constantInterfaceMethodref) {
            if (constantInterfaceMethodref.getTag() != 11) {
                throw new ClassConstraintException("ConstantInterfaceMethodref '" + Pass2Verifier.tostring(constantInterfaceMethodref) + "' has wrong tag!");
            }
            ConstantNameAndType constantNameAndType = (ConstantNameAndType) this.f64079cp.getConstant(constantInterfaceMethodref.getNameAndTypeIndex());
            String bytes = ((ConstantUtf8) this.f64079cp.getConstant(constantNameAndType.getNameIndex())).getBytes();
            if (!Pass2Verifier.validInterfaceMethodName(bytes)) {
                throw new ClassConstraintException("Invalid (interface) method name '" + bytes + "' referenced by '" + Pass2Verifier.tostring(constantInterfaceMethodref) + "'.");
            }
            String bytes2 = ((ConstantUtf8) this.f64079cp.getConstant(((ConstantClass) this.f64079cp.getConstant(constantInterfaceMethodref.getClassIndex())).getNameIndex())).getBytes();
            if (!Pass2Verifier.validClassName(bytes2)) {
                throw new ClassConstraintException("Illegal class name '" + bytes2 + "' used by '" + Pass2Verifier.tostring(constantInterfaceMethodref) + "'.");
            }
            String bytes3 = ((ConstantUtf8) this.f64079cp.getConstant(constantNameAndType.getSignatureIndex())).getBytes();
            try {
                Type returnType = Type.getReturnType(bytes3);
                if (!bytes.equals(Constants.STATIC_INITIALIZER_NAME) || returnType == Type.VOID) {
                    return;
                }
                Pass2Verifier.this.addMessage("Class or interface initialization method '<clinit>' usually has VOID return type instead of '" + returnType + "'. Note this is really not a requirement of The Java Virtual Machine Specification, Second Edition.");
            } catch (ClassFormatError unused) {
                throw new ClassConstraintException("Illegal descriptor (==signature) '" + bytes3 + "' used by '" + Pass2Verifier.tostring(constantInterfaceMethodref) + "'.");
            }
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantMethodref(ConstantMethodref constantMethodref) {
            if (constantMethodref.getTag() != 10) {
                throw new ClassConstraintException("ConstantMethodref '" + Pass2Verifier.tostring(constantMethodref) + "' has wrong tag!");
            }
            ConstantNameAndType constantNameAndType = (ConstantNameAndType) this.f64079cp.getConstant(constantMethodref.getNameAndTypeIndex());
            String bytes = ((ConstantUtf8) this.f64079cp.getConstant(constantNameAndType.getNameIndex())).getBytes();
            if (!Pass2Verifier.validClassMethodName(bytes)) {
                throw new ClassConstraintException("Invalid (non-interface) method name '" + bytes + "' referenced by '" + Pass2Verifier.tostring(constantMethodref) + "'.");
            }
            String bytes2 = ((ConstantUtf8) this.f64079cp.getConstant(((ConstantClass) this.f64079cp.getConstant(constantMethodref.getClassIndex())).getNameIndex())).getBytes();
            if (!Pass2Verifier.validClassName(bytes2)) {
                throw new ClassConstraintException("Illegal class name '" + bytes2 + "' used by '" + Pass2Verifier.tostring(constantMethodref) + "'.");
            }
            String bytes3 = ((ConstantUtf8) this.f64079cp.getConstant(constantNameAndType.getSignatureIndex())).getBytes();
            try {
                Type returnType = Type.getReturnType(bytes3);
                if (bytes.equals(Constants.CONSTRUCTOR_NAME) && returnType != Type.VOID) {
                    throw new ClassConstraintException("Instance initialization method must have VOID return type.");
                }
            } catch (ClassFormatError unused) {
                throw new ClassConstraintException("Illegal descriptor (==signature) '" + bytes3 + "' used by '" + Pass2Verifier.tostring(constantMethodref) + "'.");
            }
        }

        private FAMRAV_Visitor(JavaClass javaClass) {
            this.f64079cp = javaClass.getConstantPool();
        }
    }

    public Pass2Verifier(Verifier verifier) {
        this.myOwner = verifier;
    }

    private void constant_pool_entries_satisfy_static_constraints() {
        new CPESSC_Visitor(Repository.lookupClass(this.myOwner.getClassName()));
    }

    private void every_class_has_an_accessible_superclass() {
        HashSet hashSet = new HashSet();
        JavaClass lookupClass = Repository.lookupClass(this.myOwner.getClassName());
        int i = -1;
        while (i != 0) {
            i = lookupClass.getSuperclassNameIndex();
            if (i == 0) {
                ObjectType objectType = Type.OBJECT;
                if (lookupClass != Repository.lookupClass(objectType.getClassName())) {
                    throw new ClassConstraintException("Superclass of '" + lookupClass.getClassName() + "' missing but not " + objectType.getClassName() + " itself!");
                }
            } else {
                String superclassName = lookupClass.getSuperclassName();
                if (!hashSet.add(superclassName)) {
                    throw new ClassConstraintException("Circular superclass hierarchy detected.");
                }
                if (VerifierFactory.getVerifier(superclassName).doPass1() != VerificationResult.VR_OK) {
                    throw new ClassConstraintException("Could not load in ancestor class '" + superclassName + "'.");
                }
                JavaClass lookupClass2 = Repository.lookupClass(superclassName);
                if (lookupClass2.isFinal()) {
                    throw new ClassConstraintException("Ancestor class '" + superclassName + "' has the FINAL access modifier and must therefore not be subclassed.");
                }
                lookupClass = lookupClass2;
            }
        }
    }

    private void field_and_method_refs_are_valid() {
        JavaClass lookupClass = Repository.lookupClass(this.myOwner.getClassName());
        new DescendingVisitor(lookupClass, new FAMRAV_Visitor(lookupClass)).visit();
    }

    private void final_methods_are_not_overridden() {
        HashMap hashMap = new HashMap();
        JavaClass lookupClass = Repository.lookupClass(this.myOwner.getClassName());
        int i = -1;
        while (i != 0) {
            i = lookupClass.getSuperclassNameIndex();
            Method[] methods = lookupClass.getMethods();
            for (int i2 = 0; i2 < methods.length; i2++) {
                String str = methods[i2].getName() + methods[i2].getSignature();
                if (hashMap.containsKey(str)) {
                    if (methods[i2].isFinal()) {
                        throw new ClassConstraintException("Method '" + str + "' in class '" + hashMap.get(str) + "' overrides the final (not-overridable) definition in class '" + lookupClass.getClassName() + "'.");
                    }
                    if (!methods[i2].isStatic()) {
                        hashMap.put(str, lookupClass.getClassName());
                    }
                } else if (!methods[i2].isStatic()) {
                    hashMap.put(str, lookupClass.getClassName());
                }
            }
            lookupClass = Repository.lookupClass(lookupClass.getSuperclassName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tostring(Node node) {
        return new StringRepresentation(node).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validClassMethodName(String str) {
        return validMethodName(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean validClassName(String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validFieldName(String str) {
        return validJavaIdentifier(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validInterfaceMethodName(String str) {
        if (str.startsWith("<")) {
            return false;
        }
        return validJavaLangMethodName(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validJavaIdentifier(String str) {
        if (!Character.isJavaIdentifierStart(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!Character.isJavaIdentifierPart(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean validJavaLangMethodName(String str) {
        if (!Character.isJavaIdentifierStart(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!Character.isJavaIdentifierPart(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validMethodName(String str, boolean z) {
        if (validJavaLangMethodName(str)) {
            return true;
        }
        return z ? str.equals(Constants.CONSTRUCTOR_NAME) || str.equals(Constants.STATIC_INITIALIZER_NAME) : str.equals(Constants.CONSTRUCTOR_NAME);
    }

    @Override // com.sun.org.apache.bcel.internal.verifier.PassVerifier
    public VerificationResult do_verify() {
        VerificationResult doPass1 = this.myOwner.doPass1();
        VerificationResult verificationResult = VerificationResult.VR_OK;
        if (!doPass1.equals(verificationResult)) {
            return VerificationResult.VR_NOTYET;
        }
        this.localVariablesInfos = new LocalVariablesInfo[Repository.lookupClass(this.myOwner.getClassName()).getMethods().length];
        try {
            constant_pool_entries_satisfy_static_constraints();
            field_and_method_refs_are_valid();
            every_class_has_an_accessible_superclass();
            final_methods_are_not_overridden();
            return verificationResult;
        } catch (ClassConstraintException e) {
            return new VerificationResult(2, e.getMessage());
        }
    }

    public LocalVariablesInfo getLocalVariablesInfo(int i) {
        if (verify() != VerificationResult.VR_OK) {
            return null;
        }
        if (i >= 0) {
            LocalVariablesInfo[] localVariablesInfoArr = this.localVariablesInfos;
            if (i < localVariablesInfoArr.length) {
                return localVariablesInfoArr[i];
            }
        }
        throw new AssertionViolatedException("Method number out of range.");
    }

    /* loaded from: classes10.dex */
    public class InnerClassDetector extends EmptyVisitor {

        /* renamed from: cp */
        private ConstantPool f64080cp;
        private boolean hasInnerClass = false;

        /* renamed from: jc */
        private JavaClass f64081jc;

        private InnerClassDetector() {
        }

        public boolean innerClassReferenced() {
            return this.hasInnerClass;
        }

        @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
        public void visitConstantClass(ConstantClass constantClass) {
            Constant constant = this.f64080cp.getConstant(constantClass.getNameIndex());
            if (constant instanceof ConstantUtf8) {
                if (((ConstantUtf8) constant).getBytes().startsWith(this.f64081jc.getClassName().replace('.', '/') + "$")) {
                    this.hasInnerClass = true;
                }
            }
        }

        public InnerClassDetector(JavaClass javaClass) {
            this.f64081jc = javaClass;
            this.f64080cp = javaClass.getConstantPool();
            new DescendingVisitor(this.f64081jc, this).visit();
        }
    }
}
