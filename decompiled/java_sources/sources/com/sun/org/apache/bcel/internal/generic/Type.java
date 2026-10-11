package com.sun.org.apache.bcel.internal.generic;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.classfile.ClassFormatException;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes10.dex */
public abstract class Type implements Serializable {
    protected String signature;
    protected byte type;
    public static final BasicType VOID = new BasicType((byte) 12);
    public static final BasicType BOOLEAN = new BasicType((byte) 4);
    public static final BasicType INT = new BasicType((byte) 10);
    public static final BasicType SHORT = new BasicType((byte) 9);
    public static final BasicType BYTE = new BasicType((byte) 8);
    public static final BasicType LONG = new BasicType((byte) 11);
    public static final BasicType DOUBLE = new BasicType((byte) 7);
    public static final BasicType FLOAT = new BasicType((byte) 6);
    public static final BasicType CHAR = new BasicType((byte) 5);
    public static final ObjectType OBJECT = new ObjectType(Constants.OBJECT_CLASS);
    public static final ObjectType STRING = new ObjectType("java.lang.String");
    public static final ObjectType STRINGBUFFER = new ObjectType(Constants.STRING_BUFFER_CLASS);
    public static final ObjectType THROWABLE = new ObjectType("java.lang.Throwable");
    public static final Type[] NO_ARGS = new Type[0];
    public static final ReferenceType NULL = new ReferenceType() { // from class: com.sun.org.apache.bcel.internal.generic.Type.1
    };
    public static final Type UNKNOWN = new Type(15, "<unknown object>") { // from class: com.sun.org.apache.bcel.internal.generic.Type.2
    };
    private static int consumed_chars = 0;

    public Type(byte b, String str) {
        this.type = b;
        this.signature = str;
    }

    public static Type[] getArgumentTypes(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.charAt(0) != '(') {
                throw new ClassFormatException("Invalid method signature: " + str);
            }
            for (int i = 1; str.charAt(i) != ')'; i += consumed_chars) {
                arrayList.add(getType(str.substring(i)));
            }
            Type[] typeArr = new Type[arrayList.size()];
            arrayList.toArray(typeArr);
            return typeArr;
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
    }

    public static String getMethodSignature(Type type, Type[] typeArr) {
        StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
        int length = typeArr == null ? 0 : typeArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(typeArr[i].getSignature());
        }
        stringBuffer.append(')');
        stringBuffer.append(type.getSignature());
        return stringBuffer.toString();
    }

    public static Type getReturnType(String str) {
        try {
            return getType(str.substring(str.lastIndexOf(41) + 1));
        } catch (StringIndexOutOfBoundsException unused) {
            throw new ClassFormatException("Invalid method signature: " + str);
        }
    }

    public String getSignature() {
        return this.signature;
    }

    public int getSize() {
        byte b = this.type;
        if (b == 7 || b == 11) {
            return 2;
        }
        return b != 12 ? 1 : 0;
    }

    public byte getType() {
        return this.type;
    }

    public String toString() {
        return (equals(NULL) || this.type >= 15) ? this.signature : Utility.signatureToString(this.signature, false);
    }

    public static String getSignature(Method method) {
        StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
        for (Class<?> cls : method.getParameterTypes()) {
            stringBuffer.append(getType(cls).getSignature());
        }
        stringBuffer.append(MotionUtils.f31762d);
        stringBuffer.append(getType(method.getReturnType()).getSignature());
        return stringBuffer.toString();
    }

    public static final Type getType(String str) throws StringIndexOutOfBoundsException {
        byte typeOfSignature = Utility.typeOfSignature(str);
        if (typeOfSignature <= 12) {
            consumed_chars = 1;
            return BasicType.getType(typeOfSignature);
        }
        if (typeOfSignature == 13) {
            int i = 0;
            do {
                i++;
            } while (str.charAt(i) == '[');
            Type type = getType(str.substring(i));
            consumed_chars += i;
            return new ArrayType(type, i);
        }
        int indexOf = str.indexOf(59);
        if (indexOf >= 0) {
            consumed_chars = indexOf + 1;
            return new ObjectType(str.substring(1, indexOf).replace('/', '.'));
        }
        throw new ClassFormatException("Invalid signature: " + str);
    }

    public static Type getType(Class cls) {
        if (cls != null) {
            if (cls.isArray()) {
                return getType(cls.getName());
            }
            if (cls.isPrimitive()) {
                if (cls == Integer.TYPE) {
                    return INT;
                }
                if (cls == Void.TYPE) {
                    return VOID;
                }
                if (cls == Double.TYPE) {
                    return DOUBLE;
                }
                if (cls == Float.TYPE) {
                    return FLOAT;
                }
                if (cls == Boolean.TYPE) {
                    return BOOLEAN;
                }
                Class cls2 = Byte.TYPE;
                if (cls == cls2) {
                    return BYTE;
                }
                if (cls == Short.TYPE) {
                    return SHORT;
                }
                if (cls == cls2) {
                    return BYTE;
                }
                if (cls == Long.TYPE) {
                    return LONG;
                }
                if (cls == Character.TYPE) {
                    return CHAR;
                }
                throw new IllegalStateException("Ooops, what primitive type is " + cls);
            }
            return new ObjectType(cls.getName());
        }
        throw new IllegalArgumentException("Class must not be null");
    }
}
