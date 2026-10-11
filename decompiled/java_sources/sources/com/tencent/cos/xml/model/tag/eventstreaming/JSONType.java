package com.tencent.cos.xml.model.tag.eventstreaming;

import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;

/* loaded from: classes10.dex */
public enum JSONType {
    DOCUMENT(ShapeLinkType.LINK_DOCUMENT),
    LINES("LINES");

    private final String jsonType;

    JSONType(String str) {
        this.jsonType = str;
    }

    public static JSONType fromValue(String str) {
        if (str == null || "".equals(str)) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        for (JSONType jSONType : values()) {
            if (jSONType.toString().equals(str)) {
                return jSONType;
            }
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.jsonType;
    }
}
