package com.tencent.beacon.base.net.p065a;

import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.pack.C15013a;
import com.tencent.beacon.pack.SocketResponsePackage;

/* renamed from: com.tencent.beacon.base.net.a.e */
/* loaded from: classes10.dex */
public final class C14910e implements InterfaceC14908c<byte[], SocketResponsePackage> {
    @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public SocketResponsePackage mo59122a(byte[] bArr) {
        SocketResponsePackage socketResponsePackage = new SocketResponsePackage();
        socketResponsePackage.readFrom(new C15013a(bArr));
        C14935d.m59304c(socketResponsePackage.header);
        return socketResponsePackage;
    }
}
