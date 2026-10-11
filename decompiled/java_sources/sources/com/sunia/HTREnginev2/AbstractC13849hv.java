package com.sunia.HTREnginev2;

import java.nio.ByteBuffer;

@htd
/* renamed from: com.sunia.HTREnginev2.hv */
/* loaded from: classes6.dex */
public abstract class AbstractC13849hv {

    /* renamed from: a */
    public static final AbstractC13849hv f72575a = new a();

    /* renamed from: com.sunia.HTREnginev2.hv$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractC13849hv {
        @Override // com.sunia.HTREnginev2.AbstractC13849hv
        /* renamed from: a */
        public AbstractC14537v9 mo54631a(int capacity) {
            return AbstractC14537v9.m57757j(ByteBuffer.allocateDirect(capacity));
        }

        @Override // com.sunia.HTREnginev2.AbstractC13849hv
        /* renamed from: b */
        public AbstractC14537v9 mo54632b(int capacity) {
            return AbstractC14537v9.m57758k(new byte[capacity]);
        }
    }

    /* renamed from: c */
    public static AbstractC13849hv m54630c() {
        return f72575a;
    }

    /* renamed from: a */
    public abstract AbstractC14537v9 mo54631a(int capacity);

    /* renamed from: b */
    public abstract AbstractC14537v9 mo54632b(int capacity);
}
