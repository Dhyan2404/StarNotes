package org.reactivestreams;

import com.sunia.HTREnginev2.rng;
import com.sunia.HTREnginev2.sng;
import com.sunia.HTREnginev2.tng;
import com.sunia.HTREnginev2.ung;
import com.sunia.HTREnginev2.vng;
import com.sunia.HTREnginev2.wng;
import java.util.Objects;
import java.util.concurrent.Flow;

/* loaded from: classes16.dex */
public final class FlowAdapters {

    /* renamed from: org.reactivestreams.FlowAdapters$a */
    /* loaded from: classes16.dex */
    public static final class FlowPublisherC20449a<T> implements Flow.Publisher<T> {

        /* renamed from: a */
        public final Publisher<? extends T> f115829a;

        public FlowPublisherC20449a(Publisher<? extends T> publisher) {
            this.f115829a = publisher;
        }

        @Override // java.util.concurrent.Flow.Publisher
        public void subscribe(Flow.Subscriber<? super T> subscriber) {
            this.f115829a.subscribe(subscriber == null ? null : new C20455g(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$b */
    /* loaded from: classes16.dex */
    public static final class FlowProcessorC20450b<T, U> implements Flow.Processor<T, U> {

        /* renamed from: a */
        public final Processor<? super T, ? extends U> f115830a;

        public FlowProcessorC20450b(Processor<? super T, ? extends U> processor) {
            this.f115830a = processor;
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onComplete() {
            this.f115830a.onComplete();
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onError(Throwable th) {
            this.f115830a.onError(th);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onNext(T t) {
            this.f115830a.onNext(t);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onSubscribe(Flow.Subscription subscription) {
            this.f115830a.onSubscribe(subscription == null ? null : new C20456h(subscription));
        }

        @Override // java.util.concurrent.Flow.Publisher
        public void subscribe(Flow.Subscriber<? super U> subscriber) {
            this.f115830a.subscribe(subscriber == null ? null : new C20455g(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$c */
    /* loaded from: classes16.dex */
    public static final class FlowSubscriberC20451c<T> implements Flow.Subscriber<T> {

        /* renamed from: a */
        public final Subscriber<? super T> f115831a;

        public FlowSubscriberC20451c(Subscriber<? super T> subscriber) {
            this.f115831a = subscriber;
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onComplete() {
            this.f115831a.onComplete();
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onError(Throwable th) {
            this.f115831a.onError(th);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onNext(T t) {
            this.f115831a.onNext(t);
        }

        @Override // java.util.concurrent.Flow.Subscriber
        public void onSubscribe(Flow.Subscription subscription) {
            this.f115831a.onSubscribe(subscription == null ? null : new C20456h(subscription));
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$d */
    /* loaded from: classes16.dex */
    public static final class FlowSubscriptionC20452d implements Flow.Subscription {

        /* renamed from: a */
        public final Subscription f115832a;

        public FlowSubscriptionC20452d(Subscription subscription) {
            this.f115832a = subscription;
        }

        @Override // java.util.concurrent.Flow.Subscription
        public void cancel() {
            this.f115832a.cancel();
        }

        @Override // java.util.concurrent.Flow.Subscription
        public void request(long j) {
            this.f115832a.request(j);
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$e */
    /* loaded from: classes16.dex */
    public static final class C20453e<T> implements Publisher<T> {

        /* renamed from: e */
        public final Flow.Publisher<? extends T> f115833e;

        public C20453e(Flow.Publisher<? extends T> publisher) {
            this.f115833e = publisher;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            this.f115833e.subscribe(subscriber == null ? null : new FlowSubscriberC20451c(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$f */
    /* loaded from: classes16.dex */
    public static final class C20454f<T, U> implements Processor<T, U> {

        /* renamed from: e */
        public final Flow.Processor<? super T, ? extends U> f115834e;

        public C20454f(Flow.Processor<? super T, ? extends U> processor) {
            this.f115834e = processor;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f115834e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f115834e.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f115834e.onNext(t);
        }

        @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f115834e.onSubscribe(subscription == null ? null : new FlowSubscriptionC20452d(subscription));
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super U> subscriber) {
            this.f115834e.subscribe(subscriber == null ? null : new FlowSubscriberC20451c(subscriber));
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$g */
    /* loaded from: classes16.dex */
    public static final class C20455g<T> implements Subscriber<T> {

        /* renamed from: e */
        public final Flow.Subscriber<? super T> f115835e;

        public C20455g(Flow.Subscriber<? super T> subscriber) {
            this.f115835e = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f115835e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f115835e.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f115835e.onNext(t);
        }

        @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f115835e.onSubscribe(subscription == null ? null : new FlowSubscriptionC20452d(subscription));
        }
    }

    /* renamed from: org.reactivestreams.FlowAdapters$h */
    /* loaded from: classes16.dex */
    public static final class C20456h implements Subscription {

        /* renamed from: e */
        public final Flow.Subscription f115836e;

        public C20456h(Flow.Subscription subscription) {
            this.f115836e = subscription;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f115836e.cancel();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f115836e.request(j);
        }
    }

    public FlowAdapters() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Flow.Processor<T, U> toFlowProcessor(Processor<? super T, ? extends U> processor) {
        Objects.requireNonNull(processor, "reactiveStreamsProcessor");
        return processor instanceof C20454f ? ((C20454f) processor).f115834e : rng.m56989a(processor) ? sng.m57186a(processor) : new FlowProcessorC20450b(processor);
    }

    public static <T> Flow.Publisher<T> toFlowPublisher(Publisher<? extends T> publisher) {
        Objects.requireNonNull(publisher, "reactiveStreamsPublisher");
        return publisher instanceof C20453e ? ((C20453e) publisher).f115833e : vng.m57850a(publisher) ? wng.m58111a(publisher) : new FlowPublisherC20449a(publisher);
    }

    public static <T> Flow.Subscriber<T> toFlowSubscriber(Subscriber<T> subscriber) {
        Objects.requireNonNull(subscriber, "reactiveStreamsSubscriber");
        return subscriber instanceof C20455g ? ((C20455g) subscriber).f115835e : tng.m57416a(subscriber) ? ung.m57648a(subscriber) : new FlowSubscriberC20451c(subscriber);
    }

    public static <T, U> Processor<T, U> toProcessor(Flow.Processor<? super T, ? extends U> processor) {
        Objects.requireNonNull(processor, "flowProcessor");
        return processor instanceof FlowProcessorC20450b ? ((FlowProcessorC20450b) processor).f115830a : processor instanceof Processor ? (Processor) processor : new C20454f(processor);
    }

    public static <T> Publisher<T> toPublisher(Flow.Publisher<? extends T> publisher) {
        Objects.requireNonNull(publisher, "flowPublisher");
        return publisher instanceof FlowPublisherC20449a ? ((FlowPublisherC20449a) publisher).f115829a : publisher instanceof Publisher ? (Publisher) publisher : new C20453e(publisher);
    }

    public static <T> Subscriber<T> toSubscriber(Flow.Subscriber<T> subscriber) {
        Objects.requireNonNull(subscriber, "flowSubscriber");
        return subscriber instanceof FlowSubscriberC20451c ? ((FlowSubscriberC20451c) subscriber).f115831a : subscriber instanceof Subscriber ? (Subscriber) subscriber : new C20455g(subscriber);
    }
}
