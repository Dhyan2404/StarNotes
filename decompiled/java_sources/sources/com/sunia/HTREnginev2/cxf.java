package com.sunia.HTREnginev2;

import androidx.annotation.GuardedBy;
import com.google.firebase.components.Preconditions;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes6.dex */
public class cxf implements Subscriber, Publisher {

    /* renamed from: a */
    @GuardedBy("this")
    public final Map<Class<?>, ConcurrentHashMap<EventHandler<Object>, Executor>> f67285a = new HashMap();

    /* renamed from: b */
    @GuardedBy("this")
    public Queue<Event<?>> f67286b = new ArrayDeque();

    /* renamed from: c */
    public final Executor f67287c;

    public cxf(Executor executor) {
        this.f67287c = executor;
    }

    /* renamed from: d */
    public static /* synthetic */ void m53534d(Map.Entry entry, Event event) {
        ((EventHandler) entry.getKey()).handle(event);
    }

    /* renamed from: b */
    public void m53535b() {
        Queue<Event<?>> queue;
        synchronized (this) {
            queue = this.f67286b;
            if (queue != null) {
                this.f67286b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            Iterator<Event<?>> it2 = queue.iterator();
            while (it2.hasNext()) {
                publish(it2.next());
            }
        }
    }

    /* renamed from: c */
    public final synchronized Set<Map.Entry<EventHandler<Object>, Executor>> m53536c(Event<?> event) {
        ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.f67285a.get(event.getType());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    @Override // com.google.firebase.events.Publisher
    public void publish(final Event<?> event) {
        Preconditions.checkNotNull(event);
        synchronized (this) {
            Queue<Event<?>> queue = this.f67286b;
            if (queue != null) {
                queue.add(event);
                return;
            }
            for (final Map.Entry<EventHandler<Object>, Executor> entry : m53536c(event)) {
                entry.getValue().execute(new Runnable() { // from class: com.sunia.HTREnginev2.bxf
                    @Override // java.lang.Runnable
                    public final void run() {
                        cxf.m53534d(entry, event);
                    }
                });
            }
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public synchronized <T> void subscribe(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(eventHandler);
        Preconditions.checkNotNull(executor);
        if (!this.f67285a.containsKey(cls)) {
            this.f67285a.put(cls, new ConcurrentHashMap<>());
        }
        this.f67285a.get(cls).put(eventHandler, executor);
    }

    @Override // com.google.firebase.events.Subscriber
    public synchronized <T> void unsubscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(eventHandler);
        if (this.f67285a.containsKey(cls)) {
            ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap = this.f67285a.get(cls);
            concurrentHashMap.remove(eventHandler);
            if (concurrentHashMap.isEmpty()) {
                this.f67285a.remove(cls);
            }
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        subscribe(cls, this.f67287c, eventHandler);
    }
}
