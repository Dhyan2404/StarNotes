package net.p110sf.saxon.type;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.FunctionAnnotationHandler;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.query.Annotation;
import net.p110sf.saxon.query.AnnotationList;

/* loaded from: classes11.dex */
public class AnyFunctionTypeWithAssertions extends AnyFunctionType {

    /* renamed from: e */
    public final AnnotationList f102757e;

    /* renamed from: f */
    public final Configuration f102758f;

    public AnyFunctionTypeWithAssertions(AnnotationList annotationList, Configuration configuration) {
        this.f102757e = annotationList;
        this.f102758f = configuration;
    }

    /* renamed from: a */
    public static boolean m64618a(AnnotationList annotationList, Function function, Configuration configuration) {
        AnnotationList annotations = function.getAnnotations();
        Iterator<Annotation> it2 = annotationList.iterator();
        while (it2.hasNext()) {
            Annotation next = it2.next();
            FunctionAnnotationHandler functionAnnotationHandler = configuration.getFunctionAnnotationHandler(next.getAnnotationQName().getURI());
            if (functionAnnotationHandler != null && !functionAnnotationHandler.satisfiesAssertion(next, annotations)) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public AnnotationList getAnnotationAssertions() {
        return this.f102757e;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return (item instanceof Function) && m64618a(this.f102757e, (Function) item, typeHierarchy.getConfiguration());
    }
}
