package org.mortbay.io.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.io.Connection;
import org.mortbay.io.EndPoint;
import org.mortbay.log.Log;
import org.mortbay.thread.Timeout;

/* loaded from: classes13.dex */
public abstract class SelectorManager extends AbstractLifeCycle {

    /* renamed from: l */
    public static final int f114491l = Integer.getInteger("org.mortbay.io.nio.JVMBUG_THRESHHOLD", 512).intValue();

    /* renamed from: m */
    public static final int f114492m = Integer.getInteger("org.mortbay.io.nio.MONITOR_PERIOD", 1000).intValue();

    /* renamed from: n */
    public static final int f114493n = Integer.getInteger("org.mortbay.io.nio.MAX_SELECTS", 15000).intValue();

    /* renamed from: o */
    public static final int f114494o = Integer.getInteger("org.mortbay.io.nio.BUSY_PAUSE", 50).intValue();

    /* renamed from: p */
    public static final int f114495p = Integer.getInteger("org.mortbay.io.nio.BUSY_KEY", -1).intValue();

    /* renamed from: f */
    public long f114497f;

    /* renamed from: g */
    public long f114498g;

    /* renamed from: h */
    public long f114499h;

    /* renamed from: i */
    public transient SelectSet[] f114500i;

    /* renamed from: k */
    public volatile int f114502k;

    /* renamed from: e */
    public boolean f114496e = true;

    /* renamed from: j */
    public int f114501j = 1;

    /* renamed from: org.mortbay.io.nio.SelectorManager$a */
    /* loaded from: classes13.dex */
    public static class C20373a {

        /* renamed from: a */
        public final SelectableChannel f114524a;

        /* renamed from: b */
        public final Object f114525b;

        public C20373a(SelectableChannel selectableChannel, Object obj) {
            this.f114524a = selectableChannel;
            this.f114525b = obj;
        }
    }

    /* renamed from: org.mortbay.io.nio.SelectorManager$b */
    /* loaded from: classes13.dex */
    public interface InterfaceC20374b {
        void run();
    }

    public abstract SocketChannel acceptChannel(SelectionKey selectionKey) throws IOException;

    public void connectionFailed(SocketChannel socketChannel, Throwable th, Object obj) {
        Log.warn(th);
    }

    public abstract boolean dispatch(Runnable runnable) throws IOException;

