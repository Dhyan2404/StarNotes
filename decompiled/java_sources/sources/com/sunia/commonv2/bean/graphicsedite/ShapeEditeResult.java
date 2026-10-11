package com.sunia.commonv2.bean.graphicsedite;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class ShapeEditeResult {
    private int code = 0;
    private String desc = "不支持的类型";
    private String label;

    public String getDesc() {
        return this.desc;
    }

    public String getLabel() {
        return this.label;
    }

    public boolean isSuccess() {
        return this.code == 0;
    }

    public String toString() {
        return "ShapeEditeResult{code=" + this.code + ", desc='" + this.desc + Chars.QUOTE + ", label='" + this.label + Chars.QUOTE + '}';
    }
}
