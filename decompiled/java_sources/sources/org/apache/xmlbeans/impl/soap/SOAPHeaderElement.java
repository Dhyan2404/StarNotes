package org.apache.xmlbeans.impl.soap;

/* loaded from: classes13.dex */
public interface SOAPHeaderElement extends SOAPElement {
    String getActor();

    boolean getMustUnderstand();

    void setActor(String str);

    void setMustUnderstand(boolean z);
}
