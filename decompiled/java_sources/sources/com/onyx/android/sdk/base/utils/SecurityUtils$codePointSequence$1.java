package com.onyx.android.sdk.base.utils;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, m61528d2 = {"Lkotlin/sequences/SequenceScope;", "", "", "<anonymous>"}, m61529k = 3, m61530mv = {1, 9, 0})
@DebugMetadata(m61542c = "com.onyx.android.sdk.base.utils.SecurityUtils$codePointSequence$1", m61543f = "SecurityUtils.kt", m61544i = {0, 0, 0}, m61545l = {114}, m61546m = "invokeSuspend", m61547n = {"$this$sequence", "i", "charCount"}, m61548s = {"L$0", "I$0", "I$1"})
/* loaded from: classes7.dex */
public final class SecurityUtils$codePointSequence$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super String>, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $this_codePointSequence;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecurityUtils$codePointSequence$1(String str, Continuation<? super SecurityUtils$codePointSequence$1> continuation) {
        super(2, continuation);
        this.$this_codePointSequence = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        SecurityUtils$codePointSequence$1 securityUtils$codePointSequence$1 = new SecurityUtils$codePointSequence$1(this.$this_codePointSequence, continuation);
        securityUtils$codePointSequence$1.L$0 = obj;
        return securityUtils$codePointSequence$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0054 -> B:5:0x0057). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L1f
            if (r1 != r2) goto L17
            int r1 = r6.I$1
            int r3 = r6.I$0
            java.lang.Object r4 = r6.L$0
            kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L17:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L1f:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            kotlin.sequences.SequenceScope r7 = (kotlin.sequences.SequenceScope) r7
            r1 = 0
            r4 = r7
            r3 = r1
        L29:
            java.lang.String r7 = r6.$this_codePointSequence
            int r7 = r7.length()
            if (r3 >= r7) goto L59
            java.lang.String r7 = r6.$this_codePointSequence
            int r7 = r7.codePointAt(r3)
            int r1 = java.lang.Character.charCount(r7)
            java.lang.String r7 = r6.$this_codePointSequence
            int r5 = r3 + r1
            java.lang.String r7 = r7.substring(r3, r5)
            java.lang.String r5 = "this as java.lang.String…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r5)
            r6.L$0 = r4
            r6.I$0 = r3
            r6.I$1 = r1
            r6.label = r2
            java.lang.Object r7 = r4.yield(r7, r6)
            if (r7 != r0) goto L57
            return r0
        L57:
            int r3 = r3 + r1
            goto L29
        L59:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.SecurityUtils$codePointSequence$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull SequenceScope<? super String> sequenceScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SecurityUtils$codePointSequence$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
