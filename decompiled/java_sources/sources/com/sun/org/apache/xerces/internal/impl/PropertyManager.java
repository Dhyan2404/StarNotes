package com.sun.org.apache.xerces.internal.impl;

import com.sun.xml.internal.stream.StaxEntityResolverWrapper;
import java.util.HashMap;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLResolver;

/* loaded from: classes10.dex */
public class PropertyManager {
    public static final int CONTEXT_READER = 1;
    public static final int CONTEXT_WRITER = 2;
    protected static final String STAX_ENTITIES = "javax.xml.stream.entities";
    protected static final String STAX_NOTATIONS = "javax.xml.stream.notations";
    private static final String STRING_INTERNING = "http://xml.org/sax/features/string-interning".intern();
    HashMap supportedProps = new HashMap();

    public PropertyManager(int i) {
        if (i == 1) {
            initConfigurableReaderProperties();
        } else {
            if (i != 2) {
                return;
            }
            initWriterProps();
        }
    }

    private HashMap getProperties() {
        return this.supportedProps;
    }

    private void initConfigurableReaderProperties() {
        HashMap hashMap = this.supportedProps;
        Boolean bool = Boolean.TRUE;
        hashMap.put(XMLInputFactory.IS_NAMESPACE_AWARE, bool);
        HashMap hashMap2 = this.supportedProps;
        Boolean bool2 = Boolean.FALSE;
        hashMap2.put(XMLInputFactory.IS_VALIDATING, bool2);
        this.supportedProps.put(XMLInputFactory.IS_REPLACING_ENTITY_REFERENCES, bool);
        this.supportedProps.put(XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES, bool);
        this.supportedProps.put(XMLInputFactory.IS_COALESCING, bool2);
        this.supportedProps.put(XMLInputFactory.SUPPORT_DTD, bool);
        this.supportedProps.put(XMLInputFactory.REPORTER, null);
        this.supportedProps.put(XMLInputFactory.RESOLVER, null);
        this.supportedProps.put(XMLInputFactory.ALLOCATOR, null);
        this.supportedProps.put(STAX_NOTATIONS, null);
        this.supportedProps.put("http://xml.org/sax/features/string-interning", new Boolean(true));
        this.supportedProps.put("http://apache.org/xml/features/allow-java-encodings", new Boolean(true));
        this.supportedProps.put(Constants.ADD_NAMESPACE_DECL_AS_ATTRIBUTE, bool2);
        this.supportedProps.put(Constants.READER_IN_DEFINED_STATE, new Boolean(true));
        this.supportedProps.put(Constants.REUSE_INSTANCE, new Boolean(true));
        this.supportedProps.put("http://java.sun.com/xml/stream/properties/report-cdata-event", new Boolean(false));
        this.supportedProps.put("http://apache.org/xml/features/validation/warn-on-duplicate-attdef", new Boolean(false));
        this.supportedProps.put("http://apache.org/xml/features/warn-on-duplicate-entitydef", new Boolean(false));
        this.supportedProps.put("http://apache.org/xml/features/validation/warn-on-undeclared-elemdef", new Boolean(false));
    }

    private void initWriterProps() {
        this.supportedProps.put(XMLOutputFactory.IS_REPAIRING_NAMESPACES, Boolean.FALSE);
        this.supportedProps.put(Constants.ESCAPE_CHARACTERS, Boolean.TRUE);
        this.supportedProps.put(Constants.REUSE_INSTANCE, new Boolean(true));
    }

    public boolean containsProperty(String str) {
        return this.supportedProps.containsKey(str);
    }

    public Object getProperty(String str) {
        if (str != null && this.supportedProps.containsKey(str)) {
            return this.supportedProps.get(str);
        }
        return null;
    }

    public void setProperty(String str, Object obj) {
        String str2;
        if (str == XMLInputFactory.IS_NAMESPACE_AWARE || str.equals(XMLInputFactory.IS_NAMESPACE_AWARE)) {
            str2 = "http://apache.org/xml/features/namespaces";
        } else {
            if (str != XMLInputFactory.IS_VALIDATING && !str.equals(XMLInputFactory.IS_VALIDATING)) {
                String str3 = STRING_INTERNING;
                if (str == str3 || str.equals(str3)) {
                    if ((obj instanceof Boolean) && !((Boolean) obj).booleanValue()) {
                        throw new IllegalArgumentException("false value of " + str3 + "feature is not supported");
                    }
                } else if (str == XMLInputFactory.RESOLVER || str.equals(XMLInputFactory.RESOLVER)) {
                    this.supportedProps.put("http://apache.org/xml/properties/internal/stax-entity-resolver", new StaxEntityResolverWrapper((XMLResolver) obj));
                }
            } else if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                throw new IllegalArgumentException("true value of isValidating not supported");
            }
            str2 = null;
        }
        this.supportedProps.put(str, obj);
        if (str2 != null) {
            this.supportedProps.put(str2, obj);
        }
    }

    public String toString() {
        return this.supportedProps.toString();
    }

    public PropertyManager(PropertyManager propertyManager) {
        this.supportedProps.putAll(propertyManager.getProperties());
    }
}
