package com.onyx.android.sdk.data.serverconvert.exception;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/exception/ConvertException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", HuaweiYunQueryArgs.FILE_NAME, "", "message", "(Ljava/lang/String;Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ConvertException extends Exception {

    @NotNull
    private final String fileName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConvertException(@NotNull String fileName, @NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(message, "message");
        this.fileName = fileName;
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }
}
