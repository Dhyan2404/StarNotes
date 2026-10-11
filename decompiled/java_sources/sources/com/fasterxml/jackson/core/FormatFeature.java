package com.fasterxml.jackson.core;

/* loaded from: classes4.dex */
public interface FormatFeature {
    boolean enabledByDefault();

    boolean enabledIn(int i);

    int getMask();
}
