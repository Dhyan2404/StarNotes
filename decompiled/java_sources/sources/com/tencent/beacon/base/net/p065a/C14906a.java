package com.tencent.beacon.base.net.p065a;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.tencent.beacon.base.net.p065a.InterfaceC14908c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p073d.C14975h;
import com.tencent.beacon.pack.AbstractJceStruct;
import com.tencent.beacon.pack.C15015c;
import com.tencent.beacon.pack.RequestPackage;
import com.tencent.beacon.pack.ResponsePackage;

/* renamed from: com.tencent.beacon.base.net.a.a */
/* loaded from: classes10.dex */
public final class C14906a extends InterfaceC14908c.a<byte[], AbstractJceStruct> {

    /* renamed from: a */
    private final a f92661a = new a();

    /* renamed from: b */
    private final b f92662b = new b();

    /* renamed from: com.tencent.beacon.base.net.a.a$a */
    /* loaded from: classes10.dex */
    public static final class a implements InterfaceC14908c<RequestPackage, byte[]> {
        /* renamed from: b */
        private byte[] m59121b(RequestPackage requestPackage) {
            C15015c c15015c = new C15015c();
            c15015c.m59766a(1);
            c15015c.m59770b(Constants.ATTRNAME_TEST);
            c15015c.m59767a(Constants.ATTRNAME_TEST);
            c15015c.m59771b("detail", requestPackage);
            return c15015c.m59769a();
        }

        @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public byte[] mo59122a(RequestPackage requestPackage) {
            if (requestPackage == null) {
                return null;
            }
            C14954c.m59391a("[BeaconNet]", "RequestPackage: " + requestPackage.toString(), new Object[0]);
            byte[] m59120a = m59120a(m59121b(requestPackage));
            if (m59120a != null) {
                C14954c.m59391a("[BeaconNet]", "request package after processing size: " + m59120a.length, new Object[0]);
            }
            return m59120a;
        }

        /* renamed from: a */
        private byte[] m59120a(byte[] bArr) {
            C14975h m59499d = C14975h.m59499d();
            return m59499d != null ? C14953b.m59379b(bArr, 2, 3, m59499d.m59500a()) : bArr;
        }
    }

    /* renamed from: com.tencent.beacon.base.net.a.a$b */
    /* loaded from: classes10.dex */
    public static final class b implements InterfaceC14908c<byte[], ResponsePackage> {
        /* renamed from: b */
        private ResponsePackage m59123b(byte[] bArr) {
            if (bArr == null) {
                return null;
            }
            try {
                if (bArr.length <= 0) {
                    return null;
                }
                C15015c c15015c = new C15015c();
                c15015c.m59768a(bArr);
                return (ResponsePackage) c15015c.m59765a("detail", (String) new ResponsePackage());
            } catch (Throwable unused) {
                return null;
            }
        }

        /* renamed from: c */
        private byte[] m59124c(byte[] bArr) {
            return C14953b.m59373a(bArr, 2, 3, C14975h.m59499d().m59500a());
        }

        @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public ResponsePackage mo59122a(byte[] bArr) {
            if (bArr == null) {
                return null;
            }
            return m59123b(m59124c(bArr));
        }
    }

    /* renamed from: a */
    public static C14906a m59117a() {
        return new C14906a();
    }

    /* renamed from: b */
    public InterfaceC14908c<byte[], ResponsePackage> m59118b() {
        return this.f92662b;
    }

    /* renamed from: c */
    public InterfaceC14908c<RequestPackage, byte[]> m59119c() {
        return this.f92661a;
    }
}
