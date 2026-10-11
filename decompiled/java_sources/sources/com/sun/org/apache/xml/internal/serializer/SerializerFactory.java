package com.sun.org.apache.xml.internal.serializer;

import com.sun.org.apache.xml.internal.serializer.utils.MsgKey;
import com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException;
import java.util.Hashtable;
import java.util.Properties;
import org.xml.sax.ContentHandler;

/* loaded from: classes10.dex */
public final class SerializerFactory {
    private static Hashtable m_formats = new Hashtable();

    private SerializerFactory() {
    }

    public static Serializer getSerializer(Properties properties) {
        try {
            String property = properties.getProperty("method");
            if (property == null) {
                throw new IllegalArgumentException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage(MsgKey.ER_FACTORY_PROPERTY_MISSING, new Object[]{"method"}));
            }
            String property2 = properties.getProperty(OutputPropertiesFactory.S_KEY_CONTENT_HANDLER);
            if (property2 == null && (property2 = OutputPropertiesFactory.getDefaultMethodProperties(property).getProperty(OutputPropertiesFactory.S_KEY_CONTENT_HANDLER)) == null) {
                throw new IllegalArgumentException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage(MsgKey.ER_FACTORY_PROPERTY_MISSING, new Object[]{OutputPropertiesFactory.S_KEY_CONTENT_HANDLER}));
            }
            ClassLoader findClassLoader = ObjectFactory.findClassLoader();
            Class findProviderClass = ObjectFactory.findProviderClass(property2, findClassLoader, true);
            Object newInstance = findProviderClass.newInstance();
            if (newInstance instanceof SerializationHandler) {
                Serializer serializer = (Serializer) findProviderClass.newInstance();
                serializer.setOutputFormat(properties);
                return serializer;
            }
            if (!(newInstance instanceof ContentHandler)) {
                throw new Exception(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_SERIALIZER_NOT_CONTENTHANDLER", new Object[]{property2}));
            }
            SerializationHandler serializationHandler = (SerializationHandler) ObjectFactory.findProviderClass(SerializerConstants.DEFAULT_SAX_SERIALIZER, findClassLoader, true).newInstance();
            serializationHandler.setContentHandler((ContentHandler) newInstance);
            serializationHandler.setOutputFormat(properties);
            return serializationHandler;
        } catch (Exception e) {
            throw new WrappedRuntimeException(e);
        }
    }
}
