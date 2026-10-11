package onyx.org.apache.commons.io.input;

import java.io.InputStream;
import java.time.Duration;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.output.QueueOutputStream;

/* loaded from: classes11.dex */
public class QueueInputStream extends InputStream {

    /* renamed from: e */
    public final BlockingQueue<Integer> f104341e;

    /* renamed from: f */
    public final long f104342f;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<QueueInputStream, Builder> {

        /* renamed from: l */
        public BlockingQueue<Integer> f104343l = new LinkedBlockingQueue();

        /* renamed from: m */
        public Duration f104344m = Duration.ZERO;

        public Builder setBlockingQueue(BlockingQueue<Integer> blockingQueue) {
            if (blockingQueue == null) {
                blockingQueue = new LinkedBlockingQueue<>();
            }
            this.f104343l = blockingQueue;
            return this;
        }

        public Builder setTimeout(Duration duration) {
            if (duration != null && duration.toNanos() < 0) {
                throw new IllegalArgumentException("timeout must not be negative");
            }
            if (duration == null) {
                duration = Duration.ZERO;
            }
            this.f104344m = duration;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public QueueInputStream get() {
            return new QueueInputStream(this.f104343l, this.f104344m);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: f */
    public BlockingQueue<Integer> m65457f() {
        return this.f104341e;
    }

    /* renamed from: j */
    public Duration m65458j() {
        return Duration.ofNanos(this.f104342f);
    }

    public QueueOutputStream newQueueOutputStream() {
        return new QueueOutputStream(this.f104341e);
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            Integer poll = this.f104341e.poll(this.f104342f, TimeUnit.NANOSECONDS);
            if (poll == null) {
                return -1;
            }
            return poll.intValue() & 255;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(e);
        }
    }

    public QueueInputStream() {
        this(new LinkedBlockingQueue());
    }

    @Deprecated
    public QueueInputStream(BlockingQueue<Integer> blockingQueue) {
        this(blockingQueue, Duration.ZERO);
    }

    public QueueInputStream(BlockingQueue<Integer> blockingQueue, Duration duration) {
        Objects.requireNonNull(blockingQueue, "blockingQueue");
        this.f104341e = blockingQueue;
        Objects.requireNonNull(duration, "timeout");
        this.f104342f = duration.toNanos();
    }
}
