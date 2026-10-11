package org.w3c.dom.ls;

import org.w3c.dom.events.Event;

/* loaded from: classes16.dex */
public interface LSProgressEvent extends Event {
    LSInput getInput();

    int getPosition();

    int getTotalSize();
}
