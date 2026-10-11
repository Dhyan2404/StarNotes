package com.google.android.recaptcha.internal;

import com.sunia.HTREnginev2.C14063lv;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class zzey extends SuspendLambda implements Function2 {
    final /* synthetic */ zzez zza;
    final /* synthetic */ zzoe zzb;
    final /* synthetic */ zzbb zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzey(zzez zzezVar, zzoe zzoeVar, zzbb zzbbVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzezVar;
        this.zzb = zzoeVar;
        this.zzc = zzbbVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation create(@Nullable Object obj, @NotNull Continuation continuation) {
        return new zzey(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzey) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        zzbg zzbgVar;
        zzbd zzbdVar;
        zzt zztVar;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            zzez zzezVar = this.zza;
            zzbq zzf = zzezVar.zzf();
            zzoe zzoeVar = this.zzb;
            zzbdVar = zzezVar.zzp;
            String zzb = zzf.zzb(zzoeVar, zzbdVar);
            zztVar = this.zza.zzq;
            C14063lv.m55522f(zztVar.zzb(), null, null, new zzex(this.zza, zzb, null), 3, null);
        } catch (zzp e) {
            zzez zzezVar2 = this.zza;
            zzbb zzbbVar = this.zzc;
            zzbgVar = zzezVar2.zzi;
            zzbgVar.zzb(zzbbVar, e, null);
            this.zza.zzk().completeExceptionally(e);
        }
        return Unit.INSTANCE;
    }
}
