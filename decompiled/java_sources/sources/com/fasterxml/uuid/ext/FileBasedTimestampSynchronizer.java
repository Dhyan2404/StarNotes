package com.fasterxml.uuid.ext;

import com.fasterxml.uuid.TimestampSynchronizer;
import com.sunia.HTREnginev2.t2j;
import java.io.File;
import java.io.IOException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes4.dex */
public final class FileBasedTimestampSynchronizer extends TimestampSynchronizer {
    protected static final String DEFAULT_LOCK_FILE_NAME1 = "uuid1.lck";
    protected static final String DEFAULT_LOCK_FILE_NAME2 = "uuid2.lck";

    /* renamed from: b */
    public static final Logger f21377b = LoggerFactory.getLogger((Class<?>) FileBasedTimestampSynchronizer.class);

    /* renamed from: c */
    public static final long f21378c = 10000;

    /* renamed from: a */
    public boolean f21379a;
    protected long mInterval;
    protected final t2j mLocked1;
    protected final t2j mLocked2;

    public FileBasedTimestampSynchronizer() throws IOException {
        this(new File(DEFAULT_LOCK_FILE_NAME1), new File(DEFAULT_LOCK_FILE_NAME2));
    }

    public static void doDeactivate(t2j t2jVar, t2j t2jVar2) {
        if (t2jVar != null) {
            t2jVar.m57294a();
        }
        if (t2jVar2 != null) {
            t2jVar2.m57294a();
        }
    }

    @Override // com.fasterxml.uuid.TimestampSynchronizer
    public void deactivate() throws IOException {
        doDeactivate(this.mLocked1, this.mLocked2);
    }

    @Override // com.fasterxml.uuid.TimestampSynchronizer
    public long initialize() throws IOException {
        long m57295c = this.mLocked1.m57295c();
        long m57295c2 = this.mLocked2.m57295c();
        if (m57295c > m57295c2) {
            this.f21379a = true;
        } else {
            this.f21379a = false;
            m57295c = m57295c2;
        }
        if (m57295c <= 0) {
            f21377b.warn("Could not determine safe timer starting point: assuming current system time is acceptable");
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.mInterval + currentTimeMillis < m57295c) {
                f21377b.warn("Safe timestamp read is {} milliseconds in future, and is greater than the inteval ({})", Long.valueOf(m57295c - currentTimeMillis), Long.valueOf(this.mInterval));
            }
        }
        return m57295c;
    }

    public void setUpdateInterval(long j) {
        if (j >= 1) {
            this.mInterval = j;
            return;
        }
        throw new IllegalArgumentException("Illegal value (" + j + "); has to be a positive integer value");
    }

    @Override // com.fasterxml.uuid.TimestampSynchronizer
    public long update(long j) throws IOException {
        long j2 = j + this.mInterval;
        if (this.f21379a) {
            this.mLocked2.m57296d(j2);
        } else {
            this.mLocked1.m57296d(j2);
        }
        this.f21379a = !this.f21379a;
        return j2;
    }

    public FileBasedTimestampSynchronizer(File file, File file2) throws IOException {
        this(file, file2, 10000L);
    }

    public FileBasedTimestampSynchronizer(File file, File file2, long j) throws IOException {
        this.f21379a = false;
        this.mInterval = j;
        this.mLocked1 = new t2j(file);
        try {
            this.mLocked2 = new t2j(file2);
        } catch (Throwable th) {
            this.mLocked1.m57294a();
            throw th;
        }
    }
}
