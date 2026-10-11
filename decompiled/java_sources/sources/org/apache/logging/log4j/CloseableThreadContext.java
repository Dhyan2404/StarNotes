package org.apache.logging.log4j;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes12.dex */
public class CloseableThreadContext {

    /* loaded from: classes12.dex */
    public static class Instance implements AutoCloseable {

        /* renamed from: e */
        public int f111182e;

        /* renamed from: f */
        public final Map<String, String> f111183f;

        @Override // java.lang.AutoCloseable
        public void close() {
            m68614j();
            m68613f();
        }

        /* renamed from: f */
        public final void m68613f() {
            Iterator<Map.Entry<String, String>> it2 = this.f111183f.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, String> next = it2.next();
                String key = next.getKey();
                String value = next.getValue();
                if (value == null) {
                    ThreadContext.remove(key);
                } else {
                    ThreadContext.put(key, value);
                }
                it2.remove();
            }
        }

        /* renamed from: j */
        public final void m68614j() {
            for (int i = 0; i < this.f111182e; i++) {
                ThreadContext.pop();
            }
            this.f111182e = 0;
        }

        public Instance push(final String message) {
            ThreadContext.push(message);
            this.f111182e++;
            return this;
        }

        public Instance pushAll(final List<String> messages) {
            Iterator<String> it2 = messages.iterator();
            while (it2.hasNext()) {
                push(it2.next());
            }
            return this;
        }

        public Instance put(final String key, final String value) {
            if (!this.f111183f.containsKey(key)) {
                this.f111183f.put(key, ThreadContext.get(key));
            }
            ThreadContext.put(key, value);
            return this;
        }

        public Instance putAll(final Map<String, String> values) {
            Map<String, String> context = ThreadContext.getContext();
            ThreadContext.putAll(values);
            for (String str : values.keySet()) {
                if (!this.f111183f.containsKey(str)) {
                    this.f111183f.put(str, context.get(str));
                }
            }
            return this;
        }

        public Instance() {
            this.f111182e = 0;
            this.f111183f = new HashMap();
        }

        public Instance push(final String message, final Object[] args) {
            ThreadContext.push(message, args);
            this.f111182e++;
            return this;
        }
    }

    public static Instance push(final String message) {
        return new Instance().push(message);
    }

    public static Instance pushAll(final List<String> messages) {
        return new Instance().pushAll(messages);
    }

    public static Instance put(final String key, final String value) {
        return new Instance().put(key, value);
    }

    public static Instance putAll(final Map<String, String> values) {
        return new Instance().putAll(values);
    }

    public static Instance push(final String message, final Object... args) {
        return new Instance().push(message, args);
    }
}
