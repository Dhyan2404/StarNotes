package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.math.BigInteger;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Limit {
    protected BigInteger nresults;

    public BigInteger getNresults() {
        return this.nresults;
    }

    public void setNresults(BigInteger bigInteger) {
        this.nresults = bigInteger;
    }
}
