package kotlinx.coroutines.stream;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.stream.Stream;
import kotlin.jvm.Volatile;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class StreamFlow<T> implements Flow<T> {

    /* renamed from: f */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98704f = AtomicIntegerFieldUpdater.newUpdater(StreamFlow.class, "consumed");

    @Volatile
    private volatile int consumed = 0;

    /* renamed from: e */
    @NotNull
    public final Stream<T> f98705e;

    public StreamFlow(@NotNull Stream<T> stream) {
        this.f98705e = stream;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005e A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #1 {all -> 0x0079, blocks: (B:15:0x0058, B:17:0x005e), top: B:14:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.Flow
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.FlowCollector<? super T> r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.stream.StreamFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.stream.StreamFlow$collect$1 r0 = (kotlinx.coroutines.stream.StreamFlow$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.stream.StreamFlow$collect$1 r0 = new kotlinx.coroutines.stream.StreamFlow$collect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            java.lang.Object r5 = r0.L$2
            java.util.Iterator r5 = (java.util.Iterator) r5
            java.lang.Object r6 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.stream.StreamFlow r2 = (kotlinx.coroutines.stream.StreamFlow) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L37
            r7 = r6
            r6 = r2
            goto L58
        L37:
            r5 = move-exception
            r6 = r2
            goto L7f
        L3a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L42:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r7 = kotlinx.coroutines.stream.StreamFlow.f98704f
            r2 = 0
            boolean r7 = r7.compareAndSet(r5, r2, r3)
            if (r7 == 0) goto L85
            java.util.stream.Stream<T> r7 = r5.f98705e     // Catch: java.lang.Throwable -> L7b
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Throwable -> L7b
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
        L58:
            boolean r2 = r5.hasNext()     // Catch: java.lang.Throwable -> L79
            if (r2 == 0) goto L71
            java.lang.Object r2 = r5.next()     // Catch: java.lang.Throwable -> L79
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L79
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L79
            r0.L$2 = r5     // Catch: java.lang.Throwable -> L79
            r0.label = r3     // Catch: java.lang.Throwable -> L79
            java.lang.Object r2 = r7.emit(r2, r0)     // Catch: java.lang.Throwable -> L79
            if (r2 != r1) goto L58
            return r1
        L71:
            java.util.stream.Stream<T> r5 = r6.f98705e
            r5.close()
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L79:
            r5 = move-exception
            goto L7f
        L7b:
            r6 = move-exception
            r4 = r6
            r6 = r5
            r5 = r4
        L7f:
            java.util.stream.Stream<T> r6 = r6.f98705e
            r6.close()
            throw r5
        L85:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Stream.consumeAsFlow can be collected only once"
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.stream.StreamFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
