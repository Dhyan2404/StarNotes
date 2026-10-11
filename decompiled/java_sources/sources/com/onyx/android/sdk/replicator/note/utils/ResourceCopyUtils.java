package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/ResourceCopyUtils;", "", "", "srcId", "copyResourceId", "a", Constants.STRING_SIG, "PDF_RESOURCE_ID_SPLIT_CHAR", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ResourceCopyUtils {

    @NotNull
    public static final ResourceCopyUtils INSTANCE = new ResourceCopyUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String PDF_RESOURCE_ID_SPLIT_CHAR = "_";

    @NotNull
    public final String copyResourceId(@NotNull String srcId) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(srcId, "srcId");
        if (srcId.length() == 0) {
            return srcId;
        }
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) srcId, "_", 0, false, 6, (Object) null);
        String rawUUID = UUIDUtils.INSTANCE.rawUUID();
        if (lastIndexOf$default <= 0 || lastIndexOf$default >= srcId.length()) {
            return rawUUID;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(rawUUID);
        sb.append(NameUtil.USCORE);
        String substring = srcId.substring(lastIndexOf$default + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        sb.append(substring);
        return sb.toString();
    }
}
