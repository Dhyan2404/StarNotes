package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Result;

/* loaded from: classes5.dex */
public class Response<T extends Result> {

    /* renamed from: e */
    public Result f29078e;

    public Response() {
    }

    @NonNull
    public T getResult() {
        return (T) this.f29078e;
    }

    public void setResult(@NonNull T t) {
        this.f29078e = t;
    }

    public Response(@NonNull T t) {
        this.f29078e = t;
    }
}
