package com.thegrizzlylabs.sardineandroid.report;

import com.thegrizzlylabs.sardineandroid.model.Multistatus;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;

/* loaded from: classes10.dex */
public abstract class SardineReport<T> {
    public abstract T fromMultistatus(Multistatus multistatus);

    public abstract Object toJaxb();

    public String toXml() throws IOException {
        return SardineUtil.toXml(toJaxb());
    }
}
