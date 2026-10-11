package org.apache.xerces.impl;

import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.parser.XMLDocumentFilter;

/* loaded from: classes13.dex */
public interface RevalidationHandler extends XMLDocumentFilter {
    boolean characterData(String str, Augmentations augmentations);
}
