package kotlinx.coroutines.internal;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.zjl;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\u001a\u0010\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0000H\u0001\"\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b\"\u001a\u0010\t\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\t\u0010\u0006\u0012\u0004\b\n\u0010\b\"\u001a\u0010\u000b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u0012\u0004\b\f\u0010\b\" \u0010\u0012\u001a\u00020\u00008\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u0011\u0010\b\u001a\u0004\b\u000f\u0010\u0010*\f\b\u0002\u0010\u0013\"\u00020\u00012\u00020\u0001¨\u0006\u0014"}, m61528d2 = {"", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "unwrap", "", "UNDECIDED", "I", "getUNDECIDED$annotations", "()V", "SUCCESS", "getSUCCESS$annotations", "FAILURE", "getFAILURE$annotations", "a", Constants.OBJECT_SIG, "getCONDITION_FALSE", "()Ljava/lang/Object;", "getCONDITION_FALSE$annotations", "CONDITION_FALSE", "Node", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class LockFreeLinkedListKt {
    public static final int FAILURE = 2;
    public static final int SUCCESS = 1;
    public static final int UNDECIDED = 0;

    /* renamed from: a */
    @NotNull
    public static final Object f98592a = new Symbol("CONDITION_FALSE");

    @NotNull
    public static final Object getCONDITION_FALSE() {
        return f98592a;
    }

    @PublishedApi
    public static /* synthetic */ void getCONDITION_FALSE$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getFAILURE$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getSUCCESS$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getUNDECIDED$annotations() {
    }

    @PublishedApi
    @NotNull
    public static final LockFreeLinkedListNode unwrap(@NotNull Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        zjl zjlVar = obj instanceof zjl ? (zjl) obj : null;
        if (zjlVar != null && (lockFreeLinkedListNode = zjlVar.f91878a) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (LockFreeLinkedListNode) obj;
    }
}
