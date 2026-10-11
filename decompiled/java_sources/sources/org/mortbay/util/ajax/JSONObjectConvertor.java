package org.mortbay.util.ajax;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mortbay.util.ajax.JSON;

/* loaded from: classes13.dex */
public class JSONObjectConvertor implements JSON.Convertor {

    /* renamed from: c */
    public static /* synthetic */ Class f115416c;

    /* renamed from: a */
    public boolean f115417a;

    /* renamed from: b */
    public Set f115418b;

    public JSONObjectConvertor() {
        this.f115418b = null;
        this.f115417a = false;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public Object fromJSON(Map map) {
        if (this.f115417a) {
            throw new UnsupportedOperationException();
        }
        return map;
    }

    public boolean includeField(String str, Object obj, Method method) {
        Set set = this.f115418b;
        return set == null || !set.contains(str);
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        String stringBuffer;
        try {
            obj.getClass();
            if (this.f115417a) {
                output.addClass(obj.getClass());
            }
            for (Method method : obj.getClass().getMethods()) {
                if (!Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length == 0 && method.getReturnType() != null) {
                    Class<?> declaringClass = method.getDeclaringClass();
                    Class<?> cls = f115416c;
                    if (cls == null) {
                        cls = class$(Constants.OBJECT_CLASS);
                        f115416c = cls;
                    }
                    if (declaringClass != cls) {
                        String name = method.getName();
                        if (name.startsWith("is")) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append(name.substring(2, 3).toLowerCase());
                            stringBuffer2.append(name.substring(3));
                            stringBuffer = stringBuffer2.toString();
                        } else if (name.startsWith("get")) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append(name.substring(3, 4).toLowerCase());
                            stringBuffer3.append(name.substring(4));
                            stringBuffer = stringBuffer3.toString();
                        }
                        if (includeField(stringBuffer, obj, method)) {
                            output.add(stringBuffer, method.invoke(obj, null));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw new RuntimeException("Illegal argument", th);
        }
    }

    public JSONObjectConvertor(boolean z) {
        this.f115418b = null;
        this.f115417a = z;
    }

    public JSONObjectConvertor(boolean z, String[] strArr) {
        this.f115418b = null;
        this.f115417a = z;
        if (strArr != null) {
            this.f115418b = new HashSet(Arrays.asList(strArr));
        }
    }
}
