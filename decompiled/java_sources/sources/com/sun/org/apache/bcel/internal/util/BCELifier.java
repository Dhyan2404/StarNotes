package com.sun.org.apache.bcel.internal.util;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.ClassParser;
import com.sun.org.apache.bcel.internal.classfile.ConstantValue;
import com.sun.org.apache.bcel.internal.classfile.EmptyVisitor;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import com.sun.org.apache.bcel.internal.generic.ArrayType;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.bcel.internal.generic.Type;
import java.io.OutputStream;
import java.io.PrintWriter;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes10.dex */
public class BCELifier extends EmptyVisitor {
    private JavaClass _clazz;
    private ConstantPoolGen _cp;
    private PrintWriter _out;

    public BCELifier(JavaClass javaClass, OutputStream outputStream) {
        this._clazz = javaClass;
        this._out = new PrintWriter(outputStream);
        this._cp = new ConstantPoolGen(this._clazz.getConstantPool());
    }

    public static void _main(String[] strArr) throws Exception {
        String str = strArr[0];
        JavaClass lookupClass = com.sun.org.apache.bcel.internal.Repository.lookupClass(str);
        if (lookupClass == null) {
            lookupClass = new ClassParser(str).parse();
        }
        new BCELifier(lookupClass, System.out).start();
    }

    public static String printArgumentTypes(Type[] typeArr) {
        if (typeArr.length == 0) {
            return "Type.NO_ARGS";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < typeArr.length; i++) {
            stringBuffer.append(printType(typeArr[i]));
            if (i < typeArr.length - 1) {
                stringBuffer.append(", ");
            }
        }
        return "new Type[] { " + stringBuffer.toString() + " }";
    }

    private void printCreate() {
        this._out.println("  public void create(OutputStream out) throws IOException {");
        if (this._clazz.getFields().length > 0) {
            this._out.println("    createFields();");
        }
        Method[] methods = this._clazz.getMethods();
        for (int i = 0; i < methods.length; i++) {
            this._out.println("    createMethod_" + i + "();");
        }
        this._out.println("    _cg.getJavaClass().dump(out);");
        this._out.println("  }\n");
    }

    public static String printFlags(int i) {
        return printFlags(i, false);
    }

    private void printMain() {
        String className = this._clazz.getClassName();
        this._out.println("  public static void _main(String[] args) throws Exception {");
        this._out.println(MapUtils.f104930a + className + "Creator creator = new " + className + "Creator();");
        PrintWriter printWriter = this._out;
        StringBuilder sb = new StringBuilder();
        sb.append("    creator.create(new FileOutputStream(\"");
        sb.append(className);
        sb.append(".class\"));");
        printWriter.println(sb.toString());
        this._out.println("  }");
    }

    public static String printType(Type type) {
        return printType(type.getSignature());
    }

