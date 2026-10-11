package net.p110sf.saxon.query;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.FunctionAnnotationHandler;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class AnnotationList implements Iterable<Annotation> {
    public static AnnotationList EMPTY = new AnnotationList(Collections.emptyList());

    /* renamed from: e */
    public final List<Annotation> f100971e;

    public AnnotationList(List<Annotation> list) {
        this.f100971e = list;
    }

    public static AnnotationList singleton(Annotation annotation) {
        return new AnnotationList(Collections.singletonList(annotation));
    }

    /* renamed from: a */
    public final Map<String, List<Annotation>> m63480a() {
        HashMap hashMap = new HashMap();
        for (Annotation annotation : this.f100971e) {
            String uri = annotation.getAnnotationQName().getURI();
            if (hashMap.containsKey(uri)) {
                ((List) hashMap.get(uri)).add(annotation);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(annotation);
                hashMap.put(uri, arrayList);
            }
        }
        return hashMap;
    }

    public void check(Configuration configuration, String str) throws XPathException {
        for (Map.Entry<String, List<Annotation>> entry : m63480a().entrySet()) {
            FunctionAnnotationHandler functionAnnotationHandler = configuration.getFunctionAnnotationHandler(entry.getKey());
            if (functionAnnotationHandler != null) {
                functionAnnotationHandler.check(new AnnotationList(entry.getValue()), str);
            }
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof AnnotationList) && this.f100971e.equals(((AnnotationList) obj).f100971e);
    }

    public AnnotationList filterByNamespace(String str) {
        ArrayList arrayList = new ArrayList();
        for (Annotation annotation : this.f100971e) {
            if (annotation.getAnnotationQName().hasURI(str)) {
                arrayList.add(annotation);
            }
        }
        return new AnnotationList(arrayList);
    }

    public Annotation get(int i) {
        return this.f100971e.get(i);
    }

    public int hashCode() {
        return this.f100971e.hashCode();
    }

    public boolean includes(StructuredQName structuredQName) {
        Iterator<Annotation> it2 = this.f100971e.iterator();
        while (it2.hasNext()) {
            if (it2.next().getAnnotationQName().equals(structuredQName)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEmpty() {
        return this.f100971e.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<Annotation> iterator() {
        return this.f100971e.iterator();
    }

    public int size() {
        return this.f100971e.size();
    }

    public boolean includes(String str) {
        Iterator<Annotation> it2 = this.f100971e.iterator();
        while (it2.hasNext()) {
            if (it2.next().getAnnotationQName().getLocalPart().equals(str)) {
                return true;
            }
        }
        return false;
    }
}
