package net.p110sf.saxon.lib;

import net.p110sf.saxon.query.Annotation;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;

/* loaded from: classes11.dex */
public interface FunctionAnnotationHandler {
    void check(AnnotationList annotationList, String str) throws XPathException;

    String getAssertionNamespace();

    Affinity relationship(AnnotationList annotationList, AnnotationList annotationList2);

    boolean satisfiesAssertion(Annotation annotation, AnnotationList annotationList);
}