    public void start() {
        visitJavaClass(this._clazz);
        this._out.flush();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitField(Field field) {
        this._out.println("\n    field = new FieldGen(" + printFlags(field.getAccessFlags()) + ", " + printType(field.getSignature()) + ", \"" + field.getName() + "\", _cp);");
        ConstantValue constantValue = field.getConstantValue();
        if (constantValue != null) {
            String constantValue2 = constantValue.toString();
            this._out.println("    field.setInitValue(" + constantValue2 + MotionUtils.f31762d);
        }
        this._out.println("    _cg.addField(field.getField());");
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitJavaClass(JavaClass javaClass) {
        String className = javaClass.getClassName();
        String superclassName = javaClass.getSuperclassName();
        String packageName = javaClass.getPackageName();
        String printArray = Utility.printArray(javaClass.getInterfaceNames(), false, true);
        if (!"".equals(packageName)) {
            className = className.substring(packageName.length() + 1);
            this._out.println("package " + packageName + ";\n");
        }
        this._out.println("import com.sun.org.apache.bcel.internal.generic.*;");
        this._out.println("import com.sun.org.apache.bcel.internal.classfile.*;");
        this._out.println("import com.sun.org.apache.bcel.internal.*;");
        this._out.println("import java.io.*;\n");
        this._out.println("public class " + className + "Creator implements Constants {");
        this._out.println("  private InstructionFactory _factory;");
        this._out.println("  private ConstantPoolGen    _cp;");
        this._out.println("  private ClassGen           _cg;\n");
        this._out.println("  public " + className + "Creator() {");
        PrintWriter printWriter = this._out;
        StringBuilder sb = new StringBuilder();
        sb.append("    _cg = new ClassGen(\"");
        if (!"".equals(packageName)) {
            className = packageName + "." + className;
        }
        sb.append(className);
        sb.append("\", \"");
        sb.append(superclassName);
        sb.append("\", ");
        sb.append("\"");
        sb.append(javaClass.getSourceFileName());
        sb.append("\", ");
        sb.append(printFlags(javaClass.getAccessFlags(), true));
        sb.append(", ");
        sb.append("new String[] { ");
        sb.append(printArray);
        sb.append(" });\n");
        printWriter.println(sb.toString());
        this._out.println("    _cp = _cg.getConstantPool();");
        this._out.println("    _factory = new InstructionFactory(_cg, _cp);");
        this._out.println("  }\n");
        printCreate();
        Field[] fields = javaClass.getFields();
        if (fields.length > 0) {
            this._out.println("  private void createFields() {");
            this._out.println("    FieldGen field;");
            for (Field field : fields) {
                field.accept(this);
            }
            this._out.println("  }\n");
        }
        Method[] methods = javaClass.getMethods();
        for (int i = 0; i < methods.length; i++) {
            this._out.println("  private void createMethod_" + i + "() {");
            methods[i].accept(this);
            this._out.println("  }\n");
        }
        printMain();
        this._out.println("}");
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.EmptyVisitor, com.sun.org.apache.bcel.internal.classfile.Visitor
    public void visitMethod(Method method) {
        MethodGen methodGen = new MethodGen(method, this._clazz.getClassName(), this._cp);
        Type returnType = methodGen.getReturnType();
        Type[] argumentTypes = methodGen.getArgumentTypes();
        this._out.println("    InstructionList il = new InstructionList();");
        this._out.println("    MethodGen method = new MethodGen(" + printFlags(method.getAccessFlags()) + ", " + printType(returnType) + ", " + printArgumentTypes(argumentTypes) + ", new String[] { " + Utility.printArray(methodGen.getArgumentNames(), false, true) + " }, \"" + method.getName() + "\", \"" + this._clazz.getClassName() + "\", il, _cp);\n");
        new BCELFactory(methodGen, this._out).start();
        this._out.println("    method.setMaxStack();");
        this._out.println("    method.setMaxLocals();");
        this._out.println("    _cg.addMethod(method.getMethod());");
        this._out.println("    il.dispose();");
    }

    public static String printFlags(int i, boolean z) {
        if (i == 0) {
            return "0";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 1;
        for (int i3 = 0; i3 <= 2048; i3++) {
            if ((i & i2) != 0) {
                if (i2 == 32 && z) {
                    stringBuffer.append("ACC_SUPER | ");
                } else {
                    stringBuffer.append("ACC_" + Constants.ACCESS_NAMES[i3].toUpperCase() + " | ");
                }
            }
            i2 <<= 1;
        }
        return stringBuffer.toString().substring(0, r6.length() - 3);
    }

    public static String printType(String str) {
        Type type = Type.getType(str);
        byte type2 = type.getType();
        if (type2 <= 12) {
            return "Type." + Constants.TYPE_NAMES[type2].toUpperCase();
        }
        if (type.toString().equals("java.lang.String")) {
            return "Type.STRING";
        }
        if (type.toString().equals(com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_CLASS)) {
            return "Type.OBJECT";
        }
        if (type.toString().equals(com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_BUFFER_CLASS)) {
            return "Type.STRINGBUFFER";
        }
        if (type instanceof ArrayType) {
            ArrayType arrayType = (ArrayType) type;
            return "new ArrayType(" + printType(arrayType.getBasicType()) + ", " + arrayType.getDimensions() + MotionUtils.f31762d;
        }
        return "new ObjectType(\"" + Utility.signatureToString(str, false) + "\")";
    }
}
