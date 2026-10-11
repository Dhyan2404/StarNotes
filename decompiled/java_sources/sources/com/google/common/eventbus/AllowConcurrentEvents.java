package com.google.common.eventbus;

import com.sunia.HTREnginev2.unf;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@unf
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes6.dex */
public @interface AllowConcurrentEvents {
}
