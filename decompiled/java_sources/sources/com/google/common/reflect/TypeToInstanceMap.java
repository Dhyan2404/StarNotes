package com.google.common.reflect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.onf;
import java.util.Map;
import javax.annotation.CheckForNull;

@DoNotMock("Use ImmutableTypeToInstanceMap or MutableTypeToInstanceMap")
@onf
/* loaded from: classes6.dex */
public interface TypeToInstanceMap<B> extends Map<TypeToken<? extends B>, B> {
    @CheckForNull
    <T extends B> T getInstance(TypeToken<T> typeToken);

    @CheckForNull
    <T extends B> T getInstance(Class<T> cls);

    @CanIgnoreReturnValue
    @CheckForNull
    <T extends B> T putInstance(TypeToken<T> typeToken, T t);

    @CanIgnoreReturnValue
    @CheckForNull
    <T extends B> T putInstance(Class<T> cls, T t);
}
