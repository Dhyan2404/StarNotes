package com.sunia.HTREnginev2;

import java.util.Hashtable;

/* loaded from: classes13.dex */
public class mui {

    /* renamed from: e */
    public static Hashtable f78016e = new Hashtable();

    /* renamed from: c */
    public int f78019c;

    /* renamed from: a */
    public int f78017a = 0;

    /* renamed from: b */
    public int f78018b = 0;

    /* renamed from: d */
    public int f78020d = 0;

    /* renamed from: a */
    public static mui m55685a(String str) {
        mui muiVar = (mui) f78016e.get(str);
        if (muiVar != null) {
            return muiVar;
        }
        Hashtable hashtable = f78016e;
        mui muiVar2 = new mui();
        hashtable.put(str, muiVar2);
        return muiVar2;
    }
}
