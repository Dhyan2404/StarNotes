package com.onyx.android.sdk.data.serverconvert.convertor;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0007H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\r\u001a\u00020\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;", "", "docConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;", "convertEntry", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "downloadFile", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;", "init", "queryDocConvert", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;", "release", "uploadFile", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IDocConvertor {
    @Nullable
    DocConvertResponse docConvert(@NotNull ConvertEntry convertEntry);

    void downloadFile(@NotNull ConvertEntry convertEntry, @NotNull OnFileTransferListener listener);

    void init();

    @Nullable
    QueryResponse queryDocConvert(@NotNull ConvertEntry convertEntry);

    void release();

    void uploadFile(@NotNull ConvertEntry convertEntry, @NotNull OnFileTransferListener listener);
}
