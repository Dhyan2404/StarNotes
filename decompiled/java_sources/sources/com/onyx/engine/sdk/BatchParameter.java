package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class BatchParameter {
    public static final int BATCH_FONT_ONCE_LIMIT = 40;
    public static final int BATCH_ONCE_LIMIT = 100;
    public int limit = 100;
    public int start = 0;

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
