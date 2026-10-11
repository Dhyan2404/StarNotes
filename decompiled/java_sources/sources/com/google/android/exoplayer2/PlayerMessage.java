package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public final class PlayerMessage {

    /* renamed from: a */
    public final Target f22672a;

    /* renamed from: b */
    public final Sender f22673b;

    /* renamed from: c */
    public final Clock f22674c;

    /* renamed from: d */
    public final Timeline f22675d;

    /* renamed from: e */
    public int f22676e;

    /* renamed from: f */
    @Nullable
    public Object f22677f;

    /* renamed from: g */
    public Looper f22678g;

    /* renamed from: h */
    public int f22679h;

    /* renamed from: i */
    public long f22680i = C4649C.TIME_UNSET;

    /* renamed from: j */
    public boolean f22681j = true;

    /* renamed from: k */
    public boolean f22682k;

    /* renamed from: l */
    public boolean f22683l;

    /* renamed from: m */
    public boolean f22684m;

    /* renamed from: n */
    public boolean f22685n;

    /* loaded from: classes5.dex */
    public interface Sender {
        void sendMessage(PlayerMessage playerMessage);
    }

    /* loaded from: classes5.dex */
    public interface Target {
        void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException;
    }

    public PlayerMessage(Sender sender, Target target, Timeline timeline, int i, Clock clock, Looper looper) {
        this.f22673b = sender;
        this.f22672a = target;
        this.f22675d = timeline;
        this.f22678g = looper;
        this.f22674c = clock;
        this.f22679h = i;
    }

    public synchronized boolean blockUntilDelivered() throws InterruptedException {
        Assertions.checkState(this.f22682k);
        Assertions.checkState(this.f22678g.getThread() != Thread.currentThread());
        while (!this.f22684m) {
            wait();
        }
        return this.f22683l;
    }

    public synchronized PlayerMessage cancel() {
        Assertions.checkState(this.f22682k);
        this.f22685n = true;
        markAsProcessed(false);
        return this;
    }

    public boolean getDeleteAfterDelivery() {
        return this.f22681j;
    }

    public Looper getLooper() {
        return this.f22678g;
    }

    public int getMediaItemIndex() {
        return this.f22679h;
    }

    @Nullable
    public Object getPayload() {
        return this.f22677f;
    }

    public long getPositionMs() {
        return this.f22680i;
    }

    public Target getTarget() {
        return this.f22672a;
    }

    public Timeline getTimeline() {
        return this.f22675d;
    }

    public int getType() {
        return this.f22676e;
    }

    public synchronized boolean isCanceled() {
        return this.f22685n;
    }

    public synchronized void markAsProcessed(boolean z) {
        this.f22683l = z | this.f22683l;
        this.f22684m = true;
        notifyAll();
    }

    public PlayerMessage send() {
        Assertions.checkState(!this.f22682k);
        if (this.f22680i == C4649C.TIME_UNSET) {
            Assertions.checkArgument(this.f22681j);
        }
        this.f22682k = true;
        this.f22673b.sendMessage(this);
        return this;
    }

    public PlayerMessage setDeleteAfterDelivery(boolean z) {
        Assertions.checkState(!this.f22682k);
        this.f22681j = z;
        return this;
    }

    @Deprecated
    public PlayerMessage setHandler(Handler handler) {
        return setLooper(handler.getLooper());
    }

    public PlayerMessage setLooper(Looper looper) {
        Assertions.checkState(!this.f22682k);
        this.f22678g = looper;
        return this;
    }

    public PlayerMessage setPayload(@Nullable Object obj) {
        Assertions.checkState(!this.f22682k);
        this.f22677f = obj;
        return this;
    }

    public PlayerMessage setPosition(long j) {
        Assertions.checkState(!this.f22682k);
        this.f22680i = j;
        return this;
    }

    public PlayerMessage setType(int i) {
        Assertions.checkState(!this.f22682k);
        this.f22676e = i;
        return this;
    }

    public PlayerMessage setPosition(int i, long j) {
        Assertions.checkState(!this.f22682k);
        Assertions.checkArgument(j != C4649C.TIME_UNSET);
        if (i >= 0 && (this.f22675d.isEmpty() || i < this.f22675d.getWindowCount())) {
            this.f22679h = i;
            this.f22680i = j;
            return this;
        }
        throw new IllegalSeekPositionException(this.f22675d, i, j);
    }

    public synchronized boolean blockUntilDelivered(long j) throws InterruptedException, TimeoutException {
        boolean z;
        Assertions.checkState(this.f22682k);
        Assertions.checkState(this.f22678g.getThread() != Thread.currentThread());
        long elapsedRealtime = this.f22674c.elapsedRealtime() + j;
        while (true) {
            z = this.f22684m;
            if (z || j <= 0) {
                break;
            }
            this.f22674c.onThreadBlocked();
            wait(j);
            j = elapsedRealtime - this.f22674c.elapsedRealtime();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.f22683l;
    }
}
