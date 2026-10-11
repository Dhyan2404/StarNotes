package com.sun.org.apache.xalan.internal.trace;

import java.util.EventListener;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public interface TraceListener extends EventListener {
    void generated(GenerateEvent generateEvent);

    void selected(SelectionEvent selectionEvent) throws TransformerException;

    void trace(TracerEvent tracerEvent);
}
