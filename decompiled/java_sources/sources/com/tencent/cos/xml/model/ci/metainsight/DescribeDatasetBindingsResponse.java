package com.tencent.cos.xml.model.ci.metainsight;

import java.util.List;

/* loaded from: classes10.dex */
public class DescribeDatasetBindingsResponse {
    public List<Binding> bindings;
    public String nextToken;
    public String requestId;

    /* loaded from: classes10.dex */
    public static class Binding {
        public String createTime;
        public String datasetName;
        public String detail;
        public String state;
        public String uRI;
        public String updateTime;
    }
}
