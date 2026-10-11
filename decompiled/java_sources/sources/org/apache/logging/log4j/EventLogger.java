package org.apache.logging.log4j;

import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.StructuredDataMessage;
import org.apache.logging.log4j.spi.ExtendedLogger;

/* loaded from: classes12.dex */
public final class EventLogger {

    /* renamed from: a */
    public static final String f111184a = "EventLogger";
    public static final Marker EVENT_MARKER = MarkerManager.getMarker("EVENT");

    /* renamed from: b */
    public static final String f111185b = EventLogger.class.getName();

    /* renamed from: c */
    public static final ExtendedLogger f111186c = LogManager.getContext(false).getLogger("EventLogger");

    public static void logEvent(final StructuredDataMessage msg) {
        f111186c.logIfEnabled(f111185b, Level.OFF, EVENT_MARKER, (Message) msg, (Throwable) null);
    }

    public static void logEvent(final StructuredDataMessage msg, final Level level) {
        f111186c.logIfEnabled(f111185b, level, EVENT_MARKER, (Message) msg, (Throwable) null);
    }
}
