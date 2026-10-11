package net.p110sf.saxon.transpile;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes11.dex */
public @interface CSharpReplaceException {
    String from();

    /* renamed from: to */
    String m64506to();
}
