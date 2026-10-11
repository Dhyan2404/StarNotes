package com.onyx.android.sdk.base.extension;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import kotlin.text.CharsKt__CharJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u001aA\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u00032\u0019\b\u0004\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u001a)\u0010\u0007\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000b¢\u0006\u0002\u0010\f\u001a#\u0010\u0007\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\b2\u0006\u0010\n\u001a\u0002H\b¢\u0006\u0002\u0010\r\u001a-\u0010\u000e\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\b2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\b0\u000b¢\u0006\u0002\u0010\f\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\t\u001a;\u0010\u0011\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0002H\b2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u00020\u00130\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000b¢\u0006\u0002\u0010\u0014\u001a=\u0010\u0015\u001a\u00020\u0013\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\bH\u0086\b\u0082\u0002\u001c\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0002\u0010\u0000¢\u0006\u0002\u0010\u0016\u001a=\u0010\u0017\u001a\u00020\u0013\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\bH\u0086\b\u0082\u0002\u001c\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0002\u0010\u0000\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0002\u0010\u0016\u001a%\u0010\u0018\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\b2\b\b\u0002\u0010\u0019\u001a\u00020\u0010¢\u0006\u0002\u0010\u001a\u001aG\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u001d0\u001c\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u001d*\u0002H\b2\b\b\u0002\u0010\u001e\u001a\u00020\u00132\u0017\u0010\u001f\u001a\u0013\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\u001d0\u0005¢\u0006\u0002\b\u0006ø\u0001\u0001¢\u0006\u0002\u0010 \u001aA\u0010!\u001a\u0002H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0002H\b2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u00020\u00130\u00052\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\u0005¢\u0006\u0002\u0010$\u001a\f\u0010%\u001a\u00020\u0010*\u0004\u0018\u00010\t\u001a3\u0010&\u001a\u0002H\u001d\"\u0004\b\u0000\u0010\b\"\b\b\u0001\u0010\u001d*\u00020\t*\u0002H\b2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\u001d0\u0005¢\u0006\u0002\u0010(\u001a1\u0010)\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\b2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u00020+0\u0005¢\u0006\u0002\u0010(\u001a3\u0010,\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\t*\u0004\u0018\u0001H\b2\u0014\u0010*\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\b\u0012\u0004\u0012\u00020+0\u0005¢\u0006\u0002\u0010(\u0082\u0002\u000b\n\u0005\b\u009920\u0001\n\u0002\b\u0019¨\u0006-"}, m61528d2 = {"delegate", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "CONTEXT", "PROPERTY", "getter", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "getOrElse", "T", "", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "getOrElseNull", "hashCodeHexString", "", "ifEmpty", "emptyPredicate", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNotNull", "(Ljava/lang/Object;)Z", "isNull", "requireNonNull", "errorType", "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;", "runCatching", "Lkotlin/Result;", "R", "log", BreakpointSQLiteHelper.f39283i, "(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "takeIf", "predicate", "action", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "toSimpleNameString", Constants.ELEMNAME_TRANSFORM_STRING, Constant.MAP_TAG, "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "whenNotNull", "callback", "", "whenNull", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAny.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n32#1,5:99\n1#2:104\n*S KotlinDebug\n*F\n+ 1 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n54#1:99,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AnyKt {
    public static final /* synthetic */ <CONTEXT, PROPERTY> DelegatedValueProvider<CONTEXT, PROPERTY> delegate(final Function1<? super CONTEXT, ? extends PROPERTY> getter) {
        Intrinsics.checkNotNullParameter(getter, "getter");
        return new DelegatedValueProvider() { // from class: com.onyx.android.sdk.base.extension.AnyKt$delegate$1
            @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
            public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
                return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [PROPERTY, java.lang.Object] */
            @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
            public final PROPERTY provideValue(CONTEXT context) {
                return getter.invoke(context);
            }
        };
    }

    @NotNull
    public static final <T> T getOrElse(@Nullable T t, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return t == null ? defaultValue.invoke() : t;
    }

    @Nullable
    public static final <T> T getOrElseNull(@Nullable T t, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return t == null ? defaultValue.invoke() : t;
    }

    @NotNull
    public static final String hashCodeHexString(@NotNull Object obj) {
        int checkRadix;
        Intrinsics.checkNotNullParameter(obj, "<this>");
        int hashCode = obj.hashCode();
        checkRadix = CharsKt__CharJVMKt.checkRadix(16);
        String num = Integer.toString(hashCode, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        return num;
    }

    @NotNull
    public static final <T> T ifEmpty(@NotNull T t, @NotNull Function1<? super T, Boolean> emptyPredicate, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(emptyPredicate, "emptyPredicate");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return emptyPredicate.invoke(t).booleanValue() ? defaultValue.invoke() : t;
    }

    public static final <T> boolean isNotNull(@Nullable T t) {
        return t != null;
    }

    public static final <T> boolean isNull(@Nullable T t) {
        return t == null;
    }

    @NotNull
    public static final <T> T requireNonNull(@Nullable T t, @NotNull String errorType) {
        Intrinsics.checkNotNullParameter(errorType, "errorType");
        if (t != null) {
            return t;
        }
        throw OnyxException.INSTANCE.m31891of(errorType);
    }

    public static /* synthetic */ Object requireNonNull$default(Object obj, String str, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = BaseError.NULL_OBJECT;
        }
        return requireNonNull(obj, str);
    }

    @NotNull
    public static final <T, R> Object runCatching(T t, boolean z, @NotNull Function1<? super T, ? extends R> block) {
        Object m72621constructorimpl;
        Throwable m72624exceptionOrNullimpl;
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(block.invoke(t));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        if (z && Result.m72627isFailureimpl(m72621constructorimpl) && (m72624exceptionOrNullimpl = Result.m72624exceptionOrNullimpl(m72621constructorimpl)) != null) {
            m72624exceptionOrNullimpl.printStackTrace();
        }
        return m72621constructorimpl;
    }

    public static /* synthetic */ Object runCatching$default(Object obj, boolean z, Function1 function1, int i, Object obj2) {
        if ((i & 1) != 0) {
            z = true;
        }
        return runCatching(obj, z, function1);
    }

    @NotNull
    public static final <T> T takeIf(@NotNull T t, @NotNull Function1<? super T, Boolean> predicate, @NotNull Function1<? super T, ? extends T> action) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(action, "action");
        return predicate.invoke(t).booleanValue() ? action.invoke(t) : t;
    }

    @NotNull
    public static final String toSimpleNameString(@Nullable Object obj) {
        if (obj != null) {
            String str = ClassKt.getCompatSimpleName(obj.getClass()) + '@' + hashCodeHexString(obj);
            if (str != null) {
                return str;
            }
        }
        return "null";
    }

    @NotNull
    public static final <T, R> R transform(T t, @NotNull Function1<? super T, ? extends R> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        return map.invoke(t);
    }

    @Nullable
    public static final <T> T whenNotNull(@Nullable T t, @NotNull Function1<? super T, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (t != null) {
            callback.invoke(t);
        }
        return t;
    }

    @Nullable
    public static final <T> T whenNull(@Nullable T t, @NotNull Function1<? super T, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (t == null) {
            callback.invoke(t);
        }
        return t;
    }

    @NotNull
    public static final <T> T getOrElse(@Nullable T t, @NotNull final T defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (T) getOrElse((Object) t, (Function0) new Function0<T>() { // from class: com.onyx.android.sdk.base.extension.AnyKt$getOrElse$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final T invoke() {
                return defaultValue;
            }
        });
    }
}
