package org.mortbay.util.ajax;

import java.lang.reflect.Method;
import java.util.Map;
import org.mortbay.log.Log;
import org.mortbay.util.Loader;
import org.mortbay.util.ajax.JSON;

/* loaded from: classes13.dex */
public class JSONEnumConvertor implements JSON.Convertor {

    /* renamed from: c */
    public static /* synthetic */ Class f115412c;

    /* renamed from: d */
    public static /* synthetic */ Class f115413d;

    /* renamed from: a */
    public boolean f115414a;

    /* renamed from: b */
    public Method f115415b;

    public JSONEnumConvertor() {
        this(false);
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
        if (!this.f115414a) {
            throw new UnsupportedOperationException();
        }
        try {
            return this.f115415b.invoke(null, Loader.loadClass(getClass(), (String) map.get("class")), map.get("value"));
        } catch (Exception e) {
            Log.warn(e);
            return null;
        }
    }

    @Override // org.mortbay.util.ajax.JSON.Convertor
    public void toJSON(Object obj, JSON.Output output) {
        if (!this.f115414a) {
            output.add(obj.toString());
        } else {
            output.addClass(obj.getClass());
            output.add("value", obj.toString());
        }
    }

    public JSONEnumConvertor(boolean z) {
        try {
            Class loadClass = Loader.loadClass(getClass(), "java.lang.Enum");
            Class<?>[] clsArr = new Class[2];
            Class<?> cls = f115412c;
            if (cls == null) {
                cls = class$("java.lang.Class");
                f115412c = cls;
            }
            clsArr[0] = cls;
            Class<?> cls2 = f115413d;
            if (cls2 == null) {
                cls2 = class$("java.lang.String");
                f115413d = cls2;
            }
            clsArr[1] = cls2;
            this.f115415b = loadClass.getMethod("valueOf", clsArr);
            this.f115414a = z;
        } catch (Exception e) {
            throw new RuntimeException("!Enums", e);
        }
    }
}
