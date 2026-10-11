package com.tencent.qcloud.core.http;

import java.io.IOException;

/* loaded from: classes10.dex */
public interface ReactiveBody {
    <T> void end(HttpResult<T> httpResult) throws IOException;

    void prepare() throws IOException;
}
