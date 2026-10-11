package org.apache.xerces.util;

import java.util.Locale;
import java.util.MissingResourceException;

/* loaded from: classes13.dex */
public interface MessageFormatter {
    String formatMessage(Locale locale, String str, Object[] objArr) throws MissingResourceException;
}
