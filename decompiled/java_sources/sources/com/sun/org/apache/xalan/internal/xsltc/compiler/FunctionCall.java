package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKESTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.IntType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MultiHashtable;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ObjectType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class FunctionCall extends Expression {
    private static final Vector EMPTY_ARG_LIST = new Vector(0);
    protected static final String EXSLT_COMMON = "http://exslt.org/common";
    protected static final String EXSLT_DATETIME = "http://exslt.org/dates-and-times";
    protected static final String EXSLT_MATH = "http://exslt.org/math";
    protected static final String EXSLT_SETS = "http://exslt.org/sets";
    protected static final String EXSLT_STRINGS = "http://exslt.org/strings";
    protected static final String EXT_XALAN = "http://xml.apache.org/xalan";
    protected static final String EXT_XSLTC = "http://xml.apache.org/xalan/xsltc";
    protected static final String JAVA_EXT_XALAN = "http://xml.apache.org/xalan/java";
    protected static final String JAVA_EXT_XALAN_OLD = "http://xml.apache.org/xslt/java";
    protected static final String JAVA_EXT_XSLTC = "http://xml.apache.org/xalan/xsltc/java";
    protected static final int NAMESPACE_FORMAT_CLASS = 1;
    protected static final int NAMESPACE_FORMAT_CLASS_OR_PACKAGE = 3;
    protected static final int NAMESPACE_FORMAT_JAVA = 0;
    protected static final int NAMESPACE_FORMAT_PACKAGE = 2;
    private static final Hashtable _extensionFunctionTable;
    private static final Hashtable _extensionNamespaceTable;
    private static final MultiHashtable _internal2Java;
    private static final Hashtable _java2Internal;
    private final Vector _arguments;
    private Constructor _chosenConstructor;
    private Method _chosenMethod;
    private MethodType _chosenMethodType;
    private String _className;
    private Class _clazz;
    private QName _fname;
    private boolean _isExtConstructor;
    private boolean _isStatic;
    private int _namespace_format;
    Expression _thisArgument;
    private boolean unresolvedExternal;

    /* loaded from: classes10.dex */
    public static class JavaType {
        public int distance;
        public Class type;

        public JavaType(Class cls, int i) {
            this.type = cls;
            this.distance = i;
        }

        public boolean equals(Object obj) {
            return obj.equals(this.type);
        }
    }

    static {
        MultiHashtable multiHashtable = new MultiHashtable();
        _internal2Java = multiHashtable;
        Hashtable hashtable = new Hashtable();
        _java2Internal = hashtable;
        Hashtable hashtable2 = new Hashtable();
        _extensionNamespaceTable = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        _extensionFunctionTable = hashtable3;
        try {
            Type type = Type.Boolean;
            Class cls = Boolean.TYPE;
            multiHashtable.put(type, new JavaType(cls, 0));
            multiHashtable.put(type, new JavaType(Boolean.class, 1));
            multiHashtable.put(type, new JavaType(Object.class, 2));
            Type type2 = Type.Real;
            multiHashtable.put(type2, new JavaType(Double.TYPE, 0));
            multiHashtable.put(type2, new JavaType(Double.class, 1));
            Class cls2 = Float.TYPE;
            multiHashtable.put(type2, new JavaType(cls2, 2));
            Class cls3 = Long.TYPE;
            multiHashtable.put(type2, new JavaType(cls3, 3));
            Class cls4 = Integer.TYPE;
            multiHashtable.put(type2, new JavaType(cls4, 4));
            multiHashtable.put(type2, new JavaType(Short.TYPE, 5));
            multiHashtable.put(type2, new JavaType(Byte.TYPE, 6));
            multiHashtable.put(type2, new JavaType(Character.TYPE, 7));
            multiHashtable.put(type2, new JavaType(Object.class, 8));
            Type type3 = Type.Int;
            multiHashtable.put(type3, new JavaType(Double.TYPE, 0));
            multiHashtable.put(type3, new JavaType(Double.class, 1));
            multiHashtable.put(type3, new JavaType(cls2, 2));
            multiHashtable.put(type3, new JavaType(cls3, 3));
            multiHashtable.put(type3, new JavaType(cls4, 4));
            multiHashtable.put(type3, new JavaType(Short.TYPE, 5));
            multiHashtable.put(type3, new JavaType(Byte.TYPE, 6));
            multiHashtable.put(type3, new JavaType(Character.TYPE, 7));
            multiHashtable.put(type3, new JavaType(Object.class, 8));
            Type type4 = Type.String;
            multiHashtable.put(type4, new JavaType(String.class, 0));
            multiHashtable.put(type4, new JavaType(Object.class, 1));
            Type type5 = Type.NodeSet;
            multiHashtable.put(type5, new JavaType(NodeList.class, 0));
            multiHashtable.put(type5, new JavaType(Node.class, 1));
            multiHashtable.put(type5, new JavaType(Object.class, 2));
            multiHashtable.put(type5, new JavaType(String.class, 3));
            Type type6 = Type.Node;
            multiHashtable.put(type6, new JavaType(NodeList.class, 0));
            multiHashtable.put(type6, new JavaType(Node.class, 1));
            multiHashtable.put(type6, new JavaType(Object.class, 2));
            multiHashtable.put(type6, new JavaType(String.class, 3));
            Type type7 = Type.ResultTree;
            multiHashtable.put(type7, new JavaType(NodeList.class, 0));
            multiHashtable.put(type7, new JavaType(Node.class, 1));
            multiHashtable.put(type7, new JavaType(Object.class, 2));
            multiHashtable.put(type7, new JavaType(String.class, 3));
            Type type8 = Type.Reference;
            multiHashtable.put(type8, new JavaType(Object.class, 0));
            hashtable.put(cls, type);
            hashtable.put(Void.TYPE, Type.Void);
            hashtable.put(Character.TYPE, type2);
            hashtable.put(Byte.TYPE, type2);
            hashtable.put(Short.TYPE, type2);
            hashtable.put(cls4, type2);
            hashtable.put(cls3, type2);
            hashtable.put(cls2, type2);
            hashtable.put(Double.TYPE, type2);
            hashtable.put(String.class, type4);
            hashtable.put(Object.class, type8);
            hashtable.put(NodeList.class, type5);
            hashtable.put(Node.class, type5);
            hashtable2.put("http://xml.apache.org/xalan", "com.sun.org.apache.xalan.internal.lib.Extensions");
            hashtable2.put("http://exslt.org/common", "com.sun.org.apache.xalan.internal.lib.ExsltCommon");
            hashtable2.put("http://exslt.org/math", "com.sun.org.apache.xalan.internal.lib.ExsltMath");
            hashtable2.put("http://exslt.org/sets", "com.sun.org.apache.xalan.internal.lib.ExsltSets");
            hashtable2.put("http://exslt.org/dates-and-times", "com.sun.org.apache.xalan.internal.lib.ExsltDatetime");
            hashtable2.put("http://exslt.org/strings", "com.sun.org.apache.xalan.internal.lib.ExsltStrings");
            hashtable3.put("http://exslt.org/common:nodeSet", "nodeset");
            hashtable3.put("http://exslt.org/common:objectType", "objectType");
            hashtable3.put("http://xml.apache.org/xalan:nodeset", "nodeset");
        } catch (ClassNotFoundException e) {
            System.err.println(e);
        }
    }

    public FunctionCall(QName qName, Vector vector) {
        this._namespace_format = 0;
        this._thisArgument = null;
        this._isExtConstructor = false;
        this._isStatic = false;
        this._fname = qName;
        this._arguments = vector;
        this._type = null;
    }

    private Vector findConstructors() {
        this._fname.getNamespace();
        int size = this._arguments.size();
        Vector vector = null;
        try {
            if (this._clazz == null) {
                Class findProviderClass = ObjectFactory.findProviderClass(this._className, ObjectFactory.findClassLoader(), true);
                this._clazz = findProviderClass;
                if (findProviderClass == null) {
                    getParser().reportError(3, new ErrorMsg(ErrorMsg.CLASS_NOT_FOUND_ERR, this._className));
                }
            }
            Constructor<?>[] constructors = this._clazz.getConstructors();
            for (int i = 0; i < constructors.length; i++) {
                if (Modifier.isPublic(constructors[i].getModifiers()) && constructors[i].getParameterTypes().length == size) {
                    if (vector == null) {
                        vector = new Vector();
                    }
                    vector.addElement(constructors[i]);
                }
            }
        } catch (ClassNotFoundException unused) {
            getParser().reportError(3, new ErrorMsg(ErrorMsg.CLASS_NOT_FOUND_ERR, this._className));
        }
        return vector;
    }

    private Vector findMethods() {
        this._fname.getNamespace();
        String str = this._className;
        Vector vector = null;
        if (str != null && str.length() > 0) {
            int size = this._arguments.size();
            try {
                if (this._clazz == null) {
                    Class findProviderClass = ObjectFactory.findProviderClass(this._className, ObjectFactory.findClassLoader(), true);
                    this._clazz = findProviderClass;
                    if (findProviderClass == null) {
                        getParser().reportError(3, new ErrorMsg(ErrorMsg.CLASS_NOT_FOUND_ERR, this._className));
                    }
                }
                String localPart = this._fname.getLocalPart();
                Method[] methods = this._clazz.getMethods();
                for (int i = 0; i < methods.length; i++) {
                    if (Modifier.isPublic(methods[i].getModifiers()) && methods[i].getName().equals(localPart) && methods[i].getParameterTypes().length == size) {
                        if (vector == null) {
                            vector = new Vector();
                        }
                        vector.addElement(methods[i]);
                    }
                }
            } catch (ClassNotFoundException unused) {
                getParser().reportError(3, new ErrorMsg(ErrorMsg.CLASS_NOT_FOUND_ERR, this._className));
            }
        }
        return vector;
    }

    private String getMethodSignature(Vector vector) {
        StringBuffer stringBuffer = new StringBuffer(this._className);
        stringBuffer.append('.');
        stringBuffer.append(this._fname.getLocalPart());
        stringBuffer.append('(');
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            stringBuffer.append(((Type) vector.elementAt(i)).toString());
            if (i < size - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public static final String getSignature(Class cls) {
        if (cls.isArray()) {
            StringBuffer stringBuffer = new StringBuffer();
            while (cls.isArray()) {
                stringBuffer.append(IteratorUtils.f104923a);
                cls = cls.getComponentType();
            }
            stringBuffer.append(getSignature(cls));
            return stringBuffer.toString();
        }
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return "I";
            }
            if (cls == Byte.TYPE) {
                return "B";
            }
            if (cls == Long.TYPE) {
                return "J";
            }
            if (cls == Float.TYPE) {
                return "F";
            }
            if (cls == Double.TYPE) {
                return SardineUtil.DEFAULT_NAMESPACE_PREFIX;
            }
            if (cls == Short.TYPE) {
                return "S";
            }
            if (cls == Character.TYPE) {
                return BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY;
            }
            if (cls == Boolean.TYPE) {
                return Constants.HASIDCALL_INDEX_SIG;
            }
            if (cls == Void.TYPE) {
                return "V";
            }
            throw new Error(new ErrorMsg(ErrorMsg.UNKNOWN_SIG_TYPE_ERR, cls.toString()).toString());
        }
        return "L" + cls.getName().replace('.', '/') + ';';
    }

    public static String replaceDash(String str) {
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i = 0; i < str.length(); i++) {
            if (i > 0 && str.charAt(i - 1) == '-') {
                stringBuffer.append(Character.toUpperCase(str.charAt(i)));
            } else if (str.charAt(i) != '-') {
                stringBuffer.append(str.charAt(i));
            }
        }
        return stringBuffer.toString();
    }

    private void translateUnallowedExtension(ConstantPoolGen constantPoolGen, InstructionList instructionList) {
        int addMethodref = constantPoolGen.addMethodref(Constants.BASIS_LIBRARY_CLASS, "unallowed_extension_functionF", "(Ljava/lang/String;)V");
        instructionList.append(new PUSH(constantPoolGen, this._fname.toString()));
        instructionList.append(new INVOKESTATIC(addMethodref));
    }

    public final Expression argument(int i) {
        return (Expression) this._arguments.elementAt(i);
    }

    public final int argumentCount() {
        return this._arguments.size();
    }

    public String getClassNameFromUri(String str) {
        String str2 = (String) _extensionNamespaceTable.get(str);
        if (str2 != null) {
            return str2;
        }
        if (str.startsWith(JAVA_EXT_XSLTC)) {
            return str.length() > 39 ? str.substring(39) : "";
        }
        if (str.startsWith("http://xml.apache.org/xalan/java")) {
            return str.length() > 33 ? str.substring(33) : "";
        }
        if (str.startsWith("http://xml.apache.org/xslt/java")) {
            return str.length() > 32 ? str.substring(32) : "";
        }
        int lastIndexOf = str.lastIndexOf(47);
        return lastIndexOf > 0 ? str.substring(lastIndexOf + 1) : str;
    }

    public String getName() {
        return this._fname.toString();
    }

    public boolean isExtension() {
        String namespace = this._fname.getNamespace();
        return namespace != null && namespace.equals("http://xml.apache.org/xalan/xsltc");
    }

    public boolean isStandard() {
        String namespace = this._fname.getNamespace();
        return namespace == null || namespace.equals("");
    }

    public final void setArgument(int i, Expression expression) {
        this._arguments.setElementAt(expression, i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        Vector vector = this._arguments;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                Expression expression = (Expression) this._arguments.elementAt(i);
                expression.setParser(parser);
                expression.setParent(this);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        return "funcall(" + this._fname + ", " + this._arguments + ')';
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        String str;
        int argumentCount = argumentCount();
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        boolean isSecureProcessing = classGenerator.getParser().getXSLTC().isSecureProcessing();
        if (isStandard() || isExtension()) {
            for (int i = 0; i < argumentCount; i++) {
                Expression argument = argument(i);
                argument.translate(classGenerator, methodGenerator);
                argument.startIterator(classGenerator, methodGenerator);
            }
            String str2 = this._fname.toString().replace('-', NameUtil.USCORE) + "F";
            if (str2.equals("sumF")) {
                instructionList.append(methodGenerator.loadDOM());
                str = Constants.DOM_INTF_SIG;
            } else if (str2.equals("normalize_spaceF") && this._chosenMethodType.toSignature("").equals("()Ljava/lang/String;")) {
                instructionList.append(methodGenerator.loadContextNode());
                instructionList.append(methodGenerator.loadDOM());
                str = "ILcom/sun/org/apache/xalan/internal/xsltc/DOM;";
            } else {
                str = "";
            }
            instructionList.append(new INVOKESTATIC(constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, str2, this._chosenMethodType.toSignature(str))));
            return;
        }
        if (this.unresolvedExternal) {
            int addMethodref = constantPool.addMethodref(Constants.BASIS_LIBRARY_CLASS, "unresolved_externalF", "(Ljava/lang/String;)V");
            instructionList.append(new PUSH(constantPool, this._fname.toString()));
            instructionList.append(new INVOKESTATIC(addMethodref));
            return;
        }
        if (!this._isExtConstructor) {
            if (isSecureProcessing) {
                translateUnallowedExtension(constantPool, instructionList);
            }
            String name = this._chosenMethod.getDeclaringClass().getName();
            Class<?>[] parameterTypes = this._chosenMethod.getParameterTypes();
            Expression expression = this._thisArgument;
            if (expression != null) {
                expression.translate(classGenerator, methodGenerator);
            }
            for (int i2 = 0; i2 < argumentCount; i2++) {
                Expression argument2 = argument(i2);
                argument2.translate(classGenerator, methodGenerator);
                argument2.startIterator(classGenerator, methodGenerator);
                argument2.getType().translateTo(classGenerator, methodGenerator, parameterTypes[i2]);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('(');
            for (Class<?> cls : parameterTypes) {
                stringBuffer.append(getSignature(cls));
            }
            stringBuffer.append(')');
            stringBuffer.append(getSignature(this._chosenMethod.getReturnType()));
            if (this._thisArgument == null || !this._clazz.isInterface()) {
                int addMethodref2 = constantPool.addMethodref(name, this._fname.getLocalPart(), stringBuffer.toString());
                instructionList.append(this._thisArgument != null ? new INVOKEVIRTUAL(addMethodref2) : new INVOKESTATIC(addMethodref2));
            } else {
                instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(name, this._fname.getLocalPart(), stringBuffer.toString()), argumentCount + 1));
            }
            this._type.translateFrom(classGenerator, methodGenerator, this._chosenMethod.getReturnType());
            return;
        }
        if (isSecureProcessing) {
            translateUnallowedExtension(constantPool, instructionList);
        }
        String name2 = this._chosenConstructor.getDeclaringClass().getName();
        Class<?>[] parameterTypes2 = this._chosenConstructor.getParameterTypes();
        LocalVariableGen[] localVariableGenArr = new LocalVariableGen[argumentCount];
        for (int i3 = 0; i3 < argumentCount; i3++) {
            Expression argument3 = argument(i3);
            Type type = argument3.getType();
            argument3.translate(classGenerator, methodGenerator);
            argument3.startIterator(classGenerator, methodGenerator);
            type.translateTo(classGenerator, methodGenerator, parameterTypes2[i3]);
            LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("function_call_tmp" + i3, type.toJCType(), instructionList.getEnd(), null);
            localVariableGenArr[i3] = addLocalVariable;
            instructionList.append(type.STORE(addLocalVariable.getIndex()));
        }
        instructionList.append(new NEW(constantPool.addClass(this._className)));
        instructionList.append(InstructionConstants.DUP);
        for (int i4 = 0; i4 < argumentCount; i4++) {
            instructionList.append(argument(i4).getType().LOAD(localVariableGenArr[i4].getIndex()));
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append('(');
        for (Class<?> cls2 : parameterTypes2) {
            stringBuffer2.append(getSignature(cls2));
        }
        stringBuffer2.append(')');
        stringBuffer2.append("V");
        instructionList.append(new INVOKESPECIAL(constantPool.addMethodref(name2, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, stringBuffer2.toString())));
        Type.Object.translateFrom(classGenerator, methodGenerator, this._chosenConstructor.getDeclaringClass());
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public void translateDesynthesized(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Type type = Type.Boolean;
        MethodType methodType = this._chosenMethodType;
        if (methodType != null) {
            type = methodType.resultType();
        }
        InstructionList instructionList = methodGenerator.getInstructionList();
        translate(classGenerator, methodGenerator);
        if ((type instanceof BooleanType) || (type instanceof IntType)) {
            this._falseList.add(instructionList.append((BranchInstruction) new IFEQ(null)));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Type type = this._type;
        if (type != null) {
            return type;
        }
        String namespace = this._fname.getNamespace();
        String localPart = this._fname.getLocalPart();
        if (isExtension()) {
            this._fname = new QName(null, null, localPart);
            return typeCheckStandard(symbolTable);
        }
        if (isStandard()) {
            return typeCheckStandard(symbolTable);
        }
        try {
            this._className = getClassNameFromUri(namespace);
            int lastIndexOf = localPart.lastIndexOf(46);
            if (lastIndexOf > 0) {
                this._isStatic = true;
                String str = this._className;
                if (str == null || str.length() <= 0) {
                    this._namespace_format = 0;
                    this._className = localPart.substring(0, lastIndexOf);
                } else {
                    this._namespace_format = 2;
                    this._className += "." + localPart.substring(0, lastIndexOf);
                }
                this._fname = new QName(namespace, null, localPart.substring(lastIndexOf + 1));
            } else {
                String str2 = this._className;
                if (str2 == null || str2.length() <= 0) {
                    this._namespace_format = 0;
                } else {
                    try {
                        this._clazz = ObjectFactory.findProviderClass(this._className, ObjectFactory.findClassLoader(), true);
                        this._namespace_format = 1;
                    } catch (ClassNotFoundException unused) {
                        this._namespace_format = 2;
                    }
                }
                if (localPart.indexOf(45) > 0) {
                    localPart = replaceDash(localPart);
                }
                String str3 = (String) _extensionFunctionTable.get(namespace + ":" + localPart);
                if (str3 != null) {
                    this._fname = new QName(null, null, str3);
                    return typeCheckStandard(symbolTable);
                }
                this._fname = new QName(namespace, null, localPart);
            }
            return typeCheckExternal(symbolTable);
        } catch (TypeCheckError e) {
            ErrorMsg errorMsg = e.getErrorMsg();
            if (errorMsg == null) {
                errorMsg = new ErrorMsg(ErrorMsg.METHOD_NOT_FOUND_ERR, this._fname.getLocalPart());
            }
            getParser().reportError(3, errorMsg);
            Type type2 = Type.Void;
            this._type = type2;
            return type2;
        }
    }

    public Vector typeCheckArgs(SymbolTable symbolTable) throws TypeCheckError {
        Vector vector = new Vector();
        Enumeration elements = this._arguments.elements();
        while (elements.hasMoreElements()) {
            vector.addElement(((Expression) elements.nextElement()).typeCheck(symbolTable));
        }
        return vector;
    }

    public Type typeCheckConstructor(SymbolTable symbolTable) throws TypeCheckError {
        Vector findConstructors = findConstructors();
        if (findConstructors == null) {
            throw new TypeCheckError(ErrorMsg.CONSTRUCTOR_NOT_FOUND, this._className);
        }
        int size = findConstructors.size();
        int size2 = this._arguments.size();
        Vector typeCheckArgs = typeCheckArgs(symbolTable);
        this._type = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            Constructor constructor = (Constructor) findConstructors.elementAt(i2);
            Class[] parameterTypes = constructor.getParameterTypes();
            int i3 = 0;
            int i4 = 0;
            while (i3 < size2) {
                Class cls = parameterTypes[i3];
                Type type = (Type) typeCheckArgs.elementAt(i3);
                Object maps = _internal2Java.maps(type, cls);
                if (maps == null) {
                    if (type instanceof ObjectType) {
                        ObjectType objectType = (ObjectType) type;
                        if (objectType.getJavaClass() == cls) {
                            continue;
                        } else if (cls.isAssignableFrom(objectType.getJavaClass())) {
                            i4++;
                        }
                    }
                    i4 = Integer.MAX_VALUE;
                    break;
                }
                i4 += ((JavaType) maps).distance;
                i3++;
            }
            if (i3 == size2 && i4 < i) {
                this._chosenConstructor = constructor;
                this._isExtConstructor = true;
                Class cls2 = this._clazz;
                this._type = cls2 != null ? Type.newObjectType(cls2) : Type.newObjectType(this._className);
                i = i4;
            }
        }
        Type type2 = this._type;
        if (type2 != null) {
            return type2;
        }
        throw new TypeCheckError(ErrorMsg.ARGUMENT_CONVERSION_ERR, getMethodSignature(typeCheckArgs));
    }

    public Type typeCheckExternal(SymbolTable symbolTable) throws TypeCheckError {
        Class cls;
        int size = this._arguments.size();
        String localPart = this._fname.getLocalPart();
        if (this._fname.getLocalPart().equals("new")) {
            return typeCheckConstructor(symbolTable);
        }
        if (size == 0) {
            this._isStatic = true;
        }
        int i = 0;
        if (!this._isStatic) {
            int i2 = this._namespace_format;
            boolean z = i2 == 0 || i2 == 2;
            Type typeCheck = ((Expression) this._arguments.elementAt(0)).typeCheck(symbolTable);
            if (this._namespace_format == 1 && (typeCheck instanceof ObjectType) && (cls = this._clazz) != null && cls.isAssignableFrom(((ObjectType) typeCheck).getJavaClass())) {
                z = true;
            }
            if (z) {
                this._thisArgument = (Expression) this._arguments.elementAt(0);
                this._arguments.remove(0);
                size--;
                if (!(typeCheck instanceof ObjectType)) {
                    throw new TypeCheckError(ErrorMsg.NO_JAVA_FUNCT_THIS_REF, localPart);
                }
                this._className = ((ObjectType) typeCheck).getJavaClassName();
            }
        } else if (this._className.length() == 0) {
            Parser parser = getParser();
            if (parser != null) {
                reportWarning(this, parser, ErrorMsg.FUNCTION_RESOLVE_ERR, this._fname.toString());
            }
            this.unresolvedExternal = true;
            Type type = Type.Int;
            this._type = type;
            return type;
        }
        Vector findMethods = findMethods();
        if (findMethods == null) {
            throw new TypeCheckError(ErrorMsg.METHOD_NOT_FOUND_ERR, this._className + "." + localPart);
        }
        int size2 = findMethods.size();
        Vector typeCheckArgs = typeCheckArgs(symbolTable);
        this._type = null;
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (i3 < size2) {
            Method method = (Method) findMethods.elementAt(i3);
            Class<?>[] parameterTypes = method.getParameterTypes();
            int i5 = i;
            int i6 = i5;
            while (i5 < size) {
                Class<?> cls2 = parameterTypes[i5];
                Type type2 = (Type) typeCheckArgs.elementAt(i5);
                Object maps = _internal2Java.maps(type2, cls2);
                if (maps != null) {
                    i6 += ((JavaType) maps).distance;
                } else {
                    if (!(type2 instanceof ReferenceType)) {
                        if (type2 instanceof ObjectType) {
                            ObjectType objectType = (ObjectType) type2;
                            if (cls2.getName().equals(objectType.getJavaClassName())) {
                                i6 += 0;
                            } else if (!cls2.isAssignableFrom(objectType.getJavaClass())) {
                            }
                        }
                        i6 = Integer.MAX_VALUE;
                        break;
                    }
                    i6++;
                }
                i5++;
            }
            if (i5 == size) {
                Class<?> returnType = method.getReturnType();
                Type type3 = (Type) _java2Internal.get(returnType);
                this._type = type3;
                if (type3 == null) {
                    this._type = Type.newObjectType(returnType);
                }
                if (this._type != null && i6 < i4) {
                    this._chosenMethod = method;
                    i4 = i6;
                }
            }
            i3++;
            i = 0;
        }
        Method method2 = this._chosenMethod;
        if (method2 != null && this._thisArgument == null && !Modifier.isStatic(method2.getModifiers())) {
            throw new TypeCheckError(ErrorMsg.NO_JAVA_FUNCT_THIS_REF, getMethodSignature(typeCheckArgs));
        }
        Type type4 = this._type;
        if (type4 == null) {
            throw new TypeCheckError(ErrorMsg.ARGUMENT_CONVERSION_ERR, getMethodSignature(typeCheckArgs));
        }
        if (type4 == Type.NodeSet) {
            getXSLTC().setMultiDocument(true);
        }
        return this._type;
    }

    public Type typeCheckStandard(SymbolTable symbolTable) throws TypeCheckError {
        this._fname.clearNamespace();
        int size = this._arguments.size();
        MethodType lookupPrimop = lookupPrimop(symbolTable, this._fname.getLocalPart(), new MethodType(Type.Void, typeCheckArgs(symbolTable)));
        if (lookupPrimop == null) {
            throw new TypeCheckError(this);
        }
        for (int i = 0; i < size; i++) {
            Type type = (Type) lookupPrimop.argsType().elementAt(i);
            Expression expression = (Expression) this._arguments.elementAt(i);
            if (!type.identicalTo(expression.getType())) {
                try {
                    this._arguments.setElementAt(new CastExpr(expression, type), i);
                } catch (TypeCheckError unused) {
                    throw new TypeCheckError(this);
                }
            }
        }
        this._chosenMethodType = lookupPrimop;
        Type resultType = lookupPrimop.resultType();
        this._type = resultType;
        return resultType;
    }

    public final Expression argument() {
        return argument(0);
    }

    public FunctionCall(QName qName) {
        this(qName, EMPTY_ARG_LIST);
    }

    public static final String getSignature(Method method) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class<?> cls : method.getParameterTypes()) {
            stringBuffer.append(getSignature(cls));
        }
        stringBuffer.append(')');
        stringBuffer.append(getSignature(method.getReturnType()));
        return stringBuffer.toString();
    }

    public static final String getSignature(Constructor constructor) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class<?> cls : constructor.getParameterTypes()) {
            stringBuffer.append(getSignature(cls));
        }
        stringBuffer.append(")V");
        return stringBuffer.toString();
    }
}
