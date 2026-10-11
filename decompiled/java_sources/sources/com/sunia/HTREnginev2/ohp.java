package com.sunia.HTREnginev2;

import com.google.android.odml.image.ImageProperties;

/* loaded from: classes6.dex */
public final class ohp extends flp {

    /* renamed from: a */
    public Integer f79734a;

    /* renamed from: b */
    public Integer f79735b;

    @Override // com.sunia.HTREnginev2.flp
    /* renamed from: a */
    public final flp mo54129a(int i) {
        this.f79734a = Integer.valueOf(i);
        return this;
    }

    @Override // com.sunia.HTREnginev2.flp
    /* renamed from: b */
    public final flp mo54130b(int i) {
        this.f79735b = Integer.valueOf(i);
        return this;
    }

    @Override // com.sunia.HTREnginev2.flp
    /* renamed from: c */
    public final ImageProperties mo54131c() {
        Integer num = this.f79734a;
        if (num != null && this.f79735b != null) {
            return new rip(num.intValue(), this.f79735b.intValue(), null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f79734a == null) {
            sb.append(" imageFormat");
        }
        if (this.f79735b == null) {
            sb.append(" storageType");
        }
        String valueOf = String.valueOf(sb);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 28);
        sb2.append("Missing required properties:");
        sb2.append(valueOf);
        throw new IllegalStateException(sb2.toString());
    }
}
