package com.evernote.thrift;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TFieldIdEnum;

/* loaded from: classes4.dex */
public interface TReflectionBase<T extends TBase, F extends TFieldIdEnum> extends TBase<T> {
    F fieldForId(int i);

    Object getFieldValue(F f);

    boolean isSet(F f);

    void setFieldValue(F f, Object obj);
}
