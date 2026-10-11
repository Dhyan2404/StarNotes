package com.onyx.android.sdk.hwr.sunia.data.p125const;

import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;", "", "", "LIB_VERSION_SUNIA", Constants.STRING_SIG, "", "a", "Lkotlin/Lazy;", "getINTERNAL_LANG_LIST", "()Ljava/util/List;", "INTERNAL_LANG_LIST", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SuniaConstant {

    @NotNull
    public static final SuniaConstant INSTANCE = new SuniaConstant();

    @NotNull
    public static final String LIB_VERSION_SUNIA = "1.0";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy INTERNAL_LANG_LIST;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends String>>() { // from class: com.onyx.android.sdk.hwr.sunia.data.const.SuniaConstant$INTERNAL_LANG_LIST$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends String> invoke() {
                List<? extends String> listOf;
                List<String> internalRecognizerLangList = GlobalConfig.INSTANCE.getInternalRecognizerLangList();
                if (internalRecognizerLangList != null) {
                    return internalRecognizerLangList;
                }
                listOf = CollectionsKt__CollectionsJVMKt.listOf("en_US");
                return listOf;
            }
        });
        INTERNAL_LANG_LIST = lazy;
    }

    @NotNull
    public final List<String> getINTERNAL_LANG_LIST() {
        return (List) INTERNAL_LANG_LIST.getValue();
    }
}
