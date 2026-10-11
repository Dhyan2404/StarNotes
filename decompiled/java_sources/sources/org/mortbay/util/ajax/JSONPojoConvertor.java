package org.mortbay.util.ajax;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mortbay.log.Log;
import org.mortbay.util.ajax.JSON;

/* loaded from: classes13.dex */
public class JSONPojoConvertor implements JSON.Convertor {
    public static final NumberType DOUBLE;
    public static final NumberType FLOAT;
    public static final NumberType INTEGER;
    public static final NumberType LONG;
    public static final NumberType SHORT;

    /* renamed from: a */
    public static final Map f115419a;

    /* renamed from: b */
    public static /* synthetic */ Class f115420b;

    /* renamed from: c */
    public static /* synthetic */ Class f115421c;

    /* renamed from: d */
    public static /* synthetic */ Class f115422d;

    /* renamed from: e */
    public static /* synthetic */ Class f115423e;

    /* renamed from: f */
    public static /* synthetic */ Class f115424f;

    /* renamed from: g */
    public static /* synthetic */ Class f115425g;
    protected Set _excluded;
    protected boolean _fromJSON;
    protected Map _getters;
    protected Class _pojoClass;
    protected Map _setters;
    public static final Object[] GETTER_ARG = new Object[0];
    public static final Object[] NULL_ARG = {null};

    /* loaded from: classes13.dex */
    public interface NumberType {
        Object getActualValue(Number number);
    }

    /* loaded from: classes13.dex */
    public static class Setter {
        protected Class _componentType;
        protected Method _method;
        protected NumberType _numberType;
        protected String _propertyName;
        protected Class _type;

        public Setter(String str, Method method) {
            this._propertyName = str;
            this._method = method;
            this._type = method.getParameterTypes()[0];
            NumberType numberType = (NumberType) JSONPojoConvertor.f115419a.get(this._type);
            this._numberType = numberType;
            if (numberType == null && this._type.isArray()) {
                this._componentType = this._type.getComponentType();
                this._numberType = (NumberType) JSONPojoConvertor.f115419a.get(this._componentType);
            }
        }

        public Class getComponentType() {
            return this._componentType;
        }

        public Method getMethod() {
            return this._method;
        }

        public NumberType getNumberType() {
            return this._numberType;
        }

        public String getPropertyName() {
            return this._propertyName;
        }

        public Class getType() {
            return this._type;
        }

        public void invoke(Object obj, Object obj2) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
            if (obj2 == null) {
                this._method.invoke(obj, JSONPojoConvertor.NULL_ARG);
            } else {
                invokeObject(obj, obj2);
            }
        }

