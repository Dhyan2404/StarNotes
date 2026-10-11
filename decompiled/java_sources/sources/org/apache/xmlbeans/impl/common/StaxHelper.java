package org.apache.xmlbeans.impl.common;

import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLOutputFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.XmlOptions;

/* loaded from: classes13.dex */
public final class StaxHelper {
    private static final Logger LOG = LogManager.getLogger((Class<?>) StaxHelper.class);

    private StaxHelper() {
    }

    public static XMLEventFactory newXMLEventFactory(XmlOptions xmlOptions) {
        return XMLEventFactory.newFactory();
    }

    public static XMLInputFactory newXMLInputFactory(XmlOptions xmlOptions) {
        XMLInputFactory newFactory = XMLInputFactory.newFactory();
        trySetProperty(newFactory, XMLInputFactory.IS_NAMESPACE_AWARE, true);
        trySetProperty(newFactory, XMLInputFactory.IS_VALIDATING, false);
        trySetProperty(newFactory, XMLInputFactory.SUPPORT_DTD, xmlOptions.isLoadDTDGrammar());
        trySetProperty(newFactory, XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES, xmlOptions.isLoadExternalDTD());
        return newFactory;
    }

    public static XMLOutputFactory newXMLOutputFactory(XmlOptions xmlOptions) {
        XMLOutputFactory newFactory = XMLOutputFactory.newFactory();
        trySetProperty(newFactory, XMLOutputFactory.IS_REPAIRING_NAMESPACES, true);
        return newFactory;
    }

    private static void trySetProperty(XMLInputFactory xMLInputFactory, String str, boolean z) {
        try {
            xMLInputFactory.setProperty(str, Boolean.valueOf(z));
        } catch (AbstractMethodError e) {
            LOG.atWarn().withThrowable(e).log("Cannot set StAX property {} because outdated StAX parser in classpath", str);
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("StAX Property unsupported: {}", str);
        }
    }

    private static void trySetProperty(XMLOutputFactory xMLOutputFactory, String str, boolean z) {
        try {
            xMLOutputFactory.setProperty(str, Boolean.valueOf(z));
        } catch (AbstractMethodError e) {
            LOG.atWarn().withThrowable(e).log("Cannot set StAX property {} because outdated StAX parser in classpath", str);
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("StAX Property unsupported: {}", str);
        }
    }
}
