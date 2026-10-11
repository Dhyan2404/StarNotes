package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.escape.Escaper;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.tnf;

@DoNotMock("Use Escapers.nullEscaper() or another methods from the *Escapers classes")
@GwtCompatible
@tnf
/* loaded from: classes6.dex */
public abstract class Escaper {

    /* renamed from: a */
    public final Function<String, String> f34654a = new Function() { // from class: com.sunia.HTREnginev2.urf
        @Override // com.google.common.base.Function, java.util.function.Function
        public final Object apply(Object obj) {
            return Escaper.this.escape((String) obj);
        }
    };

    public final Function<String, String> asFunction() {
        return this.f34654a;
    }

    public abstract String escape(String str);
}
