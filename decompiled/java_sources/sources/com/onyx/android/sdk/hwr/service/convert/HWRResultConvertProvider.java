package com.onyx.android.sdk.hwr.service.convert;

import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.neohwr.layout.TextBlockBox;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00030\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;", "", "convert", "", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "rawResult", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "segmentationLevel", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface HWRResultConvertProvider {
    @NotNull
    List<TextBlockBox> convert(@NotNull List<? extends List<HWROutput>> rawResult, int segmentationLevel);
}
