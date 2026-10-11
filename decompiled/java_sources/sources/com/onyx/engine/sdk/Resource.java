package com.onyx.engine.sdk;

import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class Resource {
    private String basePath;
    private String format;
    private float height;
    private String resourcePath;
    private float width;

    public Resource() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Resource resource = (Resource) obj;
        return Float.compare(resource.width, this.width) == 0 && Float.compare(resource.height, this.height) == 0 && Objects.equals(this.basePath, resource.basePath) && Objects.equals(this.resourcePath, resource.resourcePath) && Objects.equals(this.format, resource.format);
    }

    public String getBasePath() {
        return this.basePath;
    }

    public String getFormat() {
        return this.format;
    }

    public float getHeight() {
        return this.height;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    public float getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Objects.hash(this.basePath, this.resourcePath, this.format, Float.valueOf(this.width), Float.valueOf(this.height));
    }

    public Resource setBasePath(String str) {
        this.basePath = str;
        return this;
    }

    public Resource setFormat(String str) {
        this.format = str;
        return this;
    }

    public Resource setHeight(float f) {
        this.height = f;
        return this;
    }

    public Resource setResourcePath(String str) {
        this.resourcePath = str;
        return this;
    }

    public Resource setWidth(float f) {
        this.width = f;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "Resource{basePath='" + this.basePath + Chars.QUOTE + ", resourcePath='" + this.resourcePath + Chars.QUOTE + ", format='" + this.format + Chars.QUOTE + ", width=" + this.width + ", height=" + this.height + '}';
    }

    public Resource(String str, String str2) {
        this.basePath = str;
        this.resourcePath = str2;
    }
}
