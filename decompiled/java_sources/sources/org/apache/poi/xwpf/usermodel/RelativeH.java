package org.apache.poi.xwpf.usermodel;

import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public enum RelativeH {
    NORMAL,
    PAGE,
    PARAGRAPH;

    public static RelativeH relativeOf(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return NORMAL;
        }
        str.hashCode();
        return !str.equals("page") ? !str.equals("paragraph") ? NORMAL : PARAGRAPH : PAGE;
    }
}
