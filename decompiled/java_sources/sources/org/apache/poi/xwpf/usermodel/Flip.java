package org.apache.poi.xwpf.usermodel;

import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public enum Flip {
    NONE,
    X,
    Y;

    public static Flip flipOf(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return NONE;
        }
        str.hashCode();
        return !str.equals("x") ? !str.equals("y") ? NONE : Y : X;
    }
}
