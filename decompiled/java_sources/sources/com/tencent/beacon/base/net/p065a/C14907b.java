package com.tencent.beacon.base.net.p065a;

import com.tencent.beacon.base.net.p065a.InterfaceC14908c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.beacon.p073d.C14975h;
import com.tencent.beacon.pack.AbstractJceStruct;
import com.tencent.beacon.pack.C15013a;
import com.tencent.beacon.pack.C15014b;
import com.tencent.beacon.pack.RequestPackageV2;
import com.tencent.beacon.pack.ResponsePackageV2;

/* renamed from: com.tencent.beacon.base.net.a.b */
/* loaded from: classes10.dex */
public class C14907b extends InterfaceC14908c.a<byte[], AbstractJceStruct> {

    /* renamed from: a */
    private final a f92663a = new a();

    /* renamed from: b */
    private final b f92664b = new b();

    /* renamed from: com.tencent.beacon.base.net.a.b$a */
    /* loaded from: classes10.dex */
    public static final class a implements InterfaceC14908c<RequestPackageV2, byte[]> {
        @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public byte[] mo59122a(RequestPackageV2 requestPackageV2) {
            if (requestPackageV2 == null) {
                return null;
            }
            C14954c.m59391a("[BeaconNet]", "RequestPackageV2: " + requestPackageV2.toString(), new Object[0]);
            C15014b c15014b = new C15014b();
            requestPackageV2.writeTo(c15014b);
            byte[] m59128a = m59128a(c15014b.m59761b());
            if (m59128a != null) {
                C14954c.m59391a("[BeaconNet]", "request package after processing size: " + m59128a.length, new Object[0]);
            }
            return m59128a;
        }

        /* renamed from: a */
        private byte[] m59128a(byte[] bArr) {
            int m59448a = C14969b.m59444b().m59448a();
            C14975h m59499d = C14975h.m59499d();
            if (C14969b.m59444b().m59489w()) {
                return C14953b.m59379b(bArr, m59448a, 3, m59499d.m59500a());
            }
            return C14953b.m59378b(bArr, m59448a);
        }
    }

    /* renamed from: com.tencent.beacon.base.net.a.b$b */
    /* loaded from: classes10.dex */
    public static final class b implements InterfaceC14908c<byte[], ResponsePackageV2> {
        /* renamed from: b */
        private byte[] m59129b(byte[] bArr) {
            return C14969b.m59444b().m59489w() ? C14953b.m59373a(bArr, 2, 3, C14975h.m59499d().m59500a()) : C14953b.m59372a(bArr, 2);
        }

        @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public ResponsePackageV2 mo59122a(byte[] bArr) {
            if (bArr == null) {
                return null;
            }
            byte[] m59129b = m59129b(bArr);
            ResponsePackageV2 responsePackageV2 = new ResponsePackageV2();
            responsePackageV2.readFrom(new C15013a(m59129b));
            return responsePackageV2;
        }
    }

    /* renamed from: a */
    public static C14907b m59125a() {
        return new C14907b();
    }

    /* renamed from: b */
    public InterfaceC14908c<byte[], ResponsePackageV2> m59126b() {
        return this.f92664b;
    }

    /* renamed from: c */
    public InterfaceC14908c<RequestPackageV2, byte[]> m59127c() {
        return this.f92663a;
    }
}
