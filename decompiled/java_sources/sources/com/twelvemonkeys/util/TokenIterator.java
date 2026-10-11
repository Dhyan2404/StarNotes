package com.twelvemonkeys.util;

import java.util.Enumeration;
import java.util.Iterator;

/* loaded from: classes10.dex */
public interface TokenIterator extends Iterator<String>, Enumeration<String> {
    boolean hasMoreTokens();

    String nextToken();

    void reset();
}
