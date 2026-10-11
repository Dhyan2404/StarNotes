package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes6.dex */
public final class LabelField extends GenericJson {

    @Key
    private List<DateTime> dateString;

    /* renamed from: id */
    @Key
    private String f33508id;

    @JsonString
    @Key("integer")
    private List<Long> integer__;

    @Key
    private String kind;

    @Key
    private List<String> selection;

    @Key
    private List<String> text;

    @Key
    private List<User> user;

    @Key
    private String valueType;

    public List<DateTime> getDateString() {
        return this.dateString;
    }

    public String getId() {
        return this.f33508id;
    }

    public List<Long> getInteger() {
        return this.integer__;
    }

    public String getKind() {
        return this.kind;
    }

    public List<String> getSelection() {
        return this.selection;
    }

    public List<String> getText() {
        return this.text;
    }

    public List<User> getUser() {
        return this.user;
    }

    public String getValueType() {
        return this.valueType;
    }

    public LabelField setDateString(List<DateTime> list) {
        this.dateString = list;
        return this;
    }

    public LabelField setId(String str) {
        this.f33508id = str;
        return this;
    }

    public LabelField setInteger(List<Long> list) {
        this.integer__ = list;
        return this;
    }

    public LabelField setKind(String str) {
        this.kind = str;
        return this;
    }

    public LabelField setSelection(List<String> list) {
        this.selection = list;
        return this;
    }

    public LabelField setText(List<String> list) {
        this.text = list;
        return this;
    }

    public LabelField setUser(List<User> list) {
        this.user = list;
        return this;
    }

    public LabelField setValueType(String str) {
        this.valueType = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LabelField set(String str, Object obj) {
        return (LabelField) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LabelField clone() {
        return (LabelField) super.clone();
    }
}
