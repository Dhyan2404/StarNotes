package org.mortbay.thread;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class Timeout {

    /* renamed from: a */
    public Object f115278a;

    /* renamed from: b */
    public long f115279b;

    /* renamed from: c */
    public volatile long f115280c = System.currentTimeMillis();

    /* renamed from: d */
    public Task f115281d;

    /* loaded from: classes13.dex */
    public static class Task {

        /* renamed from: g */
        public Timeout f115284g;

        /* renamed from: h */
        public long f115285h;

        /* renamed from: i */
        public long f115286i = 0;

        /* renamed from: j */
        public boolean f115287j = false;

        /* renamed from: f */
        public Task f115283f = this;

        /* renamed from: e */
        public Task f115282e = this;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public void m71650d() {
            Task task = this.f115282e;
            task.f115283f = this.f115283f;
            this.f115283f.f115282e = task;
            this.f115283f = this;
            this.f115282e = this;
            this.f115287j = false;
        }

        /* renamed from: c */
        public final void m71651c(Task task) {
            Task task2 = this.f115282e;
            task2.f115283f = task;
            this.f115282e = task;
            task.f115282e = task2;
            this.f115282e.f115283f = this;
        }

        public void cancel() {
            Timeout timeout = this.f115284g;
            if (timeout != null) {
                synchronized (timeout.f115278a) {
                    m71650d();
                    this.f115286i = 0L;
                }
            }
        }

        public void expire() {
        }

        public void expired() {
        }

        public long getAge() {
            Timeout timeout = this.f115284g;
            if (timeout != null) {
                long j = timeout.f115280c;
                if (j != 0) {
                    long j2 = this.f115286i;
                    if (j2 != 0) {
                        return j - j2;
                    }
                }
            }
            return 0L;
        }

        public long getTimestamp() {
            return this.f115286i;
        }

        public boolean isExpired() {
            return this.f115287j;
        }

        public boolean isScheduled() {
            return this.f115282e != this;
        }

        public void reschedule() {
            Timeout timeout = this.f115284g;
            if (timeout != null) {
                timeout.schedule(this, this.f115285h);
            }
        }

        public void schedule(Timeout timeout) {
            timeout.schedule(this);
        }

        public void schedule(Timeout timeout, long j) {
            timeout.schedule(this, j);
        }
    }

    public Timeout() {
        Task task = new Task();
        this.f115281d = task;
        this.f115278a = new Object();
        task.f115284g = this;
    }

    public void cancelAll() {
        synchronized (this.f115278a) {
            Task task = this.f115281d;
            task.f115283f = task;
            task.f115282e = task;
        }
    }

    public Task expired() {
        long j = this.f115280c;
        synchronized (this.f115278a) {
            long j2 = j - this.f115279b;
            Task task = this.f115281d;
            Task task2 = task.f115282e;
            if (task2 == task) {
                return null;
            }
            if (task2.f115286i > j2) {
                return null;
            }
            task2.m71650d();
            task2.f115287j = true;
            return task2;
        }
    }

    public long getDuration() {
        return this.f115279b;
    }

    public long getNow() {
        return this.f115280c;
    }

    public long getTimeToNext() {
        synchronized (this.f115278a) {
            Task task = this.f115281d;
            Task task2 = task.f115282e;
            if (task2 == task) {
                return -1L;
            }
            long j = (this.f115279b + task2.f115286i) - this.f115280c;
            if (j < 0) {
                j = 0;
            }
            return j;
        }
    }

    public boolean isEmpty() {
        boolean z;
        synchronized (this.f115278a) {
            Task task = this.f115281d;
            z = task.f115282e == task;
        }
        return z;
    }

    public void schedule(Task task) {
        schedule(task, 0L);
    }

    public void setDuration(long j) {
        this.f115279b = j;
    }

    public long setNow() {
        this.f115280c = System.currentTimeMillis();
        return this.f115280c;
    }

    public void tick() {
        Task task;
        long j = this.f115280c - this.f115279b;
        while (true) {
            try {
                synchronized (this.f115278a) {
                    Task task2 = this.f115281d;
                    task = task2.f115282e;
                    if (task != task2 && task.f115286i <= j) {
                        task.m71650d();
                        task.f115287j = true;
                        task.expire();
                    }
                    return;
                }
                task.expired();
            } catch (Throwable th) {
                Log.warn(Log.EXCEPTION, th);
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        for (Task task = this.f115281d.f115282e; task != this.f115281d; task = task.f115282e) {
            stringBuffer.append(XMLStreamWriterImpl.END_COMMENT);
            stringBuffer.append(task);
        }
        return stringBuffer.toString();
    }

    public void schedule(Task task, long j) {
        synchronized (this.f115278a) {
            if (task.f115286i != 0) {
                task.m71650d();
                task.f115286i = 0L;
            }
            task.f115284g = this;
            task.f115287j = false;
            task.f115285h = j;
            task.f115286i = this.f115280c + j;
            Task task2 = this.f115281d.f115283f;
            while (task2 != this.f115281d && task2.f115286i > task.f115286i) {
                task2 = task2.f115283f;
            }
            task2.m71651c(task);
        }
    }

    public void setNow(long j) {
        this.f115280c = j;
    }

    public Timeout(Object obj) {
        Task task = new Task();
        this.f115281d = task;
        this.f115278a = obj;
        task.f115284g = this;
    }

    public void tick(long j) {
        this.f115280c = j;
        tick();
    }
}
