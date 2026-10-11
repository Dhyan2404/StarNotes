package com.sunia.HTREnginev2;

import com.google.protobuf.MessageLite;
import com.google.protobuf.ProtoSyntax;

@htd
/* loaded from: classes6.dex */
public final class ucl implements xmj {

    /* renamed from: e */
    public static final int f86357e = 1;

    /* renamed from: a */
    public final MessageLite f86358a;

    /* renamed from: b */
    public final String f86359b;

    /* renamed from: c */
    public final Object[] f86360c;

    /* renamed from: d */
    public final int f86361d;

    public ucl(MessageLite defaultInstance, String info, Object[] objects) {
        this.f86358a = defaultInstance;
        this.f86359b = info;
        this.f86360c = objects;
        char charAt = info.charAt(0);
        if (charAt < 55296) {
            this.f86361d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = info.charAt(i3);
            if (charAt2 < 55296) {
                this.f86361d = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // com.sunia.HTREnginev2.xmj
    /* renamed from: a */
    public boolean mo29493a() {
        return (this.f86361d & 2) == 2;
    }

    @Override // com.sunia.HTREnginev2.xmj
    /* renamed from: b */
    public MessageLite mo29494b() {
        return this.f86358a;
    }

    /* renamed from: c */
    public Object[] m57614c() {
        return this.f86360c;
    }

    /* renamed from: d */
    public String m57615d() {
        return this.f86359b;
    }

    @Override // com.sunia.HTREnginev2.xmj
    public ProtoSyntax getSyntax() {
        return (this.f86361d & 1) != 0 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }
}
