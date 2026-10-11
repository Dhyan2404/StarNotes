package com.onyx.android.sdk.replicator.note.data.point;

/* loaded from: classes8.dex */
public interface PointDocumentLoader {
    void parse(PointDocument pointDocument) throws Exception;

    void parse(PointDocument pointDocument, int i, int i2) throws Exception;

    void save(PointDocument pointDocument) throws Exception;
}
