package net.p110sf.saxon.s9api.streams;

import com.sunia.HTREnginev2.rym;
import com.sunia.HTREnginev2.sym;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.streams.Step;

/* loaded from: classes11.dex */
public abstract class Step<T extends XdmItem> implements Function<XdmItem, Stream<? extends T>> {

    /* renamed from: net.sf.saxon.s9api.streams.Step$a */
    /* loaded from: classes11.dex */
    public class C18485a extends Step<T> {

        /* renamed from: e */
        public final /* synthetic */ Step f101439e;

        /* renamed from: f */
        public final /* synthetic */ Predicate f101440f;

        public C18485a(Step step, Predicate predicate) {
            this.f101439e = step;
            this.f101440f = predicate;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends T> apply(XdmItem xdmItem) {
            return this.f101439e.apply(xdmItem).filter(this.f101440f);
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Step$b */
    /* loaded from: classes11.dex */
    public class C18486b extends Step<T> {

        /* renamed from: e */
        public final /* synthetic */ Step f101442e;

        /* renamed from: f */
        public final /* synthetic */ Step f101443f;

        public C18486b(Step step, Step step2) {
            this.f101442e = step;
            this.f101443f = step2;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<T> apply(XdmItem xdmItem) {
            return Stream.concat(this.f101442e.apply(xdmItem), this.f101443f.apply(xdmItem));
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Step$c */
    /* loaded from: classes11.dex */
    public class C18487c extends Step<T> {

        /* renamed from: e */
        public final /* synthetic */ Step f101445e;

        public C18487c(Step step) {
            this.f101445e = step;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends T> apply(XdmItem xdmItem) {
            return this.f101445e.apply(xdmItem).limit(1L);
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Step$d */
    /* loaded from: classes11.dex */
    public class C18488d extends Step<T> {

        /* renamed from: e */
        public final /* synthetic */ Step f101447e;

        public C18488d(Step step) {
            this.f101447e = step;
        }

        /* renamed from: c */
        public static /* synthetic */ XdmItem m63743c(XdmItem xdmItem, XdmItem xdmItem2) {
            return xdmItem2;
        }

        @Override // java.util.function.Function
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Stream<? extends T> apply(XdmItem xdmItem) {
            return (Stream) this.f101447e.apply(xdmItem).reduce(new BinaryOperator() { // from class: com.sunia.HTREnginev2.qym
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    XdmItem m63743c;
                    m63743c = Step.C18488d.m63743c((XdmItem) obj, (XdmItem) obj2);
                    return m63743c;
                }
            }).map(new rym()).orElseGet(new sym());
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Step$e */
    /* loaded from: classes11.dex */
    public class C18489e extends Step<T> {

        /* renamed from: e */
        public final /* synthetic */ Step f101449e;

        /* renamed from: f */
        public final /* synthetic */ long f101450f;

        public C18489e(Step step, long j) {
            this.f101449e = step;
            this.f101450f = j;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends T> apply(XdmItem xdmItem) {
            return this.f101449e.apply(xdmItem).skip(this.f101450f).limit(1L);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [U] */
    /* renamed from: net.sf.saxon.s9api.streams.Step$f */
    /* loaded from: classes11.dex */
    public class C18490f<U> extends Step<U> {

        /* renamed from: e */
        public final /* synthetic */ Step f101452e;

        /* renamed from: f */
        public final /* synthetic */ Step f101453f;

        public C18490f(Step step, Step step2) {
            this.f101452e = step;
            this.f101453f = step2;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends U> apply(XdmItem xdmItem) {
            return this.f101452e.apply(xdmItem).flatMap(this.f101453f);
        }
    }

    /* renamed from: at */
    public Step<T> m63738at(long j) {
        return new C18489e(this, j);
    }

    public Step<T> cat(Step<T> step) {
        return new C18486b(this, step);
    }

    public Step<T> first() {
        return new C18487c(this);
    }

    public Step<T> last() {
        return new C18488d(this);
    }

    public <U extends XdmItem> Step<U> then(Step<U> step) {
        return new C18490f(this, step);
    }

    public Step<T> where(Predicate<? super T> predicate) {
        return new C18485a(this, predicate);
    }
}
