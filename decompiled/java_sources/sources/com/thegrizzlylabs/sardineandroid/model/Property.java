package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.ElementConverter;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.convert.Converter;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.w3c.dom.Element;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root(strict = false)
/* loaded from: classes10.dex */
public class Property {
    private Element property;

    /* loaded from: classes10.dex */
    public static class PropertyConverter implements Converter<Property> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.simpleframework.xml.convert.Converter
        public Property read(InputNode inputNode) throws Exception {
            Property property = new Property();
            InputNode next = inputNode.getNext();
            if (next != null) {
                property.setProperty(ElementConverter.read(next));
            }
            return property;
        }

        @Override // org.simpleframework.xml.convert.Converter
        public void write(OutputNode outputNode, Property property) throws Exception {
            ElementConverter.write(outputNode, property.property);
        }
    }

    public Element getProperty() {
        return this.property;
    }

    public void setProperty(Element element) {
        this.property = element;
    }
}
