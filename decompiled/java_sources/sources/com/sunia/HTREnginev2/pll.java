package com.sunia.HTREnginev2;

import java.util.ResourceBundle;

/* loaded from: classes12.dex */
public final class pll extends AbstractC14637x4 {

    /* renamed from: a */
    public static final pll f80918a = new pll();

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        if (split.length != 2) {
            throw mgi.m55616a("Bad ResourceBundle key format [%s]. Expected format is BundleName:KeyName.", str);
        }
        String str2 = split[0];
        String str3 = split[1];
        try {
            return ResourceBundle.getBundle(str2).getString(str3);
        } catch (Exception e) {
            throw mgi.m55617b(e, "Error looking up ResourceBundle [%s] and key [%s].", str2, str3);
        }
    }
}
