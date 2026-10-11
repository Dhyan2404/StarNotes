package org.mortbay.util.ajax;

import org.mortbay.util.ajax.JSON;

/* loaded from: classes13.dex */
public class JSONPojoConvertorFactory implements JSON.Convertor {

    /* renamed from: c */
    public static /* synthetic */ Class f115426c;

    /* renamed from: d */
    public static /* synthetic */ Class f115427d;

    /* renamed from: a */
    public final JSON f115428a;

    /* renamed from: b */
    public final boolean f115429b;

    public JSONPojoConvertorFactory(JSON json) {
        this.f115428a = json;
        this.f115429b = true;
        if (json == null) {
            throw new IllegalArgumentException();
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0037  */
    @Override // org.mortbay.util.ajax.JSON.Convertor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object fromJSON(java.util.Map r5) {
        /*
            r4 = this;
            java.lang.String r0 = "class"
            java.lang.Object r0 = r5.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L52
            org.mortbay.util.ajax.JSON r1 = r4.f115428a
            org.mortbay.util.ajax.JSON$Convertor r1 = r1.getConvertorFor(r0)
            if (r1 != 0) goto L35
            java.lang.Class r2 = org.mortbay.util.ajax.JSONPojoConvertorFactory.f115426c     // Catch: java.lang.ClassNotFoundException -> L31
            if (r2 != 0) goto L1e
            java.lang.String r2 = "org.mortbay.util.ajax.JSON"
            java.lang.Class r2 = class$(r2)     // Catch: java.lang.ClassNotFoundException -> L31
            org.mortbay.util.ajax.JSONPojoConvertorFactory.f115426c = r2     // Catch: java.lang.ClassNotFoundException -> L31
        L1e:
            java.lang.Class r2 = org.mortbay.util.Loader.loadClass(r2, r0)     // Catch: java.lang.ClassNotFoundException -> L31
            org.mortbay.util.ajax.JSONPojoConvertor r3 = new org.mortbay.util.ajax.JSONPojoConvertor     // Catch: java.lang.ClassNotFoundException -> L31
            r3.<init>(r2)     // Catch: java.lang.ClassNotFoundException -> L31
            org.mortbay.util.ajax.JSON r4 = r4.f115428a     // Catch: java.lang.ClassNotFoundException -> L2e
            r4.addConvertorFor(r0, r3)     // Catch: java.lang.ClassNotFoundException -> L2e
            r1 = r3
            goto L35
        L2e:
            r4 = move-exception
            r1 = r3
            goto L32
        L31:
            r4 = move-exception
        L32:
            r4.printStackTrace()
        L35:
            if (r1 == 0) goto L52
            java.lang.Class r4 = org.mortbay.util.ajax.JSONPojoConvertorFactory.f115427d
            if (r4 != 0) goto L43
            java.lang.String r4 = "java.lang.Object"
            java.lang.Class r4 = class$(r4)
            org.mortbay.util.ajax.JSONPojoConvertorFactory.f115427d = r4
        L43:
            java.lang.String r4 = r4.getName()
            boolean r4 = r0.equals(r4)
            if (r4 != 0) goto L52
            java.lang.Object r4 = r1.fromJSON(r5)
            return r4
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSONPojoConvertorFactory.fromJSON(java.util.Map):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0037  */
    @Override // org.mortbay.util.ajax.JSON.Convertor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void toJSON(java.lang.Object r6, org.mortbay.util.ajax.JSON.Output r7) {
        /*
            r5 = this;
            java.lang.Class r0 = r6.getClass()
            java.lang.String r0 = r0.getName()
            org.mortbay.util.ajax.JSON r1 = r5.f115428a
            org.mortbay.util.ajax.JSON$Convertor r1 = r1.getConvertorFor(r0)
            if (r1 != 0) goto L35
            java.lang.Class r2 = org.mortbay.util.ajax.JSONPojoConvertorFactory.f115426c     // Catch: java.lang.ClassNotFoundException -> L31
            if (r2 != 0) goto L1c
            java.lang.String r2 = "org.mortbay.util.ajax.JSON"
            java.lang.Class r2 = class$(r2)     // Catch: java.lang.ClassNotFoundException -> L31
            org.mortbay.util.ajax.JSONPojoConvertorFactory.f115426c = r2     // Catch: java.lang.ClassNotFoundException -> L31
        L1c:
            java.lang.Class r2 = org.mortbay.util.Loader.loadClass(r2, r0)     // Catch: java.lang.ClassNotFoundException -> L31
            org.mortbay.util.ajax.JSONPojoConvertor r3 = new org.mortbay.util.ajax.JSONPojoConvertor     // Catch: java.lang.ClassNotFoundException -> L31
            boolean r4 = r5.f115429b     // Catch: java.lang.ClassNotFoundException -> L31
            r3.<init>(r2, r4)     // Catch: java.lang.ClassNotFoundException -> L31
            org.mortbay.util.ajax.JSON r5 = r5.f115428a     // Catch: java.lang.ClassNotFoundException -> L2e
            r5.addConvertorFor(r0, r3)     // Catch: java.lang.ClassNotFoundException -> L2e
            r1 = r3
            goto L35
        L2e:
            r5 = move-exception
            r1 = r3
            goto L32
        L31:
            r5 = move-exception
        L32:
            r5.printStackTrace()
        L35:
            if (r1 == 0) goto L4d
            java.lang.Class r5 = r6.getClass()
            java.lang.Class r0 = org.mortbay.util.ajax.JSONPojoConvertorFactory.f115427d
            if (r0 != 0) goto L47
            java.lang.String r0 = "java.lang.Object"
            java.lang.Class r0 = class$(r0)
            org.mortbay.util.ajax.JSONPojoConvertorFactory.f115427d = r0
        L47:
            if (r5 == r0) goto L4d
            r1.toJSON(r6, r7)
            goto L54
        L4d:
            java.lang.String r5 = r6.toString()
            r7.add(r5)
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSONPojoConvertorFactory.toJSON(java.lang.Object, org.mortbay.util.ajax.JSON$Output):void");
    }

    public JSONPojoConvertorFactory(JSON json, boolean z) {
        this.f115428a = json;
        this.f115429b = z;
        if (json == null) {
            throw new IllegalArgumentException();
        }
    }
}
