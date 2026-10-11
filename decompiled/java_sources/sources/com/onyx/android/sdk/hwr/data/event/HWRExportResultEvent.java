package com.onyx.android.sdk.hwr.data.event;

import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/event/HWRExportResultEvent;", "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "e", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "getOutput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "setOutput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)V", Constants.ELEMNAME_OUTPUT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRExportResultEvent extends HWRBaseEvent<HWRExportResultEvent> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public HWROutput output;

    public HWRExportResultEvent(@NotNull HWROutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        this.output = output;
    }

    @NotNull
    public final HWROutput getOutput() {
        return this.output;
    }

    public final void setOutput(@NotNull HWROutput hWROutput) {
        Intrinsics.checkNotNullParameter(hWROutput, "<set-?>");
        this.output = hWROutput;
    }
}
