package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.q4m;

/* loaded from: classes5.dex */
public class o4m extends q4m.AbstractC14280a {

    /* renamed from: g */
    public static /* synthetic */ Class f79325g;

    /* renamed from: f */
    public final /* synthetic */ q4m f79326f;

    public o4m(q4m q4mVar) {
        super(null);
        this.f79326f = q4mVar;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    @Override // com.sunia.HTREnginev2.q4m.AbstractC14280a
    /* renamed from: a */
    public Object mo55900a() {
        String str;
        Class cls = f79325g;
        if (cls == null) {
            cls = class$("javax.xml.validation.SchemaFactoryFinder");
            f79325g = cls;
        }
        ClassLoader classLoader = cls.getClassLoader();
        str = q4m.f81621i;
        return fdm.m54091e(classLoader, str);
    }
}
