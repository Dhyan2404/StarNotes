package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xalan.internal.templates.ElemExtensionCall;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeIterator;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XRTreeFrag;
import com.sun.org.apache.xpath.internal.objects.XString;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public class MethodResolver {
    public static final int DYNAMIC = 4;
    public static final int INSTANCE_ONLY = 2;
    private static final int SCOREBASE = 1;
    public static final int STATIC_AND_INSTANCE = 3;
    public static final int STATIC_ONLY = 1;
    private static final ConversionInfo[] m_booleanConversions;
    private static final ConversionInfo[][] m_conversions;
    private static final ConversionInfo[] m_javaObjConversions;
    private static final ConversionInfo[] m_nodesetConversions;
    private static final ConversionInfo[] m_numberConversions;
    private static final ConversionInfo[] m_rtfConversions;
    private static final ConversionInfo[] m_stringConversions;

    /* loaded from: classes10.dex */
    public static class ConversionInfo {
        Class m_class;
        int m_score;

        public ConversionInfo(Class cls, int i) {
            this.m_class = cls;
            this.m_score = i;
        }
    }

    static {
        Class cls = Float.TYPE;
        Class cls2 = Long.TYPE;
        Class cls3 = Integer.TYPE;
        ConversionInfo[] conversionInfoArr = {new ConversionInfo(Double.TYPE, 11), new ConversionInfo(cls, 12), new ConversionInfo(cls2, 13), new ConversionInfo(cls3, 14), new ConversionInfo(Short.TYPE, 15), new ConversionInfo(Character.TYPE, 16), new ConversionInfo(Byte.TYPE, 17), new ConversionInfo(String.class, 18)};
        m_javaObjConversions = conversionInfoArr;
        Class cls4 = Boolean.TYPE;
        ConversionInfo[] conversionInfoArr2 = {new ConversionInfo(cls4, 0), new ConversionInfo(Boolean.class, 1), new ConversionInfo(Object.class, 2), new ConversionInfo(String.class, 3)};
        m_booleanConversions = conversionInfoArr2;
        ConversionInfo[] conversionInfoArr3 = {new ConversionInfo(Double.TYPE, 0), new ConversionInfo(Double.class, 1), new ConversionInfo(cls, 3), new ConversionInfo(cls2, 4), new ConversionInfo(cls3, 5), new ConversionInfo(Short.TYPE, 6), new ConversionInfo(Character.TYPE, 7), new ConversionInfo(Byte.TYPE, 8), new ConversionInfo(cls4, 9), new ConversionInfo(String.class, 10), new ConversionInfo(Object.class, 11)};
        m_numberConversions = conversionInfoArr3;
        ConversionInfo[] conversionInfoArr4 = {new ConversionInfo(String.class, 0), new ConversionInfo(Object.class, 1), new ConversionInfo(Character.TYPE, 2), new ConversionInfo(Double.TYPE, 3), new ConversionInfo(cls, 3), new ConversionInfo(cls2, 3), new ConversionInfo(cls3, 3), new ConversionInfo(Short.TYPE, 3), new ConversionInfo(Byte.TYPE, 3), new ConversionInfo(cls4, 4)};
        m_stringConversions = conversionInfoArr4;
        ConversionInfo[] conversionInfoArr5 = {new ConversionInfo(NodeIterator.class, 0), new ConversionInfo(NodeList.class, 1), new ConversionInfo(Node.class, 2), new ConversionInfo(String.class, 3), new ConversionInfo(Object.class, 5), new ConversionInfo(Character.TYPE, 6), new ConversionInfo(Double.TYPE, 7), new ConversionInfo(cls, 7), new ConversionInfo(cls2, 7), new ConversionInfo(cls3, 7), new ConversionInfo(Short.TYPE, 7), new ConversionInfo(Byte.TYPE, 7), new ConversionInfo(cls4, 8)};
        m_rtfConversions = conversionInfoArr5;
        ConversionInfo[] conversionInfoArr6 = {new ConversionInfo(NodeIterator.class, 0), new ConversionInfo(NodeList.class, 1), new ConversionInfo(Node.class, 2), new ConversionInfo(String.class, 3), new ConversionInfo(Object.class, 5), new ConversionInfo(Character.TYPE, 6), new ConversionInfo(Double.TYPE, 7), new ConversionInfo(cls, 7), new ConversionInfo(cls2, 7), new ConversionInfo(cls3, 7), new ConversionInfo(Short.TYPE, 7), new ConversionInfo(Byte.TYPE, 7), new ConversionInfo(cls4, 8)};
        m_nodesetConversions = conversionInfoArr6;
        m_conversions = new ConversionInfo[][]{conversionInfoArr, conversionInfoArr2, conversionInfoArr3, conversionInfoArr4, conversionInfoArr6, conversionInfoArr5};
    }

    public static Object convert(Object obj, Class cls) throws TransformerException {
        if (obj instanceof XObject) {
            XObject xObject = (XObject) obj;
            int type = xObject.getType();
            if (type == -1) {
                return null;
            }
            if (type == 1) {
                return cls == String.class ? xObject.str() : new Boolean(xObject.bool());
            }
            if (type == 2) {
                return cls == String.class ? xObject.str() : cls == Boolean.TYPE ? new Boolean(xObject.bool()) : convertDoubleToNumber(xObject.num(), cls);
            }
            if (type == 3) {
                if (cls == String.class || cls == Object.class) {
                    return xObject.str();
                }
                if (cls != Character.TYPE) {
                    return cls == Boolean.TYPE ? new Boolean(xObject.bool()) : convertDoubleToNumber(xObject.num(), cls);
                }
                String str = xObject.str();
                if (str.length() > 0) {
                    return new Character(str.charAt(0));
                }
                return null;
            }
            if (type == 4) {
                if (cls == NodeIterator.class || cls == Object.class) {
                    return xObject.nodeset();
                }
                if (cls == NodeList.class) {
                    return xObject.nodelist();
                }
                if (cls == Node.class) {
                    DTMIterator iter = xObject.iter();
                    int nextNode = iter.nextNode();
                    if (nextNode != -1) {
                        return iter.getDTM(nextNode).getNode(nextNode);
                    }
                    return null;
                }
                if (cls == String.class) {
                    return xObject.str();
                }
                if (cls == Boolean.TYPE) {
                    return new Boolean(xObject.bool());
                }
                if (cls.isPrimitive()) {
                    return convertDoubleToNumber(xObject.num(), cls);
                }
                DTMIterator iter2 = xObject.iter();
                int nextNode2 = iter2.nextNode();
                Node node = iter2.getDTM(nextNode2).getNode(nextNode2);
                if (cls.isAssignableFrom(node.getClass())) {
                    return node;
                }
                return null;
            }
            if (type == 5) {
                if (cls == NodeIterator.class || cls == Object.class) {
                    return new DTMNodeIterator(((XRTreeFrag) xObject).asNodeIterator());
                }
                if (cls == NodeList.class) {
                    return ((XRTreeFrag) xObject).convertToNodeset();
                }
                if (cls == Node.class) {
                    DTMIterator asNodeIterator = ((XRTreeFrag) xObject).asNodeIterator();
                    int nextNode3 = asNodeIterator.nextNode();
                    DTM dtm = asNodeIterator.getDTM(nextNode3);
                    return dtm.getNode(dtm.getFirstChild(nextNode3));
                }
                if (cls == String.class) {
                    return xObject.str();
                }
                if (cls == Boolean.TYPE) {
                    return new Boolean(xObject.bool());
                }
                if (cls.isPrimitive()) {
                    return convertDoubleToNumber(xObject.num(), cls);
                }
                DTMIterator asNodeIterator2 = ((XRTreeFrag) xObject).asNodeIterator();
                int nextNode4 = asNodeIterator2.nextNode();
                DTM dtm2 = asNodeIterator2.getDTM(nextNode4);
                Node node2 = dtm2.getNode(dtm2.getFirstChild(nextNode4));
                if (cls.isAssignableFrom(node2.getClass())) {
                    return node2;
                }
                return null;
            }
            obj = xObject.object();
        }
        return obj != null ? cls == String.class ? obj.toString() : cls.isPrimitive() ? convertDoubleToNumber(new XString(obj.toString()).num(), cls) : cls == Class.class ? obj.getClass() : obj : obj;
    }

    public static Object convertDoubleToNumber(double d, Class cls) {
        return (cls == Double.TYPE || cls == Double.class) ? new Double(d) : cls == Float.TYPE ? new Float(d) : cls == Long.TYPE ? new Long((long) d) : cls == Integer.TYPE ? new Integer((int) d) : cls == Short.TYPE ? new Short((short) d) : cls == Character.TYPE ? new Character((char) d) : cls == Byte.TYPE ? new Byte((byte) d) : new Double(d);
    }

    public static void convertParams(Object[] objArr, Object[][] objArr2, Class[] clsArr, ExpressionContext expressionContext) throws TransformerException {
        int i;
        if (clsArr == null) {
            objArr2[0] = null;
            return;
        }
        int length = clsArr.length;
        objArr2[0] = new Object[length];
        if (length <= 0 || !ExpressionContext.class.isAssignableFrom(clsArr[0])) {
            i = 0;
        } else {
            objArr2[0][0] = expressionContext;
            i = 1;
        }
        if (objArr != null) {
            int length2 = (objArr.length - length) + i;
            while (i < length) {
                objArr2[0][i] = convert(objArr[length2], clsArr[i]);
                length2++;
                i++;
            }
        }
    }

    private static String errArgs(Object[] objArr, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = i; i2 < objArr.length; i2++) {
            if (i2 != i) {
                stringBuffer.append(", ");
            }
            Object obj = objArr[i2];
            if (obj instanceof XObject) {
                stringBuffer.append(((XObject) obj).getTypeString());
            } else {
                stringBuffer.append(obj.getClass().getName());
            }
        }
        return stringBuffer.toString();
    }

    private static String errString(String str, String str2, Class cls, String str3, int i, Object[] objArr) {
        String str4 = "For extension " + str + ", could not find " + str2 + " ";
        if (i == 1) {
            return str4 + "static " + cls.getName() + "." + str3 + "([ExpressionContext,] " + errArgs(objArr, 0) + ").";
        }
        if (i == 2) {
            return str4 + cls.getName() + "." + str3 + "([ExpressionContext,] " + errArgs(objArr, 0) + ").";
        }
        if (i == 3) {
            return str4 + cls.getName() + "." + str3 + "([ExpressionContext,] " + errArgs(objArr, 0) + ").\nChecked both static and instance methods.";
        }
        if (i != 4) {
            if (str.equals(Constants.EXSLT_ELEMNAME_FUNCTION_STRING)) {
                return str4 + cls.getName() + "([ExpressionContext,] " + errArgs(objArr, 0) + ").";
            }
            return str4 + cls.getName() + "." + str3 + "(com.sun.org.apache.xalan.internal.extensions.XSLProcessorContext, com.sun.org.apache.xalan.internal.templates.ElemExtensionCall).";
        }
        return str4 + "static " + cls.getName() + "." + str3 + "([ExpressionContext, ]" + errArgs(objArr, 0) + ") nor\n" + cls + "." + str3 + "([ExpressionContext,] " + errArgs(objArr, 1) + ").";
    }

    public static Constructor getConstructor(Class cls, Object[] objArr, Object[][] objArr2, ExpressionContext expressionContext) throws NoSuchMethodException, SecurityException, TransformerException {
        int i;
        int scoreMatch;
        Constructor<?> constructor = null;
        int i2 = Integer.MAX_VALUE;
        Class<?>[] clsArr = null;
        for (Constructor<?> constructor2 : cls.getConstructors()) {
            Class<?>[] parameterTypes = constructor2.getParameterTypes();
            int length = parameterTypes.length;
            int i3 = 1;
            if (length != objArr.length + 1) {
                i = 1000;
                i3 = 0;
            } else if (ExpressionContext.class.isAssignableFrom(parameterTypes[0])) {
                i = 0;
            }
            if (objArr.length == length - i3 && -1 != (scoreMatch = scoreMatch(parameterTypes, i3, objArr, i)) && scoreMatch < i2) {
                constructor = constructor2;
                clsArr = parameterTypes;
                i2 = scoreMatch;
            }
        }
        if (constructor == null) {
            throw new NoSuchMethodException(errString(Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "constructor", cls, "", 0, objArr));
        }
        convertParams(objArr, objArr2, clsArr, expressionContext);
        return constructor;
    }

    public static Method getElementMethod(Class cls, String str) throws NoSuchMethodException, SecurityException, TransformerException {
        Method method = null;
        int i = 0;
        for (Method method2 : cls.getMethods()) {
            if (method2.getName().equals(str)) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                if (parameterTypes.length == 2 && parameterTypes[1].isAssignableFrom(ElemExtensionCall.class) && parameterTypes[0].isAssignableFrom(XSLProcessorContext.class)) {
                    i++;
                    if (i != 1) {
                        break;
                    }
                    method = method2;
                }
            }
        }
        if (method == null) {
            throw new NoSuchMethodException(errString("element", "method", cls, str, 0, null));
        }
        if (i <= 1) {
            return method;
        }
        throw new TransformerException(XSLMessages.createMessage("ER_MORE_MATCH_ELEMENT", new Object[]{str}));
    }

    public static Method getMethod(Class cls, String str, Object[] objArr, Object[][] objArr2, ExpressionContext expressionContext, int i) throws NoSuchMethodException, SecurityException, TransformerException {
        int i2;
        int i3;
        int scoreMatch;
        String replaceDash = str.indexOf("-") > 0 ? replaceDash(str) : str;
        Method[] methods = cls.getMethods();
        int length = methods.length;
        Method method = null;
        int i4 = 0;
        int i5 = 0;
        int i6 = Integer.MAX_VALUE;
        Class<?>[] clsArr = null;
        while (i5 < length) {
            Method method2 = methods[i5];
            if (method2.getName().equals(replaceDash)) {
                boolean isStatic = Modifier.isStatic(method2.getModifiers());
                int i7 = 1;
                if (i != 1) {
                    if (i != 2) {
                        if (i == 4 && !isStatic) {
                            i2 = 1;
                        }
                    } else if (isStatic) {
                    }
                    i2 = i4;
                } else {
                    if (!isStatic) {
                    }
                    i2 = i4;
                }
                Class<?>[] parameterTypes = method2.getParameterTypes();
                int length2 = parameterTypes.length;
                int length3 = (objArr != null ? objArr.length : i4) - i2;
                if (length2 != length3 + 1) {
                    i3 = 1000;
                    i7 = 0;
                } else if (ExpressionContext.class.isAssignableFrom(parameterTypes[i4])) {
                    i3 = 0;
                }
                if (length3 == length2 - i7 && -1 != (scoreMatch = scoreMatch(parameterTypes, i7, objArr, i3)) && scoreMatch < i6) {
                    i6 = scoreMatch;
                    method = method2;
                    clsArr = parameterTypes;
                }
            }
            i5++;
            i4 = 0;
        }
        if (method == null) {
            throw new NoSuchMethodException(errString(Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "method", cls, replaceDash, i, objArr));
        }
        convertParams(objArr, objArr2, clsArr, expressionContext);
        return method;
    }

    private static String replaceDash(String str) {
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != '-') {
                if (i <= 0 || str.charAt(i - 1) != '-') {
                    stringBuffer.append(str.charAt(i));
                } else {
                    stringBuffer.append(Character.toUpperCase(str.charAt(i)));
                }
            }
        }
        return stringBuffer.toString();
    }

    public static int scoreMatch(Class[] clsArr, int i, Object[] objArr, int i2) {
        Class<?> cls;
        if (objArr != null && clsArr != null) {
            int length = objArr.length;
            int length2 = (length - clsArr.length) + i;
            while (length2 < length) {
                Object obj = objArr[length2];
                boolean z = obj instanceof XObject;
                int i3 = 0;
                int type = z ? ((XObject) obj).getType() : 0;
                Class cls2 = clsArr[i];
                if (type != -1) {
                    ConversionInfo[] conversionInfoArr = m_conversions[type];
                    int length3 = conversionInfoArr.length;
                    while (true) {
                        if (i3 >= length3) {
                            break;
                        }
                        ConversionInfo conversionInfo = conversionInfoArr[i3];
                        if (cls2.isAssignableFrom(conversionInfo.m_class)) {
                            i2 += conversionInfo.m_score;
                            break;
                        }
                        i3++;
                    }
                    if (i3 == length3) {
                        if (type == 0) {
                            if (z) {
                                Object object = ((XObject) obj).object();
                                if (object != null) {
                                    cls = object.getClass();
                                }
                            } else {
                                cls = obj.getClass();
                            }
                            if (cls2.isAssignableFrom(cls)) {
                                i2 += 0;
                            }
                        }
                        return -1;
                    }
                    continue;
                    length2++;
                    i++;
                } else if (cls2.isPrimitive()) {
                    return -1;
                }
                i2 += 10;
                length2++;
                i++;
            }
        }
        return i2;
    }
}
