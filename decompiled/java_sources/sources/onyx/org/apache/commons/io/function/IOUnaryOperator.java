package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.function.UnaryOperator;
import onyx.org.apache.commons.io.function.IOUnaryOperator;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOUnaryOperator<T> extends IOFunction<T, T> {
    static <T> IOUnaryOperator<T> identity() {
        return new IOUnaryOperator() { // from class: com.sunia.HTREnginev2.kfi
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object lambda$identity$0;
                lambda$identity$0 = IOUnaryOperator.lambda$identity$0(obj);
                return lambda$identity$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    /* synthetic */ default Object m65390l(Object obj) {
        return Uncheck.apply(this, obj);
    }

    static /* synthetic */ Object lambda$identity$0(Object obj) throws IOException {
        return obj;
    }

    default UnaryOperator<T> asUnaryOperator() {
        return new UnaryOperator() { // from class: com.sunia.HTREnginev2.jfi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m65390l;
                m65390l = IOUnaryOperator.this.m65390l(obj);
                return m65390l;
            }
        };
    }
}
