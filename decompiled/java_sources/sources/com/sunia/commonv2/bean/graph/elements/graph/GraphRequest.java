package com.sunia.commonv2.bean.graph.elements.graph;

/* loaded from: classes10.dex */
public class GraphRequest {
    private String kind;
    private String path;
    private String type = "Node";

    public GraphRequest(String str) {
        this.kind = str;
    }

    public String getKind() {
        return this.kind;
    }

    public String getType() {
        return this.type;
    }

    public void setPath(String str) {
        this.path = str;
    }
}
