package com.sunia.HTREnginev2;

import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CompletedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,662:1\n1#2:663\n*E\n"})
/* loaded from: classes11.dex */
public final class b6e {

    /* renamed from: a */
    @JvmField
    @Nullable
    public final Object f65431a;

    /* renamed from: b */
    @JvmField
    @Nullable
    public final CancelHandler f65432b;

    /* renamed from: c */
    @JvmField
    @Nullable
    public final Function1<Throwable, Unit> f65433c;

    /* renamed from: d */
    @JvmField
    @Nullable
    public final Object f65434d;

    /* renamed from: e */
    @JvmField
    @Nullable
    public final Throwable f65435e;

    /* JADX WARN: Multi-variable type inference failed */
    public b6e(@Nullable Object obj, @Nullable CancelHandler cancelHandler, @Nullable Function1<? super Throwable, Unit> function1, @Nullable Object obj2, @Nullable Throwable th) {
        this.f65431a = obj;
        this.f65432b = cancelHandler;
        this.f65433c = function1;
        this.f65434d = obj2;
        this.f65435e = th;
    }

    /* renamed from: g */
    public static /* synthetic */ b6e m53178g(b6e b6eVar, Object obj, CancelHandler cancelHandler, Function1 function1, Object obj2, Throwable th, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = b6eVar.f65431a;
        }
        if ((i & 2) != 0) {
            cancelHandler = b6eVar.f65432b;
        }
        CancelHandler cancelHandler2 = cancelHandler;
        if ((i & 4) != 0) {
            function1 = b6eVar.f65433c;
        }
        Function1 function12 = function1;
        if ((i & 8) != 0) {
            obj2 = b6eVar.f65434d;
        }
        Object obj4 = obj2;
        if ((i & 16) != 0) {
            th = b6eVar.f65435e;
        }
        return b6eVar.m53184f(obj, cancelHandler2, function12, obj4, th);
    }

    @Nullable
    /* renamed from: a */
    public final Object m53179a() {
        return this.f65431a;
    }

    @Nullable
    /* renamed from: b */
    public final CancelHandler m53180b() {
        return this.f65432b;
    }

    @Nullable
    /* renamed from: c */
    public final Function1<Throwable, Unit> m53181c() {
        return this.f65433c;
    }

    @Nullable
    /* renamed from: d */
    public final Object m53182d() {
        return this.f65434d;
    }

    @Nullable
    /* renamed from: e */
    public final Throwable m53183e() {
        return this.f65435e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b6e)) {
            return false;
        }
        b6e b6eVar = (b6e) obj;
        return Intrinsics.areEqual(this.f65431a, b6eVar.f65431a) && Intrinsics.areEqual(this.f65432b, b6eVar.f65432b) && Intrinsics.areEqual(this.f65433c, b6eVar.f65433c) && Intrinsics.areEqual(this.f65434d, b6eVar.f65434d) && Intrinsics.areEqual(this.f65435e, b6eVar.f65435e);
    }

    @NotNull
    /* renamed from: f */
    public final b6e m53184f(@Nullable Object obj, @Nullable CancelHandler cancelHandler, @Nullable Function1<? super Throwable, Unit> function1, @Nullable Object obj2, @Nullable Throwable th) {
        return new b6e(obj, cancelHandler, function1, obj2, th);
    }

    /* renamed from: h */
    public final boolean m53185h() {
        return this.f65435e != null;
    }

    public int hashCode() {
        Object obj = this.f65431a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        CancelHandler cancelHandler = this.f65432b;
        int hashCode2 = (hashCode + (cancelHandler == null ? 0 : cancelHandler.hashCode())) * 31;
        Function1<Throwable, Unit> function1 = this.f65433c;
        int hashCode3 = (hashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.f65434d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f65435e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    /* renamed from: i */
    public final void m53186i(@NotNull CancellableContinuationImpl<?> cancellableContinuationImpl, @NotNull Throwable th) {
        CancelHandler cancelHandler = this.f65432b;
        if (cancelHandler != null) {
            cancellableContinuationImpl.callCancelHandler(cancelHandler, th);
        }
        Function1<Throwable, Unit> function1 = this.f65433c;
        if (function1 != null) {
            cancellableContinuationImpl.callOnCancellation(function1, th);
        }
    }

    @NotNull
    public String toString() {
        return "CompletedContinuation(result=" + this.f65431a + ", cancelHandler=" + this.f65432b + ", onCancellation=" + this.f65433c + ", idempotentResume=" + this.f65434d + ", cancelCause=" + this.f65435e + ')';
    }

    public /* synthetic */ b6e(Object obj, CancelHandler cancelHandler, Function1 function1, Object obj2, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? null : cancelHandler, (i & 4) != 0 ? null : function1, (i & 8) != 0 ? null : obj2, (i & 16) != 0 ? null : th);
    }
}
