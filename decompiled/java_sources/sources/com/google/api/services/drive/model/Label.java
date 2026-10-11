package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.Map;

/* loaded from: classes6.dex */
public final class Label extends GenericJson {

    @Key
    private Map<String, LabelField> fields;

    /* renamed from: id */
    @Key
    private String f33507id;

    @Key
    private String kind;

    @Key
    private String revisionId;

    public Map<String, LabelField> getFields() {
        return this.fields;
    }

    public String getId() {
        return this.f33507id;
    }

    public String getKind() {
        return this.kind;
    }

    public String getRevisionId() {
        return this.revisionId;
    }

    public Label setFields(Map<String, LabelField> map) {
        this.fields = map;
        return this;
    }

    public Label setId(String str) {
        this.f33507id = str;
        return this;
    }

    public Label setKind(String str) {
        this.kind = str;
        return this;
    }

    public Label setRevisionId(String str) {
        this.revisionId = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public Label set(String str, Object obj) {
        return (Label) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Label clone() {
        return (Label) super.clone();
    }
}
