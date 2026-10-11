package com.thegrizzlylabs.sardineandroid.util;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.thegrizzlylabs.sardineandroid.model.EntityWithAnyElement;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.convert.Converter;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

/* loaded from: classes10.dex */
public class EntityWithAnyElementConverter<T extends EntityWithAnyElement> implements Converter<T> {

    /* renamed from: a */
    public Class<T> f93867a;

    /* renamed from: b */
    public Serializer f93868b;

    public EntityWithAnyElementConverter(Serializer serializer, Class<T> cls) {
        this.f93868b = serializer;
        this.f93867a = cls;
    }

    /* renamed from: a */
    public final Map<String, Field> m60287a() {
        HashMap hashMap = new HashMap();
        for (Field field : this.f93867a.getDeclaredFields()) {
            Element element = (Element) field.getAnnotation(Element.class);
            if (element != null) {
                hashMap.put(element.name().equals("") ? field.getName() : element.name(), field);
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    public final Method m60288b(Field field) throws NoSuchMethodException {
        String name = field.getName();
        String str = name.substring(0, 1).toUpperCase() + name.substring(1);
        return this.f93867a.getMethod("get" + str, new Class[0]);
    }

    /* renamed from: c */
    public final Method m60289c(Field field) throws NoSuchMethodException {
        String name = field.getName();
        String str = name.substring(0, 1).toUpperCase() + name.substring(1);
        return this.f93867a.getMethod(ExtensionNamespaceContext.EXSLT_SET_PREFIX + str, field.getType());
    }

    /* renamed from: d */
    public final void m60290d(InputNode inputNode) throws Exception {
        do {
        } while (inputNode.getNext() != null);
    }

    @Override // org.simpleframework.xml.convert.Converter
    public T read(InputNode inputNode) throws Exception {
        Map<String, Field> m60287a = m60287a();
        T newInstance = this.f93867a.newInstance();
        List<org.w3c.dom.Element> any = newInstance.getAny();
        while (true) {
            InputNode next = inputNode.getNext();
            if (next == null) {
                return newInstance;
            }
            if (m60287a.containsKey(next.getName())) {
                Field field = m60287a.get(next.getName());
                m60289c(field).invoke(newInstance, this.f93868b.read((Class) field.getType(), next));
            } else if (next.getPrefix() != null && !next.getPrefix().isEmpty()) {
                any.add(ElementConverter.read(next));
            } else {
                m60290d(next);
            }
        }
    }

    @Override // org.simpleframework.xml.convert.Converter
    public void write(OutputNode outputNode, T t) throws Exception {
        Iterator<org.w3c.dom.Element> it2 = t.getAny().iterator();
        while (it2.hasNext()) {
            ElementConverter.write(outputNode, it2.next());
        }
        Map<String, Field> m60287a = m60287a();
        for (String str : m60287a.keySet()) {
            Object invoke = m60288b(m60287a.get(str)).invoke(t, new Object[0]);
            if (invoke != null) {
                if (invoke instanceof String) {
                    OutputNode child = outputNode.getChild(str);
                    child.setReference(SardineUtil.DEFAULT_NAMESPACE_URI);
                    child.setValue((String) invoke);
                } else {
                    this.f93868b.write(invoke, outputNode);
                }
            }
        }
    }
}
