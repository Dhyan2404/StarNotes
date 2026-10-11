package com.twelvemonkeys.imageio.metadata;

/* loaded from: classes10.dex */
public interface Entry {
    String getFieldName();

    Object getIdentifier();

    String getTypeName();

    Object getValue();

    String getValueAsString();

    int valueCount();
}
