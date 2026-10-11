package com.sunia.HTREnginev2;

import java.util.Date;
import org.apache.commons.lang3.time.FastDateFormat;

/* loaded from: classes12.dex */
public final class jve extends AbstractC14637x4 {

    /* renamed from: a */
    public static final jve f74741a = new jve();

    /* renamed from: a */
    public final String m55054a(long j, String str) {
        FastDateFormat fastDateFormat;
        if (str != null) {
            try {
                fastDateFormat = FastDateFormat.getInstance(str);
            } catch (Exception e) {
                throw mgi.m55617b(e, "Invalid date format: [%s]", str);
            }
        } else {
            fastDateFormat = null;
        }
        if (fastDateFormat == null) {
            fastDateFormat = FastDateFormat.getInstance();
        }
        return fastDateFormat.format(new Date(j));
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        return m55054a(System.currentTimeMillis(), str);
    }
}
