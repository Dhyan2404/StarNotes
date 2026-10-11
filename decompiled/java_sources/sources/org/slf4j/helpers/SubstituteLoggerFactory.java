package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
import org.slf4j.event.SubstituteLoggingEvent;

/* loaded from: classes16.dex */
public class SubstituteLoggerFactory implements ILoggerFactory {

    /* renamed from: a */
    public boolean f116063a = false;

    /* renamed from: b */
    public final Map<String, SubstituteLogger> f116064b = new HashMap();

    /* renamed from: c */
    public final LinkedBlockingQueue<SubstituteLoggingEvent> f116065c = new LinkedBlockingQueue<>();

    public void clear() {
        this.f116064b.clear();
        this.f116065c.clear();
    }

    public LinkedBlockingQueue<SubstituteLoggingEvent> getEventQueue() {
        return this.f116065c;
    }

    @Override // org.slf4j.ILoggerFactory
    public synchronized Logger getLogger(String str) {
        SubstituteLogger substituteLogger;
        substituteLogger = this.f116064b.get(str);
        if (substituteLogger == null) {
            substituteLogger = new SubstituteLogger(str, this.f116065c, this.f116063a);
            this.f116064b.put(str, substituteLogger);
        }
        return substituteLogger;
    }

    public List<String> getLoggerNames() {
        return new ArrayList(this.f116064b.keySet());
    }

    public List<SubstituteLogger> getLoggers() {
        return new ArrayList(this.f116064b.values());
    }

    public void postInitialization() {
        this.f116063a = true;
    }
}