        public void invokeObject(Object obj, Object obj2) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
            NumberType numberType = this._numberType;
            if (numberType != null && (obj2 instanceof Number)) {
                this._method.invoke(obj, numberType.getActualValue((Number) obj2));
                return;
            }
            if (this._componentType == null || !obj2.getClass().isArray()) {
                this._method.invoke(obj, obj2);
                return;
            }
            if (this._numberType == null) {
                int length = Array.getLength(obj2);
                Object newInstance = Array.newInstance((Class<?>) this._componentType, length);
                try {
                    System.arraycopy(obj2, 0, newInstance, 0, length);
                    this._method.invoke(obj, newInstance);
                    return;
                } catch (Exception e) {
                    Log.ignore(e);
                    this._method.invoke(obj, obj2);
                    return;
                }
            }
            Object[] objArr = (Object[]) obj2;
            Object newInstance2 = Array.newInstance((Class<?>) this._componentType, objArr.length);
            for (int i = 0; i < objArr.length; i++) {
                try {
                    Array.set(newInstance2, i, this._numberType.getActualValue((Number) objArr[i]));
                } catch (Exception e2) {
                    Log.ignore(e2);
                    this._method.invoke(obj, obj2);
                    return;
                }
            }
            this._method.invoke(obj, newInstance2);
        }

        public boolean isPropertyNumber() {
            return this._numberType != null;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f115419a = hashMap;
        C20438d c20438d = new C20438d();
        SHORT = c20438d;
        C20439e c20439e = new C20439e();
        INTEGER = c20439e;
        C20440f c20440f = new C20440f();
        FLOAT = c20440f;
        C20441g c20441g = new C20441g();
        LONG = c20441g;
        C20442h c20442h = new C20442h();
        DOUBLE = c20442h;
        Class cls = f115421c;
        if (cls == null) {
            cls = class$("java.lang.Short");
            f115421c = cls;
        }
        hashMap.put(cls, c20438d);
        hashMap.put(Short.TYPE, c20438d);
        Class cls2 = f115422d;
        if (cls2 == null) {
            cls2 = class$(Constants.INTEGER_CLASS);
            f115422d = cls2;
        }
        hashMap.put(cls2, c20439e);
        hashMap.put(Integer.TYPE, c20439e);
        Class cls3 = f115423e;
        if (cls3 == null) {
            cls3 = class$("java.lang.Long");
            f115423e = cls3;
        }
        hashMap.put(cls3, c20441g);
        hashMap.put(Long.TYPE, c20441g);
        Class cls4 = f115424f;
        if (cls4 == null) {
            cls4 = class$("java.lang.Float");
            f115424f = cls4;
        }
        hashMap.put(cls4, c20440f);
        hashMap.put(Float.TYPE, c20440f);
        Class cls5 = f115425g;
        if (cls5 == null) {
            cls5 = class$(Constants.DOUBLE_CLASS);
            f115425g = cls5;
        }
        hashMap.put(cls5, c20442h);
        hashMap.put(Double.TYPE, c20442h);
    }

    public JSONPojoConvertor(Class cls) {
        this(cls, null, true);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static NumberType getNumberType(Class cls) {
        return (NumberType) f115419a.get(cls);
    }

    public void addGetter(String str, Method method) {
        this._getters.put(str, method);
    }

    public void addSetter(String str, Method method) {
        this._setters.put(str, new Setter(str, method));
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        try {
            Object newInstance = this._pojoClass.newInstance();
            setProps(newInstance, map);
            return newInstance;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public int getExcludedCount() {
        Set set = this._excluded;
        if (set == null) {
            return 0;
        }
        return set.size();
    }

    public Setter getSetter(String str) {
        return (Setter) this._setters.get(str);
    }

    public boolean includeField(String str, Method method) {
        Set set = this._excluded;
        return set == null || !set.contains(str);
    }

    public void init() {
        String stringBuffer;
        for (Method method : this._pojoClass.getMethods()) {
            if (!Modifier.isStatic(method.getModifiers())) {
                Class<?> declaringClass = method.getDeclaringClass();
                Class<?> cls = f115420b;
                if (cls == null) {
                    cls = class$(Constants.OBJECT_CLASS);
                    f115420b = cls;
                }
                if (declaringClass != cls) {
                    String name = method.getName();
                    int length = method.getParameterTypes().length;
                    if (length != 0) {
                        if (length == 1 && name.startsWith(ExtensionNamespaceContext.EXSLT_SET_PREFIX) && name.length() > 3) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append(name.substring(3, 4).toLowerCase());
                            stringBuffer2.append(name.substring(4));
                            String stringBuffer3 = stringBuffer2.toString();
                            if (includeField(stringBuffer3, method)) {
                                addSetter(stringBuffer3, method);
                            }
                        }
                    } else if (method.getReturnType() != null) {
                        if (name.startsWith("is") && name.length() > 2) {
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append(name.substring(2, 3).toLowerCase());
                            stringBuffer4.append(name.substring(3));
                            stringBuffer = stringBuffer4.toString();
                        } else if (name.startsWith("get") && name.length() > 3) {
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append(name.substring(3, 4).toLowerCase());
                            stringBuffer5.append(name.substring(4));
                            stringBuffer = stringBuffer5.toString();
                        }
                        if (includeField(stringBuffer, method)) {
                            addGetter(stringBuffer, method);
                        }
                    }
                }
            }
        }
    }

    public void log(Throwable th) {
        Log.ignore(th);
    }

    public int setProps(Object obj, Map map) {
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            Setter setter = getSetter((String) entry.getKey());
            if (setter != null) {
                try {
                    setter.invoke(obj, entry.getValue());
                    i++;
                } catch (Exception e) {
                    Log.warn("{} property '{}' not set. (errors)", this._pojoClass.getName(), setter.getPropertyName());
                    log(e);
                }
            }
        }
        return i;
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (this._fromJSON) {
            output.addClass(this._pojoClass);
        }
        for (Map.Entry entry : this._getters.entrySet()) {
            try {
                output.add((String) entry.getKey(), ((Method) entry.getValue()).invoke(obj, GETTER_ARG));
            } catch (Exception e) {
                Log.warn("{} property '{}' excluded. (errors)", this._pojoClass.getName(), entry.getKey());
                log(e);
            }
        }
    }

    public JSONPojoConvertor(Class cls, String[] strArr) {
        this(cls, new HashSet(Arrays.asList(strArr)), true);
    }

    public JSONPojoConvertor(Class cls, Set set) {
        this(cls, set, true);
    }

    public JSONPojoConvertor(Class cls, Set set, boolean z) {
        this._getters = new HashMap();
        this._setters = new HashMap();
        this._pojoClass = cls;
        this._excluded = set;
        this._fromJSON = z;
        init();
    }

    public JSONPojoConvertor(Class cls, boolean z) {
        this(cls, null, z);
    }
}
