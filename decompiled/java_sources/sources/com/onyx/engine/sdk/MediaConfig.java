package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class MediaConfig {
    String format;
    float height;
    String iconPath;
    String type;
    float width;

    public String getFormat() {
        return this.format;
    }

    public float getHeight() {
        return this.height;
    }

    public String getIconPath() {
        return this.iconPath;
    }

    public String getType() {
        return this.type;
    }

    public float getWidth() {
        return this.width;
    }

    public MediaConfig setFormat(String str) {
        this.format = str;
        return this;
    }

    public MediaConfig setHeight(float f) {
        this.height = f;
        return this;
    }

    public MediaConfig setIconPath(String str) {
        this.iconPath = str;
        return this;
    }

    public MediaConfig setType(String str) {
        this.type = str;
        return this;
    }

    public MediaConfig setWidth(float f) {
        this.width = f;
        return this;
    }
}
