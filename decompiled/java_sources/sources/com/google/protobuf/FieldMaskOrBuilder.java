package com.google.protobuf;

import java.util.List;

/* loaded from: classes6.dex */
public interface FieldMaskOrBuilder extends MessageOrBuilder {
    String getPaths(int index);

    ByteString getPathsBytes(int index);

    int getPathsCount();

    List<String> getPathsList();
}
