package org.apache.xerces.xpointer;

import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XNIException;

/* loaded from: classes13.dex */
public interface XPointerProcessor {
    public static final int EVENT_ELEMENT_EMPTY = 2;
    public static final int EVENT_ELEMENT_END = 1;
    public static final int EVENT_ELEMENT_START = 0;

    boolean isFragmentResolved() throws XNIException;

    boolean isXPointerResolved() throws XNIException;

    void parseXPointer(String str) throws XNIException;

    boolean resolveXPointer(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int i) throws XNIException;
}
