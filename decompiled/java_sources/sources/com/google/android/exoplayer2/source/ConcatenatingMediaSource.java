package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.AbstractConcatenatedTimeline;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class ConcatenatingMediaSource extends CompositeMediaSource<C4832e> {

    /* renamed from: J */
    public static final int f25185J = 0;

    /* renamed from: O */
    public static final int f25186O = 1;

    /* renamed from: Q */
    public static final int f25187Q = 2;

    /* renamed from: Z */
    public static final int f25188Z = 3;

    /* renamed from: k0 */
    public static final int f25189k0 = 4;

    /* renamed from: q0 */
    public static final int f25190q0 = 5;

    /* renamed from: t0 */
    public static final MediaItem f25191t0 = new MediaItem.Builder().setUri(Uri.EMPTY).build();

    /* renamed from: o */
    @GuardedBy("this")
    public final List<C4832e> f25192o;

    /* renamed from: p */
    @GuardedBy("this")
    public final Set<C4831d> f25193p;

    /* renamed from: q */
    @Nullable
    @GuardedBy("this")
    public Handler f25194q;

    /* renamed from: r */
    public final List<C4832e> f25195r;

    /* renamed from: s */
    public final IdentityHashMap<MediaPeriod, C4832e> f25196s;

    /* renamed from: t */
    public final Map<Object, C4832e> f25197t;

    /* renamed from: u */
    public final Set<C4832e> f25198u;

    /* renamed from: v */
    public final boolean f25199v;

    /* renamed from: w */
    public final boolean f25200w;

    /* renamed from: x */
    public boolean f25201x;

    /* renamed from: y */
    public Set<C4831d> f25202y;

    /* renamed from: z */
    public ShuffleOrder f25203z;

    /* renamed from: com.google.android.exoplayer2.source.ConcatenatingMediaSource$b */
    /* loaded from: classes5.dex */
    public static final class C4829b extends AbstractConcatenatedTimeline {

        /* renamed from: k */
        public final int f25204k;

        /* renamed from: l */
        public final int f25205l;

        /* renamed from: m */
        public final int[] f25206m;

        /* renamed from: n */
        public final int[] f25207n;

        /* renamed from: o */
        public final Timeline[] f25208o;

        /* renamed from: p */
        public final Object[] f25209p;

        /* renamed from: q */
        public final HashMap<Object, Integer> f25210q;

        public C4829b(Collection<C4832e> collection, ShuffleOrder shuffleOrder, boolean z) {
            super(z, shuffleOrder);
            int size = collection.size();
            this.f25206m = new int[size];
            this.f25207n = new int[size];
            this.f25208o = new Timeline[size];
            this.f25209p = new Object[size];
            this.f25210q = new HashMap<>();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (C4832e c4832e : collection) {
                this.f25208o[i3] = c4832e.f25213a.getTimeline();
                this.f25207n[i3] = i;
                this.f25206m[i3] = i2;
                i += this.f25208o[i3].getWindowCount();
                i2 += this.f25208o[i3].getPeriodCount();
                Object[] objArr = this.f25209p;
                Object obj = c4832e.f25214b;
                objArr[i3] = obj;
                this.f25210q.put(obj, Integer.valueOf(i3));
                i3++;
            }
            this.f25204k = i;
            this.f25205l = i2;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(Object obj) {
            Integer num = this.f25210q.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return Util.binarySearchFloor(this.f25206m, i + 1, false, false);
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return Util.binarySearchFloor(this.f25207n, i + 1, false, false);
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public Object getChildUidByChildIndex(int i) {
            return this.f25209p[i];
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return this.f25206m[i];
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return this.f25207n[i];
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.f25205l;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public Timeline getTimelineByChildIndex(int i) {
            return this.f25208o[i];
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.f25204k;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ConcatenatingMediaSource$c */
    /* loaded from: classes5.dex */
    public static final class C4830c extends BaseMediaSource {
        public C4830c() {
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public MediaItem getMediaItem() {
            return ConcatenatingMediaSource.f25191t0;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public void maybeThrowSourceInfoRefreshError() {
        }

        @Override // com.google.android.exoplayer2.source.BaseMediaSource
        public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public void releasePeriod(MediaPeriod mediaPeriod) {
        }

        @Override // com.google.android.exoplayer2.source.BaseMediaSource
        public void releaseSourceInternal() {
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ConcatenatingMediaSource$d */
    /* loaded from: classes5.dex */
    public static final class C4831d {

        /* renamed from: a */
        public final Handler f25211a;

        /* renamed from: b */
        public final Runnable f25212b;

        public C4831d(Handler handler, Runnable runnable) {
            this.f25211a = handler;
            this.f25212b = runnable;
        }

        /* renamed from: a */
        public void m19625a() {
            this.f25211a.post(this.f25212b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ConcatenatingMediaSource$e */
    /* loaded from: classes5.dex */
    public static final class C4832e {

        /* renamed from: a */
        public final MaskingMediaSource f25213a;

        /* renamed from: d */
        public int f25216d;

        /* renamed from: e */
        public int f25217e;

        /* renamed from: f */
        public boolean f25218f;

        /* renamed from: c */
        public final List<MediaSource.MediaPeriodId> f25215c = new ArrayList();

        /* renamed from: b */
        public final Object f25214b = new Object();

        public C4832e(MediaSource mediaSource, boolean z) {
            this.f25213a = new MaskingMediaSource(mediaSource, z);
        }

        /* renamed from: a */
        public void m19626a(int i, int i2) {
            this.f25216d = i;
            this.f25217e = i2;
            this.f25218f = false;
            this.f25215c.clear();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ConcatenatingMediaSource$f */
    /* loaded from: classes5.dex */
    public static final class C4833f<T> {

        /* renamed from: a */
        public final int f25219a;

        /* renamed from: b */
        public final T f25220b;

        /* renamed from: c */
        @Nullable
        public final C4831d f25221c;

        public C4833f(int i, T t, @Nullable C4831d c4831d) {
            this.f25219a = i;
            this.f25220b = t;
            this.f25221c = c4831d;
        }
    }

    public ConcatenatingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    /* renamed from: m */
    public static Object m19602m(Object obj) {
        return AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(obj);
    }

    /* renamed from: n */
    public static Object m19603n(Object obj) {
        return AbstractConcatenatedTimeline.getChildTimelineUidFromConcatenatedUid(obj);
    }

    /* renamed from: o */
    public static Object m19604o(C4832e c4832e, Object obj) {
        return AbstractConcatenatedTimeline.getConcatenatedUid(c4832e.f25214b, obj);
    }

    /* renamed from: A */
    public final void m19605A() {
        this.f25201x = false;
        Set<C4831d> set = this.f25202y;
        this.f25202y = new HashSet();
        refreshSourceInfo(new C4829b(this.f25195r, this.f25203z, this.f25199v));
        m19614p().obtainMessage(5, set).sendToTarget();
    }

    public synchronized void addMediaSource(MediaSource mediaSource) {
        addMediaSource(this.f25192o.size(), mediaSource);
    }

    public synchronized void addMediaSources(Collection<MediaSource> collection) {
        m19608g(this.f25192o.size(), collection, null, null);
    }

    public synchronized void clear() {
        removeMediaSourceRange(0, getSize());
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        Object m19603n = m19603n(mediaPeriodId.periodUid);
        MediaSource.MediaPeriodId copyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(m19602m(mediaPeriodId.periodUid));
        C4832e c4832e = this.f25197t.get(m19603n);
        if (c4832e == null) {
            c4832e = new C4832e(new C4830c(), this.f25200w);
            c4832e.f25218f = true;
            prepareChildSource(c4832e, c4832e.f25213a);
        }
        m19613l(c4832e);
        c4832e.f25215c.add(copyWithPeriodUid);
        MaskingMediaPeriod createPeriod = c4832e.f25213a.createPeriod(copyWithPeriodUid, allocator, j);
        this.f25196s.put(createPeriod, c4832e);
        m19611j();
        return createPeriod;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void disableInternal() {
        super.disableInternal();
        this.f25198u.clear();
    }

    /* renamed from: e */
    public final void m19606e(int i, C4832e c4832e) {
        if (i > 0) {
            C4832e c4832e2 = this.f25195r.get(i - 1);
            c4832e.m19626a(i, c4832e2.f25217e + c4832e2.f25213a.getTimeline().getWindowCount());
        } else {
            c4832e.m19626a(i, 0);
        }
        m19609h(i, 1, c4832e.f25213a.getTimeline().getWindowCount());
        this.f25195r.add(i, c4832e);
        this.f25197t.put(c4832e.f25214b, c4832e);
        prepareChildSource(c4832e, c4832e.f25213a);
        if (isEnabled() && this.f25196s.isEmpty()) {
            this.f25198u.add(c4832e);
        } else {
            disableChildSource(c4832e);
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void enableInternal() {
    }

    /* renamed from: f */
    public final void m19607f(int i, Collection<C4832e> collection) {
        Iterator<C4832e> it2 = collection.iterator();
        while (it2.hasNext()) {
            m19606e(i, it2.next());
            i++;
        }
    }

    @GuardedBy("this")
    /* renamed from: g */
    public final void m19608g(int i, Collection<MediaSource> collection, @Nullable Handler handler, @Nullable Runnable runnable) {
        Assertions.checkArgument((handler == null) == (runnable == null));
        Handler handler2 = this.f25194q;
        Iterator<MediaSource> it2 = collection.iterator();
        while (it2.hasNext()) {
            Assertions.checkNotNull(it2.next());
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<MediaSource> it3 = collection.iterator();
        while (it3.hasNext()) {
            arrayList.add(new C4832e(it3.next(), this.f25200w));
        }
        this.f25192o.addAll(i, arrayList);
        if (handler2 != null && !collection.isEmpty()) {
            handler2.obtainMessage(0, new C4833f(i, arrayList, m19610i(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public synchronized Timeline getInitialTimeline() {
        return new C4829b(this.f25192o, this.f25203z.getLength() != this.f25192o.size() ? this.f25203z.cloneAndClear().cloneAndInsert(0, this.f25192o.size()) : this.f25203z, this.f25199v);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return f25191t0;
    }

    public synchronized MediaSource getMediaSource(int i) {
        return this.f25192o.get(i).f25213a;
    }

    public synchronized int getSize() {
        return this.f25192o.size();
    }

    /* renamed from: h */
    public final void m19609h(int i, int i2, int i3) {
        while (i < this.f25195r.size()) {
            C4832e c4832e = this.f25195r.get(i);
            c4832e.f25216d += i2;
            c4832e.f25217e += i3;
            i++;
        }
    }

    @Nullable
    @GuardedBy("this")
    /* renamed from: i */
    public final C4831d m19610i(@Nullable Handler handler, @Nullable Runnable runnable) {
        if (handler == null || runnable == null) {
            return null;
        }
        C4831d c4831d = new C4831d(handler, runnable);
        this.f25193p.add(c4831d);
        return c4831d;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public boolean isSingleWindow() {
        return false;
    }

    /* renamed from: j */
    public final void m19611j() {
        Iterator<C4832e> it2 = this.f25198u.iterator();
        while (it2.hasNext()) {
            C4832e next = it2.next();
            if (next.f25215c.isEmpty()) {
                disableChildSource(next);
                it2.remove();
            }
        }
    }

    /* renamed from: k */
    public final synchronized void m19612k(Set<C4831d> set) {
        Iterator<C4831d> it2 = set.iterator();
        while (it2.hasNext()) {
            it2.next().m19625a();
        }
        this.f25193p.removeAll(set);
    }

    /* renamed from: l */
    public final void m19613l(C4832e c4832e) {
        this.f25198u.add(c4832e);
        enableChildSource(c4832e);
    }

    public synchronized void moveMediaSource(int i, int i2) {
        m19618t(i, i2, null, null);
    }

    /* renamed from: p */
    public final Handler m19614p() {
        return (Handler) Assertions.checkNotNull(this.f25194q);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public synchronized void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        this.f25194q = new Handler(new Handler.Callback() { // from class: com.sunia.HTREnginev2.z7e
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m19615q;
                m19615q = ConcatenatingMediaSource.this.m19615q(message);
                return m19615q;
            }
        });
        if (this.f25192o.isEmpty()) {
            m19605A();
        } else {
            this.f25203z = this.f25203z.cloneAndInsert(0, this.f25192o.size());
            m19607f(0, this.f25192o);
            m19621w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public final boolean m19615q(Message message) {
        int i = message.what;
        if (i == 0) {
            C4833f c4833f = (C4833f) Util.castNonNull(message.obj);
            this.f25203z = this.f25203z.cloneAndInsert(c4833f.f25219a, ((Collection) c4833f.f25220b).size());
            m19607f(c4833f.f25219a, (Collection) c4833f.f25220b);
            m19622x(c4833f.f25221c);
        } else if (i == 1) {
            C4833f c4833f2 = (C4833f) Util.castNonNull(message.obj);
            int i2 = c4833f2.f25219a;
            int intValue = ((Integer) c4833f2.f25220b).intValue();
            if (i2 == 0 && intValue == this.f25203z.getLength()) {
                this.f25203z = this.f25203z.cloneAndClear();
            } else {
                this.f25203z = this.f25203z.cloneAndRemove(i2, intValue);
            }
            for (int i3 = intValue - 1; i3 >= i2; i3--) {
                m19619u(i3);
            }
            m19622x(c4833f2.f25221c);
        } else if (i == 2) {
            C4833f c4833f3 = (C4833f) Util.castNonNull(message.obj);
            ShuffleOrder shuffleOrder = this.f25203z;
            int i4 = c4833f3.f25219a;
            ShuffleOrder cloneAndRemove = shuffleOrder.cloneAndRemove(i4, i4 + 1);
            this.f25203z = cloneAndRemove;
            this.f25203z = cloneAndRemove.cloneAndInsert(((Integer) c4833f3.f25220b).intValue(), 1);
            m19617s(c4833f3.f25219a, ((Integer) c4833f3.f25220b).intValue());
            m19622x(c4833f3.f25221c);
        } else if (i == 3) {
            C4833f c4833f4 = (C4833f) Util.castNonNull(message.obj);
            this.f25203z = (ShuffleOrder) c4833f4.f25220b;
            m19622x(c4833f4.f25221c);
        } else if (i == 4) {
            m19605A();
        } else {
            if (i != 5) {
                throw new IllegalStateException();
            }
            m19612k((Set) Util.castNonNull(message.obj));
        }
        return true;
    }

    /* renamed from: r */
    public final void m19616r(C4832e c4832e) {
        if (c4832e.f25218f && c4832e.f25215c.isEmpty()) {
            this.f25198u.remove(c4832e);
            releaseChildSource(c4832e);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        C4832e c4832e = (C4832e) Assertions.checkNotNull(this.f25196s.remove(mediaPeriod));
        c4832e.f25213a.releasePeriod(mediaPeriod);
        c4832e.f25215c.remove(((MaskingMediaPeriod) mediaPeriod).f25262id);
        if (!this.f25196s.isEmpty()) {
            m19611j();
        }
        m19616r(c4832e);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public synchronized void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.f25195r.clear();
        this.f25198u.clear();
        this.f25197t.clear();
        this.f25203z = this.f25203z.cloneAndClear();
        Handler handler = this.f25194q;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f25194q = null;
        }
        this.f25201x = false;
        this.f25202y.clear();
        m19612k(this.f25193p);
    }

    public synchronized MediaSource removeMediaSource(int i) {
        MediaSource mediaSource;
        mediaSource = getMediaSource(i);
        m19620v(i, i + 1, null, null);
        return mediaSource;
    }

    public synchronized void removeMediaSourceRange(int i, int i2) {
        m19620v(i, i2, null, null);
    }

    /* renamed from: s */
    public final void m19617s(int i, int i2) {
        int min = Math.min(i, i2);
        int max = Math.max(i, i2);
        int i3 = this.f25195r.get(min).f25217e;
        List<C4832e> list = this.f25195r;
        list.add(i2, list.remove(i));
        while (min <= max) {
            C4832e c4832e = this.f25195r.get(min);
            c4832e.f25216d = min;
            c4832e.f25217e = i3;
            i3 += c4832e.f25213a.getTimeline().getWindowCount();
            min++;
        }
    }

    public synchronized void setShuffleOrder(ShuffleOrder shuffleOrder) {
        m19623y(shuffleOrder, null, null);
    }

    @GuardedBy("this")
    /* renamed from: t */
    public final void m19618t(int i, int i2, @Nullable Handler handler, @Nullable Runnable runnable) {
        Assertions.checkArgument((handler == null) == (runnable == null));
        Handler handler2 = this.f25194q;
        List<C4832e> list = this.f25192o;
        list.add(i2, list.remove(i));
        if (handler2 != null) {
            handler2.obtainMessage(2, new C4833f(i, Integer.valueOf(i2), m19610i(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    /* renamed from: u */
    public final void m19619u(int i) {
        C4832e remove = this.f25195r.remove(i);
        this.f25197t.remove(remove.f25214b);
        m19609h(i, -1, -remove.f25213a.getTimeline().getWindowCount());
        remove.f25218f = true;
        m19616r(remove);
    }

    @GuardedBy("this")
    /* renamed from: v */
    public final void m19620v(int i, int i2, @Nullable Handler handler, @Nullable Runnable runnable) {
        Assertions.checkArgument((handler == null) == (runnable == null));
        Handler handler2 = this.f25194q;
        Util.removeRange(this.f25192o, i, i2);
        if (handler2 != null) {
            handler2.obtainMessage(1, new C4833f(i, Integer.valueOf(i2), m19610i(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    /* renamed from: w */
    public final void m19621w() {
        m19622x(null);
    }

    /* renamed from: x */
    public final void m19622x(@Nullable C4831d c4831d) {
        if (!this.f25201x) {
            m19614p().obtainMessage(4).sendToTarget();
            this.f25201x = true;
        }
        if (c4831d != null) {
            this.f25202y.add(c4831d);
        }
    }

    @GuardedBy("this")
    /* renamed from: y */
    public final void m19623y(ShuffleOrder shuffleOrder, @Nullable Handler handler, @Nullable Runnable runnable) {
        Assertions.checkArgument((handler == null) == (runnable == null));
        Handler handler2 = this.f25194q;
        if (handler2 != null) {
            int size = getSize();
            if (shuffleOrder.getLength() != size) {
                shuffleOrder = shuffleOrder.cloneAndClear().cloneAndInsert(0, size);
            }
            handler2.obtainMessage(3, new C4833f(0, shuffleOrder, m19610i(handler, runnable))).sendToTarget();
            return;
        }
        if (shuffleOrder.getLength() > 0) {
            shuffleOrder = shuffleOrder.cloneAndClear();
        }
        this.f25203z = shuffleOrder;
        if (runnable == null || handler == null) {
            return;
        }
        handler.post(runnable);
    }

    /* renamed from: z */
    public final void m19624z(C4832e c4832e, Timeline timeline) {
        if (c4832e.f25216d + 1 < this.f25195r.size()) {
            int windowCount = timeline.getWindowCount() - (this.f25195r.get(c4832e.f25216d + 1).f25217e - c4832e.f25217e);
            if (windowCount != 0) {
                m19609h(c4832e.f25216d + 1, 0, windowCount);
            }
        }
        m19621w();
    }

    public ConcatenatingMediaSource(boolean z, MediaSource... mediaSourceArr) {
        this(z, new ShuffleOrder.DefaultShuffleOrder(0), mediaSourceArr);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(C4832e c4832e, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i = 0; i < c4832e.f25215c.size(); i++) {
            if (c4832e.f25215c.get(i).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodUid(m19604o(c4832e, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public int getWindowIndexForChildWindowIndex(C4832e c4832e, int i) {
        return i + c4832e.f25217e;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void m19597b(C4832e c4832e, MediaSource mediaSource, Timeline timeline) {
        m19624z(c4832e, timeline);
    }

    public ConcatenatingMediaSource(boolean z, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        this(z, false, shuffleOrder, mediaSourceArr);
    }

    public synchronized void addMediaSource(MediaSource mediaSource, Handler handler, Runnable runnable) {
        addMediaSource(this.f25192o.size(), mediaSource, handler, runnable);
    }

    public synchronized void clear(Handler handler, Runnable runnable) {
        removeMediaSourceRange(0, getSize(), handler, runnable);
    }

    public synchronized void moveMediaSource(int i, int i2, Handler handler, Runnable runnable) {
        m19618t(i, i2, handler, runnable);
    }

    public synchronized void removeMediaSourceRange(int i, int i2, Handler handler, Runnable runnable) {
        m19620v(i, i2, handler, runnable);
    }

    public synchronized void setShuffleOrder(ShuffleOrder shuffleOrder, Handler handler, Runnable runnable) {
        m19623y(shuffleOrder, handler, runnable);
    }

    public ConcatenatingMediaSource(boolean z, boolean z2, ShuffleOrder shuffleOrder, MediaSource... mediaSourceArr) {
        for (MediaSource mediaSource : mediaSourceArr) {
            Assertions.checkNotNull(mediaSource);
        }
        this.f25203z = shuffleOrder.getLength() > 0 ? shuffleOrder.cloneAndClear() : shuffleOrder;
        this.f25196s = new IdentityHashMap<>();
        this.f25197t = new HashMap();
        this.f25192o = new ArrayList();
        this.f25195r = new ArrayList();
        this.f25202y = new HashSet();
        this.f25193p = new HashSet();
        this.f25198u = new HashSet();
        this.f25199v = z;
        this.f25200w = z2;
        addMediaSources(Arrays.asList(mediaSourceArr));
    }

    public synchronized MediaSource removeMediaSource(int i, Handler handler, Runnable runnable) {
        MediaSource mediaSource;
        mediaSource = getMediaSource(i);
        m19620v(i, i + 1, handler, runnable);
        return mediaSource;
    }

    public synchronized void addMediaSource(int i, MediaSource mediaSource) {
        m19608g(i, Collections.singletonList(mediaSource), null, null);
    }

    public synchronized void addMediaSources(Collection<MediaSource> collection, Handler handler, Runnable runnable) {
        m19608g(this.f25192o.size(), collection, handler, runnable);
    }

    public synchronized void addMediaSources(int i, Collection<MediaSource> collection) {
        m19608g(i, collection, null, null);
    }

    public synchronized void addMediaSource(int i, MediaSource mediaSource, Handler handler, Runnable runnable) {
        m19608g(i, Collections.singletonList(mediaSource), handler, runnable);
    }

    public synchronized void addMediaSources(int i, Collection<MediaSource> collection, Handler handler, Runnable runnable) {
        m19608g(i, collection, handler, runnable);
    }
}
