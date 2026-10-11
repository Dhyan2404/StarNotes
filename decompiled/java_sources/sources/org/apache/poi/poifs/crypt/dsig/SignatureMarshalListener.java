package org.apache.poi.poifs.crypt.dsig;

import org.w3c.dom.Document;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.events.EventTarget;

/* loaded from: classes12.dex */
public interface SignatureMarshalListener {
    void handleElement(SignatureInfo signatureInfo, Document document, EventTarget eventTarget, EventListener eventListener);
}
