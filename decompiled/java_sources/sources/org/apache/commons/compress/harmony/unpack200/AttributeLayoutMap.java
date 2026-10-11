package org.apache.commons.compress.harmony.unpack200;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* loaded from: classes12.dex */
public class AttributeLayoutMap {

    /* renamed from: a */
    public final Map<Integer, AttributeLayout> f106832a;

    /* renamed from: b */
    public final Map<Integer, AttributeLayout> f106833b;

    /* renamed from: c */
    public final Map<Integer, AttributeLayout> f106834c;

    /* renamed from: d */
    public final Map<Integer, AttributeLayout> f106835d;

    /* renamed from: e */
    public final Map[] f106836e;

    /* renamed from: f */
    public final Map<AttributeLayout, NewAttributeBands> f106837f;

    public AttributeLayoutMap() throws Pack200Exception {
        HashMap hashMap = new HashMap();
        this.f106832a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f106833b = hashMap2;
        HashMap hashMap3 = new HashMap();
        this.f106834c = hashMap3;
        HashMap hashMap4 = new HashMap();
        this.f106835d = hashMap4;
        this.f106836e = new Map[]{hashMap, hashMap2, hashMap3, hashMap4};
        this.f106837f = new HashMap();
        for (AttributeLayout attributeLayout : m67015a()) {
            add(attributeLayout);
        }
    }

