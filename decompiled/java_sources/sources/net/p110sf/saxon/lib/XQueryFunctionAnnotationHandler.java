package net.p110sf.saxon.lib;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.Annotation;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;

/* loaded from: classes11.dex */
public class XQueryFunctionAnnotationHandler implements FunctionAnnotationHandler {

    /* renamed from: a */
    public static final C18396a[] f100589a;

    /* renamed from: net.sf.saxon.lib.XQueryFunctionAnnotationHandler$a */
    /* loaded from: classes11.dex */
    public static class C18396a {

        /* renamed from: a */
        public StructuredQName f100590a;

        /* renamed from: b */
        public StructuredQName f100591b;

        /* renamed from: c */
        public String f100592c;

        /* renamed from: d */
        public Set<String> f100593d;

        public C18396a(StructuredQName structuredQName, StructuredQName structuredQName2, String str, String... strArr) {
            this.f100590a = structuredQName;
            this.f100591b = structuredQName2;
            this.f100592c = str;
            HashSet hashSet = new HashSet(strArr.length);
            this.f100593d = hashSet;
            Collections.addAll(hashSet, strArr);
        }
    }

    static {
        StructuredQName structuredQName = Annotation.SIMPLE;
        StructuredQName structuredQName2 = Annotation.UPDATING;
        StructuredQName structuredQName3 = Annotation.PUBLIC;
        StructuredQName structuredQName4 = Annotation.PRIVATE;
        f100589a = new C18396a[]{new C18396a(structuredQName, null, "XUST0032", "DV"), new C18396a(structuredQName2, null, "XUST0032", "DV"), new C18396a(structuredQName3, null, "XQST0125", "IF"), new C18396a(structuredQName4, null, "XQST0125", "IF"), new C18396a(structuredQName4, structuredQName4, "XQST0106", "DF"), new C18396a(structuredQName4, structuredQName3, "XQST0106", "DF"), new C18396a(structuredQName3, structuredQName3, "XQST0106", "DF"), new C18396a(structuredQName3, structuredQName4, "XQST0106", "DF"), new C18396a(structuredQName4, structuredQName4, "XQST0116", "DV"), new C18396a(structuredQName4, structuredQName3, "XQST0116", "DV"), new C18396a(structuredQName3, structuredQName3, "XQST0116", "DV"), new C18396a(structuredQName3, structuredQName4, "XQST0116", "DV"), new C18396a(structuredQName2, structuredQName2, "XUST0033", "DF", "IF"), new C18396a(structuredQName2, structuredQName, "XUST0033", "DF", "IF"), new C18396a(structuredQName, structuredQName, "XUST0033", "DF", "IF"), new C18396a(structuredQName, structuredQName2, "XUST0033", "DF", "IF")};
    }

    @Override // net.p110sf.saxon.lib.FunctionAnnotationHandler
    public void check(AnnotationList annotationList, String str) throws XPathException {
        for (int i = 0; i < annotationList.size(); i++) {
            Annotation annotation = annotationList.get(i);
            for (C18396a c18396a : f100589a) {
                if (c18396a.f100590a.equals(annotation.getAnnotationQName()) && c18396a.f100593d.contains(str)) {
                    if (c18396a.f100591b == null) {
                        throw new XPathException("Annotation %" + annotation.getAnnotationQName().getLocalPart() + " is not allowed here", c18396a.f100592c);
                    }
                    for (int i2 = 0; i2 < i; i2++) {
                        Annotation annotation2 = annotationList.get(i2);
                        if (c18396a.f100591b.equals(annotation2.getAnnotationQName())) {
                            if (c18396a.f100591b.equals(annotation.getAnnotationQName())) {
                                throw new XPathException("Annotation %" + annotation.getAnnotationQName().getLocalPart() + " cannot appear more than once", c18396a.f100592c);
                            }
                            throw new XPathException("Annotations %" + annotation.getAnnotationQName().getLocalPart() + CloudStorageConstants.OPERATION_AND + annotation2.getAnnotationQName().getLocalPart() + " cannot appear together", c18396a.f100592c);
                        }
                    }
                }
            }
        }
    }

    @Override // net.p110sf.saxon.lib.FunctionAnnotationHandler
    public String getAssertionNamespace() {
        return NamespaceConstant.XQUERY;
    }

    @Override // net.p110sf.saxon.lib.FunctionAnnotationHandler
    public Affinity relationship(AnnotationList annotationList, AnnotationList annotationList2) {
        return Affinity.OVERLAPS;
    }

    @Override // net.p110sf.saxon.lib.FunctionAnnotationHandler
    public boolean satisfiesAssertion(Annotation annotation, AnnotationList annotationList) {
        return true;
    }
}
