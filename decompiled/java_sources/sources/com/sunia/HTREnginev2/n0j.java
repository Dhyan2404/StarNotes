package com.sunia.HTREnginev2;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes12.dex */
public final class n0j extends AbstractC14637x4 {

    /* renamed from: a */
    public static final n0j f78187a = new n0j();

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1147692044:
                if (str.equals("address")) {
                    c = 0;
                    break;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    c = 1;
                    break;
                }
                break;
            case 1339224004:
                if (str.equals("canonical-name")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                try {
                    return InetAddress.getLocalHost().getHostAddress();
                } catch (UnknownHostException unused) {
                    return null;
                }
            case 1:
                try {
                    return InetAddress.getLocalHost().getHostName();
                } catch (UnknownHostException unused2) {
                    return null;
                }
            case 2:
                try {
                    return InetAddress.getLocalHost().getCanonicalHostName();
                } catch (UnknownHostException unused3) {
                    return null;
                }
            default:
                throw new IllegalArgumentException(str);
        }
    }
}