    public void doSelect(int i) throws IOException {
        SelectSet selectSet;
        SelectSet[] selectSetArr = this.f114500i;
        if (selectSetArr == null || selectSetArr.length <= i || (selectSet = selectSetArr[i]) == null) {
            return;
        }
        selectSet.doSelect();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this.f114500i = new SelectSet[this.f114501j];
        int i = 0;
        while (true) {
            SelectSet[] selectSetArr = this.f114500i;
            if (i >= selectSetArr.length) {
                super.doStart();
                return;
            } else {
                selectSetArr[i] = new SelectSet(i);
                i++;
            }
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws Exception {
        SelectSet[] selectSetArr = this.f114500i;
        this.f114500i = null;
        if (selectSetArr != null) {
            for (SelectSet selectSet : selectSetArr) {
                if (selectSet != null) {
                    selectSet.m71475b();
                }
            }
        }
        super.doStop();
    }

    public abstract void endPointClosed(SelectChannelEndPoint selectChannelEndPoint);

    public abstract void endPointOpened(SelectChannelEndPoint selectChannelEndPoint);

    public long getLowResourcesConnections() {
        return this.f114498g * this.f114501j;
    }

    public long getLowResourcesMaxIdleTime() {
        return this.f114499h;
    }

    public long getMaxIdleTime() {
        return this.f114497f;
    }

    public int getSelectSets() {
        return this.f114501j;
    }

    public boolean isDelaySelectKeyUpdate() {
        return this.f114496e;
    }

    public abstract Connection newConnection(SocketChannel socketChannel, SelectChannelEndPoint selectChannelEndPoint);

    public abstract SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectSet selectSet, SelectionKey selectionKey) throws IOException;

    public void register(SocketChannel socketChannel, Object obj) throws IOException {
        int i = this.f114502k;
        this.f114502k = i + 1;
        int i2 = i % this.f114501j;
        SelectSet[] selectSetArr = this.f114500i;
        if (selectSetArr != null) {
            SelectSet selectSet = selectSetArr[i2];
            selectSet.addChange(socketChannel, obj);
            selectSet.wakeup();
        }
    }

    public void setDelaySelectKeyUpdate(boolean z) {
        this.f114496e = z;
    }

    public void setLowResourcesConnections(long j) {
        int i = this.f114501j;
        this.f114498g = ((j + i) - 1) / i;
    }

    public void setLowResourcesMaxIdleTime(long j) {
        this.f114499h = j;
    }

    public void setMaxIdleTime(long j) {
        this.f114497f = j;
    }

    public void setSelectSets(int i) {
        long j = this.f114498g * this.f114501j;
        this.f114501j = i;
        this.f114498g = j / i;
    }

    /* loaded from: classes13.dex */
    public class SelectSet {

        /* renamed from: a */
        public transient int f114503a;

        /* renamed from: b */
        public transient List[] f114504b;

        /* renamed from: c */
        public transient Timeout f114505c;

        /* renamed from: d */
        public transient int f114506d;

        /* renamed from: e */
        public transient Timeout f114507e;

        /* renamed from: f */
        public transient Selector f114508f;

        /* renamed from: g */
        public transient int f114509g;

        /* renamed from: h */
        public volatile boolean f114510h;

        /* renamed from: i */
        public transient int f114511i;

        /* renamed from: j */
        public int f114512j;

        /* renamed from: k */
        public long f114513k;

        /* renamed from: l */
        public long f114514l;

        /* renamed from: m */
        public boolean f114515m;

        /* renamed from: n */
        public SelectionKey f114516n;

        /* renamed from: o */
        public int f114517o;

        /* renamed from: p */
        public long f114518p;

        /* renamed from: q */
        public int f114519q;

        /* renamed from: r */
        public int f114520r;

        /* renamed from: s */
        public int f114521s;

        /* renamed from: t */
        public int f114522t;

        public SelectSet(int i) throws Exception {
            this.f114509g = i;
            Timeout timeout = new Timeout(this);
            this.f114505c = timeout;
            timeout.setDuration(SelectorManager.this.getMaxIdleTime());
            Timeout timeout2 = new Timeout(this);
            this.f114507e = timeout2;
            timeout2.setDuration(0L);
            this.f114508f = Selector.open();
            this.f114504b = new ArrayList[]{new ArrayList(), new ArrayList()};
            this.f114503a = 0;
            long currentTimeMillis = System.currentTimeMillis();
            this.f114513k = currentTimeMillis;
            this.f114514l = currentTimeMillis + SelectorManager.f114492m;
            this.f114518p = this.f114513k + 60000;
        }

        /* renamed from: a */
        public Selector m71474a() {
            return this.f114508f;
        }

        public void addChange(Object obj) {
            synchronized (this.f114504b) {
                this.f114504b[this.f114503a].add(obj);
            }
        }

        /* renamed from: b */
        public void m71475b() throws Exception {
            boolean z = true;
            while (z) {
                wakeup();
                z = this.f114510h;
            }
            Iterator it2 = new ArrayList(this.f114508f.keys()).iterator();
            while (it2.hasNext()) {
                SelectionKey selectionKey = (SelectionKey) it2.next();
                if (selectionKey != null) {
                    Object attachment = selectionKey.attachment();
                    if (attachment instanceof EndPoint) {
                        try {
                            ((EndPoint) attachment).close();
                        } catch (IOException e) {
                            Log.ignore(e);
                        }
                    }
                }
            }
            synchronized (this) {
                boolean z2 = this.f114510h;
                while (z2) {
                    wakeup();
                    z2 = this.f114510h;
                }
                this.f114505c.cancelAll();
                this.f114507e.cancelAll();
                try {
                    Selector selector = this.f114508f;
                    if (selector != null) {
                        selector.close();
                    }
                } catch (IOException e2) {
                    Log.ignore(e2);
                }
                this.f114508f = null;
            }
        }

        public void cancelIdle(Timeout.Task task) {
            synchronized (this) {
                task.cancel();
            }
        }

        public void doSelect() throws IOException {
            Throwable th;
            boolean z;
            ClosedSelectorException closedSelectorException;
            List list;
            Selector selector;
            long timeToNext;
            long timeToNext2;
            long j;
            long j2;
            try {
                try {
                    try {
                        try {
                            synchronized (this.f114504b) {
                                List[] listArr = this.f114504b;
                                int i = this.f114503a;
                                list = listArr[i];
                                this.f114503a = i == 0 ? 1 : 0;
                                this.f114510h = true;
                                selector = this.f114508f;
                            }
                            for (int i2 = 0; i2 < list.size(); i2++) {
                                try {
                                    try {
                                        try {
                                            Object obj = list.get(i2);
                                            if (obj instanceof EndPoint) {
                                                ((SelectChannelEndPoint) obj).m71463b();
                                            } else if (obj instanceof Runnable) {
                                                SelectorManager.this.dispatch((Runnable) obj);
                                            } else if (obj instanceof C20373a) {
                                                C20373a c20373a = (C20373a) obj;
                                                SelectableChannel selectableChannel = c20373a.f114524a;
                                                Object obj2 = c20373a.f114525b;
                                                if ((selectableChannel instanceof SocketChannel) && ((SocketChannel) selectableChannel).isConnected()) {
                                                    SelectionKey register = selectableChannel.register(selector, 1, obj2);
                                                    SelectChannelEndPoint newEndPoint = SelectorManager.this.newEndPoint((SocketChannel) selectableChannel, this, register);
                                                    register.attach(newEndPoint);
                                                    newEndPoint.m71462a();
                                                } else if (selectableChannel.isOpen()) {
                                                    selectableChannel.register(selector, 8, obj2);
                                                }
                                            } else if (obj instanceof SocketChannel) {
                                                SocketChannel socketChannel = (SocketChannel) obj;
                                                if (socketChannel.isConnected()) {
                                                    SelectionKey register2 = socketChannel.register(selector, 1, null);
                                                    SelectChannelEndPoint newEndPoint2 = SelectorManager.this.newEndPoint(socketChannel, this, register2);
                                                    register2.attach(newEndPoint2);
                                                    newEndPoint2.m71462a();
                                                } else if (socketChannel.isOpen()) {
                                                    socketChannel.register(selector, 8, null);
                                                }
                                            } else if (!(obj instanceof ServerSocketChannel)) {
                                                if (!(obj instanceof InterfaceC20374b)) {
                                                    throw new IllegalArgumentException(obj.toString());
                                                    break;
                                                }
                                                ((InterfaceC20374b) obj).run();
                                            } else {
                                                ((ServerSocketChannel) obj).register(m71474a(), 16);
                                            }
                                        } catch (Exception e) {
                                            if (SelectorManager.this.isRunning()) {
                                                Log.warn(e);
                                            } else {
                                                Log.debug(e);
                                            }
                                        }
                                    } catch (Error e2) {
                                        if (SelectorManager.this.isRunning()) {
                                            Log.warn(e2);
                                        } else {
                                            Log.debug(e2);
                                        }
                                    }
                                } catch (Throwable th2) {
                                    list.clear();
                                    throw th2;
                                }
                            }
                            list.clear();
                            long currentTimeMillis = System.currentTimeMillis();
                            synchronized (this) {
                                this.f114505c.setNow(currentTimeMillis);
                                this.f114507e.setNow(currentTimeMillis);
                                if (SelectorManager.this.f114498g <= 0 || selector.keys().size() <= SelectorManager.this.f114498g) {
                                    this.f114505c.setDuration(SelectorManager.this.f114497f);
                                } else {
                                    this.f114505c.setDuration(SelectorManager.this.f114499h);
                                }
                                timeToNext = this.f114505c.getTimeToNext();
                                timeToNext2 = this.f114507e.getTimeToNext();
                            }
                            if (timeToNext < 0 || 1000 <= timeToNext) {
                                timeToNext = 1000;
                            }
                            if (timeToNext <= 0 || timeToNext2 < 0 || timeToNext <= timeToNext2) {
                                timeToNext2 = timeToNext;
                            }
                            if (timeToNext2 > 2) {
                                if (this.f114515m) {
                                    try {
                                        Thread.sleep(SelectorManager.f114494o);
                                    } catch (InterruptedException e3) {
                                        Log.ignore(e3);
                                    }
                                }
                                int select = selector.select(timeToNext2);
                                long currentTimeMillis2 = System.currentTimeMillis();
                                this.f114505c.setNow(currentTimeMillis2);
                                this.f114507e.setNow(currentTimeMillis2);
                                this.f114512j = this.f114512j + 1;
                                if (currentTimeMillis2 > this.f114514l) {
                                    j2 = currentTimeMillis;
                                    int i3 = (int) ((r10 * SelectorManager.f114492m) / (currentTimeMillis2 - this.f114513k));
                                    this.f114512j = i3;
                                    boolean z2 = i3 > SelectorManager.f114493n;
                                    this.f114515m = z2;
                                    if (z2) {
                                        this.f114519q++;
                                    }
                                    this.f114512j = 0;
                                    this.f114511i = 0;
                                    this.f114513k = currentTimeMillis2;
                                    this.f114514l = SelectorManager.f114492m + currentTimeMillis2;
                                } else {
                                    j2 = currentTimeMillis;
                                }
                                if (currentTimeMillis2 > this.f114518p) {
                                    if (this.f114519q > 0) {
                                        StringBuffer stringBuffer = new StringBuffer();
                                        stringBuffer.append(this);
                                        stringBuffer.append(" Busy selector - injecting delay ");
                                        stringBuffer.append(this.f114519q);
                                        stringBuffer.append(" times");
                                        Log.info(stringBuffer.toString());
                                    }
                                    if (this.f114522t > 0) {
                                        StringBuffer stringBuffer2 = new StringBuffer();
                                        stringBuffer2.append(this);
                                        stringBuffer2.append(" JVM BUG(s) - injecting delay");
                                        stringBuffer2.append(this.f114522t);
                                        stringBuffer2.append(" times");
                                        Log.info(stringBuffer2.toString());
                                    }
                                    if (this.f114521s > 0) {
                                        StringBuffer stringBuffer3 = new StringBuffer();
                                        stringBuffer3.append(this);
                                        stringBuffer3.append(" JVM BUG(s) - recreating selector ");
                                        stringBuffer3.append(this.f114521s);
                                        stringBuffer3.append(" times, canceled keys ");
                                        stringBuffer3.append(this.f114520r);
                                        stringBuffer3.append(" times");
                                        Log.info(stringBuffer3.toString());
                                    } else if (Log.isDebugEnabled() && this.f114520r > 0) {
                                        StringBuffer stringBuffer4 = new StringBuffer();
                                        stringBuffer4.append(this);
                                        stringBuffer4.append(" JVM BUG(s) - canceled keys ");
                                        stringBuffer4.append(this.f114520r);
                                        stringBuffer4.append(" times");
                                        Log.info(stringBuffer4.toString());
                                    }
                                    this.f114519q = 0;
                                    this.f114522t = 0;
                                    this.f114521s = 0;
                                    this.f114520r = 0;
                                    this.f114518p = 60000 + currentTimeMillis2;
                                }
                                if (select == 0 && timeToNext2 > 10 && currentTimeMillis2 - j2 < timeToNext2 / 2) {
                                    int i4 = this.f114511i + 1;
                                    this.f114511i = i4;
                                    if (i4 > SelectorManager.f114491l) {
                                        try {
                                            if (this.f114511i == SelectorManager.f114491l + 1) {
                                                this.f114522t++;
                                            }
                                            Thread.sleep(SelectorManager.f114494o);
                                        } catch (InterruptedException e4) {
                                            Log.ignore(e4);
                                        }
                                    } else {
                                        if (this.f114511i == SelectorManager.f114491l) {
                                            synchronized (this) {
                                                this.f114521s++;
                                                Selector open = Selector.open();
                                                for (SelectionKey selectionKey : this.f114508f.keys()) {
                                                    if (selectionKey.isValid() && selectionKey.interestOps() != 0) {
                                                        SelectableChannel channel = selectionKey.channel();
                                                        Object attachment = selectionKey.attachment();
                                                        if (attachment == null) {
                                                            addChange(channel);
                                                        } else {
                                                            addChange(channel, attachment);
                                                        }
                                                    }
                                                }
                                                Selector selector2 = this.f114508f;
                                                this.f114508f = open;
                                                try {
                                                    selector2.close();
                                                } catch (Exception e5) {
                                                    Log.warn(e5);
                                                }
                                            }
                                            this.f114510h = false;
                                            return;
                                        }
                                        if (this.f114511i % 32 == 31) {
                                            int i5 = 0;
                                            for (SelectionKey selectionKey2 : selector.keys()) {
                                                if (selectionKey2.isValid() && selectionKey2.interestOps() == 0) {
                                                    selectionKey2.cancel();
                                                    i5++;
                                                }
                                            }
                                            if (i5 > 0) {
                                                this.f114520r++;
                                            }
                                            this.f114510h = false;
                                            return;
                                        }
                                    }
                                } else if (SelectorManager.f114495p > 0 && select == 1 && this.f114512j > SelectorManager.f114493n) {
                                    SelectionKey next = selector.selectedKeys().iterator().next();
                                    if (next == this.f114516n) {
                                        int i6 = this.f114517o + 1;
                                        this.f114517o = i6;
                                        if (i6 > SelectorManager.f114495p && !(next.channel() instanceof ServerSocketChannel)) {
                                            SelectChannelEndPoint selectChannelEndPoint = (SelectChannelEndPoint) next.attachment();
                                            StringBuffer stringBuffer5 = new StringBuffer();
                                            stringBuffer5.append("Busy Key ");
                                            stringBuffer5.append(next.channel());
                                            stringBuffer5.append(" ");
                                            stringBuffer5.append(selectChannelEndPoint);
                                            Log.warn(stringBuffer5.toString());
                                            next.cancel();
                                            if (selectChannelEndPoint != null) {
                                                SelectorManager.this.dispatch(new RunnableC20375a(this, selectChannelEndPoint));
                                            }
                                        }
                                    } else {
                                        this.f114517o = 0;
                                    }
                                    this.f114516n = next;
                                }
                                j = currentTimeMillis2;
                            } else {
                                selector.selectNow();
                                this.f114512j++;
                                j = currentTimeMillis;
                            }
                        } catch (ClosedSelectorException e6) {
                            closedSelectorException = e6;
                            z = false;
                            try {
                                Log.warn(closedSelectorException);
                                this.f114510h = z;
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                                th = th;
                                this.f114510h = z;
                                throw th;
                            }
                        }
                    } catch (ClosedSelectorException e7) {
                        z = false;
                        closedSelectorException = e7;
                    }
                } catch (CancelledKeyException e8) {
                    try {
                        Log.ignore(e8);
                        z = false;
                    } catch (Throwable th4) {
                        th = th4;
                        z = false;
                        th = th;
                        this.f114510h = z;
                        throw th;
                    }
                }
                if (this.f114508f != null && selector.isOpen()) {
                    for (SelectionKey selectionKey3 : selector.selectedKeys()) {
                        try {
                            if (selectionKey3.isValid()) {
                                Object attachment2 = selectionKey3.attachment();
                                if (attachment2 instanceof SelectChannelEndPoint) {
                                    ((SelectChannelEndPoint) attachment2).m71462a();
                                } else if (selectionKey3.isAcceptable()) {
                                    SocketChannel acceptChannel = SelectorManager.this.acceptChannel(selectionKey3);
                                    if (acceptChannel != null) {
                                        acceptChannel.configureBlocking(false);
                                        int i7 = this.f114506d + 1;
                                        this.f114506d = i7;
                                        int length = i7 % SelectorManager.this.f114500i.length;
                                        this.f114506d = length;
                                        if (length == this.f114509g) {
                                            SelectionKey register3 = acceptChannel.register(SelectorManager.this.f114500i[this.f114506d].m71474a(), 1);
                                            SelectorManager selectorManager = SelectorManager.this;
                                            SelectChannelEndPoint newEndPoint3 = selectorManager.newEndPoint(acceptChannel, selectorManager.f114500i[this.f114506d], register3);
                                            register3.attach(newEndPoint3);
                                            if (newEndPoint3 != null) {
                                                newEndPoint3.m71462a();
                                            }
                                        } else {
                                            SelectorManager.this.f114500i[this.f114506d].addChange(acceptChannel);
                                            SelectorManager.this.f114500i[this.f114506d].wakeup();
                                        }
                                    }
                                } else if (selectionKey3.isConnectable()) {
                                    SocketChannel socketChannel2 = (SocketChannel) selectionKey3.channel();
                                    try {
                                        try {
                                        } catch (Exception e9) {
                                            SelectorManager.this.connectionFailed(socketChannel2, e9, attachment2);
                                        }
                                        if (socketChannel2.finishConnect()) {
                                            selectionKey3.interestOps(1);
                                            SelectChannelEndPoint newEndPoint4 = SelectorManager.this.newEndPoint(socketChannel2, this, selectionKey3);
                                            selectionKey3.attach(newEndPoint4);
                                            newEndPoint4.m71462a();
                                        } else {
                                            selectionKey3.cancel();
                                        }
                                    } catch (Throwable th5) {
                                        selectionKey3.cancel();
                                        throw th5;
                                        break;
                                    }
                                } else {
                                    SelectChannelEndPoint newEndPoint5 = SelectorManager.this.newEndPoint((SocketChannel) selectionKey3.channel(), this, selectionKey3);
                                    selectionKey3.attach(newEndPoint5);
                                    if (selectionKey3.isReadable()) {
                                        newEndPoint5.m71462a();
                                    }
                                }
                            } else {
                                selectionKey3.cancel();
                                SelectChannelEndPoint selectChannelEndPoint2 = (SelectChannelEndPoint) selectionKey3.attachment();
                                if (selectChannelEndPoint2 != null) {
                                    selectChannelEndPoint2.m71463b();
                                }
                            }
                        } catch (CancelledKeyException e10) {
                            Log.ignore(e10);
                        } catch (Exception e11) {
                            if (SelectorManager.this.isRunning()) {
                                Log.warn(e11);
                            } else {
                                Log.ignore(e11);
                            }
                            if (selectionKey3 != null && !(selectionKey3.channel() instanceof ServerSocketChannel) && selectionKey3.isValid()) {
                                selectionKey3.interestOps(0);
                                selectionKey3.cancel();
                            }
                        }
                    }
                    selector.selectedKeys().clear();
                    this.f114505c.tick(j);
                    this.f114507e.tick(j);
                    z = false;
                    this.f114510h = z;
                    return;
                }
                this.f114510h = false;
            } catch (Throwable th6) {
                th = th6;
                z = false;
                this.f114510h = z;
                throw th;
            }
        }

        public SelectorManager getManager() {
            return SelectorManager.this;
        }

        public long getNow() {
            return this.f114505c.getNow();
        }

        public void scheduleIdle(Timeout.Task task) {
            synchronized (this) {
                if (this.f114505c.getDuration() <= 0) {
                    return;
                }
                task.schedule(this.f114505c);
            }
        }

        public void scheduleTimeout(Timeout.Task task, long j) {
            synchronized (this) {
                this.f114507e.schedule(task, j);
            }
        }

        public void wakeup() {
            Selector selector = this.f114508f;
            if (selector != null) {
                selector.wakeup();
            }
        }

        public void addChange(SelectableChannel selectableChannel, Object obj) {
            if (obj == null) {
                addChange(selectableChannel);
            } else if (obj instanceof EndPoint) {
                addChange(obj);
            } else {
                addChange(new C20373a(selectableChannel, obj));
            }
        }
    }

    public void register(ServerSocketChannel serverSocketChannel) throws IOException {
        int i = this.f114502k;
        this.f114502k = i + 1;
        SelectSet selectSet = this.f114500i[i % this.f114501j];
        selectSet.addChange(serverSocketChannel);
        selectSet.wakeup();
    }
}
