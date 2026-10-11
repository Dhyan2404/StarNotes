package org.checkerframework.checker.signedness.qual;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.checkerframework.framework.qual.DefaultFor;
import org.checkerframework.framework.qual.SubtypeOf;
import org.checkerframework.framework.qual.TypeKind;
import org.checkerframework.framework.qual.UpperBoundFor;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@DefaultFor(typeKinds = {TypeKind.BYTE, TypeKind.INT, TypeKind.LONG, TypeKind.SHORT, TypeKind.FLOAT, TypeKind.DOUBLE}, types = {Byte.class, Constants.INTEGER_SIG, Long.class, Short.class, Float.class, Constants.DOUBLE_SIG})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@SubtypeOf({UnknownSignedness.class})
@UpperBoundFor(typeKinds = {TypeKind.FLOAT, TypeKind.DOUBLE}, types = {Float.class, Constants.DOUBLE_SIG})
/* loaded from: classes13.dex */
public @interface Signed {
}
