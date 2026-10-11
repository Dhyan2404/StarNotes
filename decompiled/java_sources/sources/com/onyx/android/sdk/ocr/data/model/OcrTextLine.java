package com.onyx.android.sdk.ocr.data.model;

import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/model/OcrTextLine;", "Lcom/onyx/android/sdk/ocr/data/model/OcrTextBase;", "", "Lcom/onyx/android/sdk/ocr/data/model/OcrTextElement;", C6997f.f39671c, "Ljava/util/List;", "getElements", "()Ljava/util/List;", "setElements", "(Ljava/util/List;)V", Constants.ATTRNAME_ELEMENTS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OcrTextLine extends OcrTextBase {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<OcrTextElement> elements = new ArrayList();

    @NotNull
    public final List<OcrTextElement> getElements() {
        return this.elements;
    }

    public final void setElements(@NotNull List<OcrTextElement> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.elements = list;
    }
}
