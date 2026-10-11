package net.p110sf.saxon.query;

import androidx.room.FtsOptions;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Annotation {

    /* renamed from: a */
    public StructuredQName f100969a;

    /* renamed from: b */
    public List<AtomicValue> f100970b = null;
    public static final StructuredQName UPDATING = new StructuredQName("", NamespaceConstant.XQUERY, "updating");
    public static final StructuredQName SIMPLE = new StructuredQName("", NamespaceConstant.XQUERY, FtsOptions.TOKENIZER_SIMPLE);
    public static final StructuredQName PRIVATE = new StructuredQName("", NamespaceConstant.XQUERY, "private");
    public static final StructuredQName PUBLIC = new StructuredQName("", NamespaceConstant.XQUERY, "public");

    public Annotation(StructuredQName structuredQName) {
        this.f100969a = structuredQName;
    }

    /* renamed from: a */
    public static boolean m63479a(AtomicValue atomicValue, AtomicValue atomicValue2) {
        return ((atomicValue instanceof StringValue) && (atomicValue2 instanceof StringValue)) ? atomicValue.getUnicodeStringValue().equals(atomicValue2.getUnicodeStringValue()) : (atomicValue instanceof NumericValue) && (atomicValue2 instanceof NumericValue) && ((NumericValue) atomicValue).getDoubleValue() == ((NumericValue) atomicValue2).getDoubleValue();
    }

    public void addAnnotationParameter(AtomicValue atomicValue) {
        if (this.f100970b == null) {
            this.f100970b = new ArrayList();
        }
        this.f100970b.add(atomicValue);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Annotation) {
            Annotation annotation = (Annotation) obj;
            if (this.f100969a.equals(annotation.f100969a) && getAnnotationParameters().size() == annotation.getAnnotationParameters().size()) {
                for (int i = 0; i < this.f100970b.size(); i++) {
                    if (!m63479a(this.f100970b.get(i), annotation.f100970b.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public List<AtomicValue> getAnnotationParameters() {
        if (this.f100970b == null) {
            this.f100970b = new ArrayList();
        }
        return this.f100970b;
    }

    public StructuredQName getAnnotationQName() {
        return this.f100969a;
    }

    public int hashCode() {
        return this.f100970b.hashCode() ^ this.f100969a.hashCode();
    }
}
