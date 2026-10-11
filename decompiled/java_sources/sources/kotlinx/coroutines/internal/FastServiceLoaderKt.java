package kotlinx.coroutines.internal;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(m61527d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0006\"\u001a\u0010\u0005\u001a\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, m61528d2 = {"", "a", Constants.HASIDCALL_INDEX_SIG, "getANDROID_DETECTED", Constants.BOOLEAN_VALUE_SIG, "ANDROID_DETECTED", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"})
/* loaded from: classes11.dex */
public final class FastServiceLoaderKt {

    /* renamed from: a */
    public static final boolean f98582a = false;

    static {
        Object m72621constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        Result.m72628isSuccessimpl(m72621constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return f98582a;
    }
}
