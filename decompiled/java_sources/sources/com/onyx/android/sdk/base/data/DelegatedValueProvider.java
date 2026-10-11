package com.onyx.android.sdk.base.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003J\"\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0005\u001a\u00028\u00002\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0096\u0002¢\u0006\u0002\u0010\bJ\u0011\u0010\t\u001a\u00028\u0001*\u00028\u0000H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "CONTEXT", "RESULT", "", "getValue", "context", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "provideValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface DelegatedValueProvider<CONTEXT, RESULT> {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static <CONTEXT, RESULT> RESULT getValue(@NotNull DelegatedValueProvider<CONTEXT, RESULT> delegatedValueProvider, CONTEXT context, @NotNull KProperty<?> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            return delegatedValueProvider.provideValue(context);
        }
    }

    RESULT getValue(CONTEXT context, @NotNull KProperty<?> property);

    RESULT provideValue(CONTEXT context);
}
