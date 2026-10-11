package com.alibaba.sdk.android.oss.model;

import org.mortbay.jetty.HttpStatus;

/* loaded from: classes3.dex */
public enum StorageClass {
    Standard("Standard"),
    IA("IA"),
    Archive("Archive"),
    Unknown(HttpStatus.Unknown);

    private String storageClassString;

    StorageClass(String str) {
        this.storageClassString = str;
    }

    public static StorageClass parse(String str) {
        for (StorageClass storageClass : values()) {
            if (storageClass.toString().equals(str)) {
                return storageClass;
            }
        }
        throw new IllegalArgumentException("Unable to parse " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.storageClassString;
    }
}
