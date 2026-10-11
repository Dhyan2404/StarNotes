package org.apache.logging.log4j.status;

import java.io.IOException;
import java.io.PrintStream;
import org.apache.logging.log4j.Level;

/* loaded from: classes12.dex */
public class StatusConsoleListener implements StatusListener {

    /* renamed from: e */
    public Level f111252e;

    /* renamed from: f */
    public String[] f111253f;

    /* renamed from: g */
    public final PrintStream f111254g;

    public StatusConsoleListener(final Level level) {
        this(level, System.out);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        PrintStream printStream = this.f111254g;
        if (printStream == System.out || printStream == System.err) {
            return;
        }
        printStream.close();
    }

    /* renamed from: f */
    public final boolean m68631f(final StatusData data) {
        if (this.f111253f == null) {
            return false;
        }
        String className = data.getStackTraceElement().getClassName();
        for (String str : this.f111253f) {
            if (className.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.logging.log4j.status.StatusListener
    public Level getStatusLevel() {
        return this.f111252e;
    }

    @Override // org.apache.logging.log4j.status.StatusListener
    public void log(final StatusData data) {
        if (m68631f(data)) {
            return;
        }
        this.f111254g.println(data.getFormattedStatus());
    }

    public void setFilters(final String... filters) {
        this.f111253f = filters;
    }

    public void setLevel(final Level level) {
        this.f111252e = level;
    }

    public StatusConsoleListener(final Level level, final PrintStream stream) {
        this.f111252e = Level.FATAL;
        if (stream != null) {
            this.f111252e = level;
            this.f111254g = stream;
            return;
        }
        throw new IllegalArgumentException("You must provide a stream to use for this listener.");
    }
}
