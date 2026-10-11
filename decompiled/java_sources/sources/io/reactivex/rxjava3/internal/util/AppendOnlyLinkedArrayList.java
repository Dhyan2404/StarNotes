package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.functions.Predicate;

/* loaded from: classes10.dex */
public class AppendOnlyLinkedArrayList<T> {

    /* renamed from: a */
    public final int f97413a;

    /* renamed from: b */
    public final Object[] f97414b;

    /* renamed from: c */
    public Object[] f97415c;

    /* renamed from: d */
    public int f97416d;

    /* loaded from: classes10.dex */
    public interface NonThrowingPredicate<T> extends Predicate<T> {
        @Override // io.reactivex.rxjava3.functions.Predicate
        boolean test(T t);
    }

    public AppendOnlyLinkedArrayList(int capacity) {
        this.f97413a = capacity;
        Object[] objArr = new Object[capacity + 1];
        this.f97414b = objArr;
        this.f97415c = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <U> boolean accept(org.reactivestreams.Subscriber<? super U> r4) {
        /*
            r3 = this;
            java.lang.Object[] r0 = r3.f97414b
            int r3 = r3.f97413a
        L4:
            r1 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r1 >= r3) goto L19
            r2 = r0[r1]
            if (r2 != 0) goto Le
            goto L19
        Le:
            boolean r2 = io.reactivex.rxjava3.internal.util.NotificationLite.acceptFull(r2, r4)
            if (r2 == 0) goto L16
            r3 = 1
            return r3
        L16:
            int r1 = r1 + 1
            goto L7
        L19:
            r0 = r0[r3]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList.accept(org.reactivestreams.Subscriber):boolean");
    }

    public void add(T value) {
        int i = this.f97413a;
        int i2 = this.f97416d;
        if (i2 == i) {
            Object[] objArr = new Object[i + 1];
            this.f97415c[i] = objArr;
            this.f97415c = objArr;
            i2 = 0;
        }
        this.f97415c[i2] = value;
        this.f97416d = i2 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void forEachWhile(io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate<? super T> r4) {
        /*
            r3 = this;
            java.lang.Object[] r0 = r3.f97414b
            int r3 = r3.f97413a
        L4:
            if (r0 == 0) goto L1d
            r1 = 0
        L7:
            if (r1 >= r3) goto L18
            r2 = r0[r1]
            if (r2 != 0) goto Le
            goto L18
        Le:
            boolean r2 = r4.test(r2)
            if (r2 == 0) goto L15
            return
        L15:
            int r1 = r1 + 1
            goto L7
        L18:
            r0 = r0[r3]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList.forEachWhile(io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList$NonThrowingPredicate):void");
    }

    public void setFirst(T value) {
        this.f97414b[0] = value;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <U> boolean accept(io.reactivex.rxjava3.core.Observer<? super U> r4) {
        /*
            r3 = this;
            java.lang.Object[] r0 = r3.f97414b
            int r3 = r3.f97413a
        L4:
            r1 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r1 >= r3) goto L19
            r2 = r0[r1]
            if (r2 != 0) goto Le
            goto L19
        Le:
            boolean r2 = io.reactivex.rxjava3.internal.util.NotificationLite.acceptFull(r2, r4)
            if (r2 == 0) goto L16
            r3 = 1
            return r3
        L16:
            int r1 = r1 + 1
            goto L7
        L19:
            r0 = r0[r3]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList.accept(io.reactivex.rxjava3.core.Observer):boolean");
    }

    public <S> void forEachWhile(S state, BiPredicate<? super S, ? super T> consumer) throws Throwable {
        Object[] objArr = this.f97414b;
        int i = this.f97413a;
        while (true) {
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = objArr[i2];
                if (obj == null || consumer.test(state, obj)) {
                    return;
                }
            }
            objArr = (Object[]) objArr[i];
        }
    }
}
