package org.apache.logging.log4j.message;

/* loaded from: classes12.dex */
public interface MultiformatMessage extends Message {
    String[] getFormats();

    String getFormattedMessage(String[] formats);
}
