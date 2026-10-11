package com.tencent.beacon.base.net.adapter;

import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.beacon.pack.C15014b;
import com.tencent.beacon.pack.RequestPackageV2;
import com.tencent.beacon.pack.SocketRequestPackage;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: com.tencent.beacon.base.net.adapter.g */
/* loaded from: classes10.dex */
public class C14917g {

    /* renamed from: a */
    private static C14969b f92673a;

    /* renamed from: com.tencent.beacon.base.net.adapter.g$a */
    /* loaded from: classes10.dex */
    public static final class a {

        /* renamed from: a */
        static final C14917g f92674a = new C14917g();
    }

    /* renamed from: a */
    public static C14917g m59134a() {
        return a.f92674a;
    }

    private C14917g() {
        f92673a = C14969b.m59444b();
    }

    /* renamed from: a */
    public byte[] m59136a(RequestPackageV2 requestPackageV2) {
        try {
            if (f92673a.m59462c() == 1) {
                SocketRequestPackage socketRequestPackage = new SocketRequestPackage(C14935d.m59306e(), requestPackageV2.toByteArray());
                C15014b c15014b = new C15014b();
                socketRequestPackage.writeTo(c15014b);
                byte[] m59761b = c15014b.m59761b();
                return C14953b.m59378b(m59135a(m59761b, m59761b.length), 2);
            }
            if (f92673a.m59462c() == 2) {
                return C14953b.m59378b(requestPackageV2.toByteArray(), 2);
            }
            return null;
        } catch (Throwable th) {
            String format = String.format("QuicAdapter quic generate data error: %s", th.getMessage());
            C14954c.m59395b(format, new Object[0]);
            C14954c.m59393a(th);
            C14882j.m58961e().m58953a(f92673a.m59462c() == 1 ? "471" : "474", format);
            return null;
        }
    }

    /* renamed from: a */
    private byte[] m59135a(byte[] bArr, int i) {
        int i2 = i + 4;
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.putShort((short) (i2 & 65535));
        allocate.put(bArr);
        allocate.put((byte) 13);
        allocate.put((byte) 10);
        return allocate.array();
    }
}
