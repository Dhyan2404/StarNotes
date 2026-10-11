package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes6.dex */
public final class LabelList extends GenericJson {

    @Key
    private String kind;

    @Key
    private List<Label> labels;

    @Key
    private String nextPageToken;

    static {
        Data.nullOf(Label.class);
    }

    public String getKind() {
        return this.kind;
    }

    public List<Label> getLabels() {
        return this.labels;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public LabelList setKind(String str) {
        this.kind = str;
        return this;
    }

    public LabelList setLabels(List<Label> list) {
        this.labels = list;
        return this;
    }

    public LabelList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LabelList set(String str, Object obj) {
        return (LabelList) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LabelList clone() {
        return (LabelList) super.clone();
    }
}
