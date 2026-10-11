package com.google.android.recaptcha.internal;

import com.sunia.HTREnginev2.C14063lv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class zzf extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzg zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzoe zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(zzg zzgVar, long j, zzoe zzoeVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgVar;
        this.zzc = j;
        this.zzd = zzoeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation create(@Nullable Object obj, @NotNull Continuation continuation) {
        zzf zzfVar = new zzf(this.zzb, this.zzc, this.zzd, continuation);
        zzfVar.zze = obj;
        return zzfVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzf) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Ref.ObjectRef objectRef;
        Object awaitAll;
        Deferred m55518b;
        Object obj2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zza != 0) {
            Ref.ObjectRef objectRef2 = (Ref.ObjectRef) this.zze;
            ResultKt.throwOnFailure(obj);
            objectRef = objectRef2;
            awaitAll = obj;
        } else {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.zze;
            ArrayList arrayList = new ArrayList();
            Iterator it2 = this.zzb.zzc().iterator();
            while (it2.hasNext()) {
                m55518b = C14063lv.m55518b(coroutineScope, null, null, new zze((zza) it2.next(), this.zzc, this.zzd, null), 3, null);
                arrayList.add(m55518b);
            }
            objectRef = new Ref.ObjectRef();
            Deferred[] deferredArr = (Deferred[]) arrayList.toArray(new Deferred[0]);
            Deferred[] deferredArr2 = (Deferred[]) Arrays.copyOf(deferredArr, deferredArr.length);
            this.zze = objectRef;
            this.zza = 1;
            awaitAll = AwaitKt.awaitAll(deferredArr2, this);
            if (awaitAll == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Iterator it3 = ((List) awaitAll).iterator();
        while (it3.hasNext()) {
            Throwable m72624exceptionOrNullimpl = Result.m72624exceptionOrNullimpl(((Result) it3.next()).getValue());
            if (m72624exceptionOrNullimpl != null) {
                T t = 0;
                if (objectRef.element != 0) {
                    t = new zzp(zzn.zzc, zzl.zzal, null);
                } else if (m72624exceptionOrNullimpl instanceof zzp) {
                    t = (zzp) m72624exceptionOrNullimpl;
                }
                objectRef.element = t;
            }
        }
        zzp zzpVar = (zzp) objectRef.element;
        if (zzpVar != null) {
            Result.Companion companion = Result.INSTANCE;
            obj2 = ResultKt.createFailure(zzpVar);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            obj2 = Unit.INSTANCE;
        }
        return Result.m72620boximpl(Result.m72621constructorimpl(obj2));
    }
}
