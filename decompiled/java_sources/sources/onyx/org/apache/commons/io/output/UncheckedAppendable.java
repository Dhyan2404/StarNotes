package onyx.org.apache.commons.io.output;

import com.sunia.HTREnginev2.cqn;

/* loaded from: classes11.dex */
public interface UncheckedAppendable extends Appendable {
    /* renamed from: on */
    static UncheckedAppendable m65641on(Appendable appendable) {
        return new cqn(appendable);
    }

    @Override // java.lang.Appendable
    UncheckedAppendable append(char c);

    @Override // java.lang.Appendable
    UncheckedAppendable append(CharSequence charSequence);

    @Override // java.lang.Appendable
    UncheckedAppendable append(CharSequence charSequence, int i, int i2);
}
