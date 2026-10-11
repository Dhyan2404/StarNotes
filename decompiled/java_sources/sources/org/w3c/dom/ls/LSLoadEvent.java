package org.w3c.dom.ls;

import org.w3c.dom.Document;
import org.w3c.dom.events.Event;

/* loaded from: classes16.dex */
public interface LSLoadEvent extends Event {
    LSInput getInput();

    Document getNewDocument();
}
