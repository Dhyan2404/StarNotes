package com.squareup.okhttp.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes9.dex */
public interface Network {
    public static final Network DEFAULT = new C13169a();

    /* renamed from: com.squareup.okhttp.internal.Network$a */
    /* loaded from: classes9.dex */
    public static class C13169a implements Network {
        @Override // com.squareup.okhttp.internal.Network
        public InetAddress[] resolveInetAddresses(String str) throws UnknownHostException {
            if (str != null) {
                return InetAddress.getAllByName(str);
            }
            throw new UnknownHostException("host == null");
        }
    }

    InetAddress[] resolveInetAddresses(String str) throws UnknownHostException;
}
