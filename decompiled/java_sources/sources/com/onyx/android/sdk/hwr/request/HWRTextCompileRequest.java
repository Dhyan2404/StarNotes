package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.utils.MSResourceUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.IOUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0019\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "", "", "execute", "", "b", "compileData", "a", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRTextCompileRequest extends HWRBaseRequest<Object> {

    /* renamed from: c */
    @NotNull
    public static final String f42574c = "a";

    /* renamed from: d */
    @NotNull
    public static final String f42575d = "Text Lexicon";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRTextCompileRequest(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    /* renamed from: a */
    public final void m33364a(String compileData) {
        getBundle().getRecognizerManager().getActiveRecognizer().compileTextModel(f42575d, compileData, this.input.getLang());
    }

    /* renamed from: b */
    public final String m33365b() {
        FileInputStream fileInputStream = new FileInputStream(MSResourceUtils.INSTANCE.getAdditionalLexPath(this.input.getLang()));
        try {
            List readLines = IOUtils.readLines(fileInputStream);
            CloseableKt.closeFinally(fileInputStream, null);
            if (CollectionKt.isNullOrEmpty(readLines)) {
                readLines = new ArrayList();
                readLines.add("a");
            }
            StringBuilder sb = new StringBuilder();
            Iterator it2 = readLines.iterator();
            while (it2.hasNext()) {
                sb.append((String) it2.next());
                sb.append("\n");
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            return sb2;
        } finally {
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72276execute();
        return Unit.INSTANCE;
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    public final void setInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.input = hWRInput;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72276execute() {
        m33364a(m33365b());
    }
}
