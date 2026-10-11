package com.sunia.HTREnginev2;

/* loaded from: classes12.dex */
public final class s6n extends AbstractC14637x4 {

    /* renamed from: a */
    public static final s6n f83860a = new s6n();

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        try {
            return System.getProperty(str);
        } catch (IllegalArgumentException | NullPointerException | SecurityException unused) {
            return null;
        }
    }
}
