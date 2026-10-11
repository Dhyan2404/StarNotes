package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.fmo;

/* loaded from: classes5.dex */
public class dmo extends fmo.AbstractC13729a {

    /* renamed from: g */
    public static /* synthetic */ Class f68024g;

    /* renamed from: f */
    public final /* synthetic */ fmo f68025f;

    public dmo(fmo fmoVar) {
        super(null);
        this.f68025f = fmoVar;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    @Override // com.sunia.HTREnginev2.fmo.AbstractC13729a
    /* renamed from: a */
    public Object mo53679a() {
        String str;
        Class cls = f68024g;
        if (cls == null) {
            cls = class$("javax.xml.xpath.XPathFactoryFinder");
            f68024g = cls;
        }
        ClassLoader classLoader = cls.getClassLoader();
        str = fmo.f70164g;
        return gdm.m54265e(classLoader, str);
    }
}
