package org.apache.xmlbeans.xml.stream;

/* loaded from: classes13.dex */
public interface StartDocument extends XMLEvent {
    String getCharacterEncodingScheme();

    String getSystemId();

    String getVersion();

    boolean isStandalone();
}
