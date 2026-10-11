package com.tencent.cos.xml.common;

/* loaded from: classes10.dex */
public enum MetaDataDirective {
    COPY("Copy"),
    REPLACED("Replaced");

    String directive;

    MetaDataDirective(String str) {
        this.directive = str;
    }

    public static MetaDataDirective fromValue(String str) {
        for (MetaDataDirective metaDataDirective : values()) {
            if (metaDataDirective.directive.equalsIgnoreCase(str)) {
                return metaDataDirective;
            }
        }
        return null;
    }

    public String getMetaDirective() {
        return this.directive;
    }
}
