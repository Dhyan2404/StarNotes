package com.dropbox.core.util;

import java.util.ArrayList;

/* loaded from: classes4.dex */
public abstract class Collector<E, L> {

    /* loaded from: classes4.dex */
    public static final class ArrayListCollector<E> extends Collector<E, ArrayList<E>> {

        /* renamed from: a */
        public ArrayList<E> f16622a = new ArrayList<>();

        @Override // com.dropbox.core.util.Collector
        public void add(E e) {
            ArrayList<E> arrayList = this.f16622a;
            if (arrayList == null) {
                throw new IllegalStateException("already called finish()");
            }
            arrayList.add(e);
        }

        @Override // com.dropbox.core.util.Collector
        public ArrayList<E> finish() {
            ArrayList<E> arrayList = this.f16622a;
            if (arrayList != null) {
                this.f16622a = null;
                return arrayList;
            }
            throw new IllegalStateException("already called finish()");
        }
    }

    /* loaded from: classes4.dex */
    public static final class NullSkipper<E, L> extends Collector<E, L> {

        /* renamed from: a */
        public final Collector<E, L> f16623a;

        public NullSkipper(Collector<E, L> collector) {
            this.f16623a = collector;
        }

        /* renamed from: mk */
        public static <E, L> Collector<E, L> m10121mk(Collector<E, L> collector) {
            return new NullSkipper(collector);
        }

        @Override // com.dropbox.core.util.Collector
        public void add(E e) {
            if (e != null) {
                this.f16623a.add(e);
            }
        }

        @Override // com.dropbox.core.util.Collector
        public L finish() {
            return this.f16623a.finish();
        }
    }

    public abstract void add(E e);

    public abstract L finish();
}