    /* renamed from: a */
    public static AttributeLayout[] m67015a() throws Pack200Exception {
        return new AttributeLayout[]{new AttributeLayout(AttributeLayout.ACC_PUBLIC, 0, "", 0), new AttributeLayout(AttributeLayout.ACC_PUBLIC, 1, "", 0), new AttributeLayout(AttributeLayout.ACC_PUBLIC, 2, "", 0), new AttributeLayout(AttributeLayout.ACC_PRIVATE, 0, "", 1), new AttributeLayout(AttributeLayout.ACC_PRIVATE, 1, "", 1), new AttributeLayout(AttributeLayout.ACC_PRIVATE, 2, "", 1), new AttributeLayout(AttributeLayout.ATTRIBUTE_LINE_NUMBER_TABLE, 3, "NH[PHH]", 1), new AttributeLayout(AttributeLayout.ACC_PROTECTED, 0, "", 2), new AttributeLayout(AttributeLayout.ACC_PROTECTED, 1, "", 2), new AttributeLayout(AttributeLayout.ACC_PROTECTED, 2, "", 2), new AttributeLayout(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TABLE, 3, "NH[PHOHRUHRSHH]", 2), new AttributeLayout(AttributeLayout.ACC_STATIC, 0, "", 3), new AttributeLayout(AttributeLayout.ACC_STATIC, 1, "", 3), new AttributeLayout(AttributeLayout.ACC_STATIC, 2, "", 3), new AttributeLayout(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE, 3, "NH[PHOHRUHRSHH]", 3), new AttributeLayout(AttributeLayout.ACC_FINAL, 0, "", 4), new AttributeLayout(AttributeLayout.ACC_FINAL, 1, "", 4), new AttributeLayout(AttributeLayout.ACC_FINAL, 2, "", 4), new AttributeLayout(AttributeLayout.ACC_SYNCHRONIZED, 0, "", 5), new AttributeLayout(AttributeLayout.ACC_SYNCHRONIZED, 1, "", 5), new AttributeLayout(AttributeLayout.ACC_SYNCHRONIZED, 2, "", 5), new AttributeLayout(AttributeLayout.ACC_VOLATILE, 0, "", 6), new AttributeLayout(AttributeLayout.ACC_VOLATILE, 1, "", 6), new AttributeLayout(AttributeLayout.ACC_VOLATILE, 2, "", 6), new AttributeLayout(AttributeLayout.ACC_TRANSIENT, 0, "", 7), new AttributeLayout(AttributeLayout.ACC_TRANSIENT, 1, "", 7), new AttributeLayout(AttributeLayout.ACC_TRANSIENT, 2, "", 7), new AttributeLayout(AttributeLayout.ACC_NATIVE, 0, "", 8), new AttributeLayout(AttributeLayout.ACC_NATIVE, 1, "", 8), new AttributeLayout(AttributeLayout.ACC_NATIVE, 2, "", 8), new AttributeLayout(AttributeLayout.ACC_INTERFACE, 0, "", 9), new AttributeLayout(AttributeLayout.ACC_INTERFACE, 1, "", 9), new AttributeLayout(AttributeLayout.ACC_INTERFACE, 2, "", 9), new AttributeLayout(AttributeLayout.ACC_ABSTRACT, 0, "", 10), new AttributeLayout(AttributeLayout.ACC_ABSTRACT, 1, "", 10), new AttributeLayout(AttributeLayout.ACC_ABSTRACT, 2, "", 10), new AttributeLayout(AttributeLayout.ACC_STRICT, 0, "", 11), new AttributeLayout(AttributeLayout.ACC_STRICT, 1, "", 11), new AttributeLayout(AttributeLayout.ACC_STRICT, 2, "", 11), new AttributeLayout(AttributeLayout.ACC_SYNTHETIC, 0, "", 12), new AttributeLayout(AttributeLayout.ACC_SYNTHETIC, 1, "", 12), new AttributeLayout(AttributeLayout.ACC_SYNTHETIC, 2, "", 12), new AttributeLayout(AttributeLayout.ACC_ANNOTATION, 0, "", 13), new AttributeLayout(AttributeLayout.ACC_ANNOTATION, 1, "", 13), new AttributeLayout(AttributeLayout.ACC_ANNOTATION, 2, "", 13), new AttributeLayout(AttributeLayout.ACC_ENUM, 0, "", 14), new AttributeLayout(AttributeLayout.ACC_ENUM, 1, "", 14), new AttributeLayout(AttributeLayout.ACC_ENUM, 2, "", 14), new AttributeLayout(AttributeLayout.ATTRIBUTE_SOURCE_FILE, 0, "RUNH", 17), new AttributeLayout(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE, 1, "KQH", 17), new AttributeLayout(AttributeLayout.ATTRIBUTE_CODE, 2, "", 17), new AttributeLayout(AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD, 0, "RCHRDNH", 18), new AttributeLayout(AttributeLayout.ATTRIBUTE_EXCEPTIONS, 2, "NH[RCH]", 18), new AttributeLayout("Signature", 0, "RSH", 19), new AttributeLayout("Signature", 1, "RSH", 19), new AttributeLayout("Signature", 2, "RSH", 19), new AttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 0, "", 20), new AttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 1, "", 20), new AttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 2, "", 20), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 0, "*", 21), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 1, "*", 21), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 2, "*", 21), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 0, "*", 22), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 1, "*", 22), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 2, "*", 22), new AttributeLayout(AttributeLayout.ATTRIBUTE_INNER_CLASSES, 0, "", 23), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS, 2, "*", 23), new AttributeLayout(AttributeLayout.ATTRIBUTE_CLASS_FILE_VERSION, 0, "", 24), new AttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS, 2, "*", 24), new AttributeLayout(AttributeLayout.ATTRIBUTE_ANNOTATION_DEFAULT, 2, "*", 25)};
    }

    public void add(AttributeLayout attributeLayout) {
        m67016b(attributeLayout.getContext()).put(Integer.valueOf(attributeLayout.getIndex()), attributeLayout);
    }

    /* renamed from: b */
    public final Map<Integer, AttributeLayout> m67016b(int i) {
        return this.f106836e[i];
    }

    public void checkMap() throws Pack200Exception {
        for (Map map : this.f106836e) {
            Collection values = map.values();
            if (!(values instanceof List)) {
                values = new ArrayList(values);
            }
            List list = (List) values;
            int i = 0;
            while (i < list.size()) {
                AttributeLayout attributeLayout = (AttributeLayout) list.get(i);
                i++;
                for (int i2 = i; i2 < list.size(); i2++) {
                    AttributeLayout attributeLayout2 = (AttributeLayout) list.get(i2);
                    if (attributeLayout.getName().equals(attributeLayout2.getName()) && attributeLayout.getLayout().equals(attributeLayout2.getLayout())) {
                        throw new Pack200Exception("Same layout/name combination: " + attributeLayout.getLayout() + "/" + attributeLayout.getName() + " exists twice for context: " + AttributeLayout.contextNames[attributeLayout.getContext()]);
                    }
                }
            }
        }
    }

    public NewAttributeBands getAttributeBands(AttributeLayout attributeLayout) {
        return this.f106837f.get(attributeLayout);
    }

    public AttributeLayout getAttributeLayout(int i, int i2) {
        return m67016b(i2).get(Integer.valueOf(i));
    }

    public void add(AttributeLayout attributeLayout, NewAttributeBands newAttributeBands) {
        add(attributeLayout);
        this.f106837f.put(attributeLayout, newAttributeBands);
    }

    public AttributeLayout getAttributeLayout(String str, int i) {
        for (AttributeLayout attributeLayout : m67016b(i).values()) {
            if (attributeLayout.getName().equals(str)) {
                return attributeLayout;
            }
        }
        return null;
    }
}
