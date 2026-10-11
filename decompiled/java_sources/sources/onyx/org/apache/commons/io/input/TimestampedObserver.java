package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import onyx.org.apache.commons.io.input.ObservableInputStream;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class TimestampedObserver extends ObservableInputStream.Observer {

    /* renamed from: a */
    public volatile Instant f104425a;

    /* renamed from: b */
    public final Instant f104426b = Instant.now();

    @Override // onyx.org.apache.commons.io.input.ObservableInputStream.Observer
    public void closed() throws IOException {
        this.f104425a = Instant.now();
    }

    public Instant getCloseInstant() {
        return this.f104425a;
    }

    public Instant getOpenInstant() {
        return this.f104426b;
    }

    public Duration getOpenToCloseDuration() {
        return Duration.between(this.f104426b, this.f104425a);
    }

    public Duration getOpenToNowDuration() {
        return Duration.between(this.f104426b, Instant.now());
    }

    public boolean isClosed() {
        return this.f104425a != null;
    }

    public String toString() {
        return "TimestampedObserver [openInstant=" + this.f104426b + ", closeInstant=" + this.f104425a + IteratorUtils.f104924b;
    }
}
