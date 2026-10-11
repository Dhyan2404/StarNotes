package org.w3c.dom;

/* loaded from: classes16.dex */
public interface ProcessingInstruction extends Node {
    String getData();

    String getTarget();

    void setData(String str) throws DOMException;
}
