package com.tencent.cos.xml.model.ci.metainsight;

import java.util.List;

/* loaded from: classes10.dex */
public class DatasetSimpleQuery {
    public Aggregations aggregations;
    public String datasetName;
    public int maxResults;
    public String nextToken;
    public String order;
    public Query query;
    public String sort;
    public String withFields;

    /* loaded from: classes10.dex */
    public static class Aggregations {
        public String field;
        public String operation;
    }

    /* loaded from: classes10.dex */
    public static class Query {
        public String field;
        public String operation;
        public List<SubQueries> subQueries;
        public String value;
    }

    /* loaded from: classes10.dex */
    public static class SubQueries {
        public String field;
        public String operation;
        public String value;
    }
}
