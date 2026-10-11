package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class SupportedReportSet {
    protected List<SupportedReport> supportedReport;

    public List<SupportedReport> getSupportedReport() {
        if (this.supportedReport == null) {
            this.supportedReport = new ArrayList();
        }
        return this.supportedReport;
    }
}
