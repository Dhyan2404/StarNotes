package com.tencent.cos.xml.common;

import com.onyx.android.sdk.data.common.data.template.TemplateCategoryValue;

/* loaded from: classes10.dex */
public enum Permission {
    READ("READ"),
    WRITE(TemplateCategoryValue.WRITE),
    FULL_CONTROL("FULL_CONTROL");

    private String permission;

    Permission(String str) {
        this.permission = str;
    }

    public static Permission fromValue(String str) {
        for (Permission permission : values()) {
            if (permission.permission.equalsIgnoreCase(str)) {
                return permission;
            }
        }
        return null;
    }

    public String getPermission() {
        return this.permission;
    }
}
