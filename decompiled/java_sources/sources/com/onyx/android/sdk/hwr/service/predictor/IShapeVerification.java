package com.onyx.android.sdk.hwr.service.predictor;

import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0004H&J\b\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;", "", "input", "pointerEvents", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", "shapeName", "", "similarObjectTypes", "verify", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IShapeVerification {
    @NotNull
    IShapeVerification input(@NotNull List<HWRPointerEvent> pointerEvents);

    @NotNull
    VerificationResult output();

    @NotNull
    String shapeName();

    @NotNull
    List<String> similarObjectTypes();

    boolean verify();
}
