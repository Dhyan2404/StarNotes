package com.sunia.HTREnginev2;

/* loaded from: classes12.dex */
public final class zqf extends AbstractC14637x4 {

    /* renamed from: a */
    public static final zqf f92089a = new zqf();

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        if (str != null) {
            return System.getenv(str);
        }
        return null;
    }
}
