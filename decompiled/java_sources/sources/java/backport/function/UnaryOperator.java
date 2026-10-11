package java.backport.function;

import java.backport.function.UnaryOperator;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface UnaryOperator<T> extends Function<T, T> {
    static <T> UnaryOperator<T> identity() {
        return new UnaryOperator() { // from class: com.sunia.HTREnginev2.qpn
            @Override // java.backport.function.Function
            public final Object apply(Object obj) {
                Object lambda$identity$0;
                lambda$identity$0 = UnaryOperator.lambda$identity$0(obj);
                return lambda$identity$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$identity$0(Object obj) {
        return obj;
    }
}
