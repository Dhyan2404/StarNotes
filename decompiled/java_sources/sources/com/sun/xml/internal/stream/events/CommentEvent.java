package com.sun.xml.internal.stream.events;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import javax.xml.stream.events.Comment;

/* loaded from: classes10.dex */
public class CommentEvent extends DummyEvent implements Comment {
    private String fText;

    public CommentEvent() {
        init();
    }

    @Override // javax.xml.stream.events.Comment
    public String getText() {
        return this.fText;
    }

    public void init() {
        setEventType(5);
    }

    public String toString() {
        return XMLStreamWriterImpl.START_COMMENT + getText() + XMLStreamWriterImpl.END_COMMENT;
    }

    public CommentEvent(String str) {
        init();
        this.fText = str;
    }
}
