package org.apache.logging.log4j.message;

/* loaded from: classes12.dex */
public interface FlowMessageFactory {
    EntryMessage newEntryMessage(Message message);

    ExitMessage newExitMessage(Object result, EntryMessage message);

    ExitMessage newExitMessage(Object result, Message message);

    ExitMessage newExitMessage(EntryMessage message);
}
