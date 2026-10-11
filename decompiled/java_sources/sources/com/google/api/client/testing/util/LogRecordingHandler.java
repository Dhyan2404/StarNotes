package com.google.api.client.testing.util;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Lists;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

@Beta
/* loaded from: classes6.dex */
public class LogRecordingHandler extends Handler {
    private final List<LogRecord> records = Lists.newArrayList();

    @Override // java.util.logging.Handler
    public void close() throws SecurityException {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    public List<String> messages() {
        ArrayList newArrayList = Lists.newArrayList();
        Iterator<LogRecord> it2 = this.records.iterator();
        while (it2.hasNext()) {
            newArrayList.add(it2.next().getMessage());
        }
        return newArrayList;
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        this.records.add(logRecord);
    }
}
