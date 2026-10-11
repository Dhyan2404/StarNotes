package org.apache.poi.ooxml.util;

import com.microsoft.schemas.compatibility.AlternateContentDocument;
import java.util.Locale;
import javax.xml.namespace.QName;
import javax.xml.xpath.XPathFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.XmlAnyTypeImpl;

/* loaded from: classes12.dex */
public final class XPathHelper {
    private static final String MAC_DML_NS = "http://schemas.microsoft.com/office/mac/drawingml/2008/main";
    private static final String MC_NS = "http://schemas.openxmlformats.org/markup-compatibility/2006";
    private static final String OSGI_ERROR = "Schemas (*.xsb) for <CLASS> can't be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar";
    static final XPathFactory xpathFactory;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XPathHelper.class);
    private static final QName ALTERNATE_CONTENT_TAG = new QName("http://schemas.openxmlformats.org/markup-compatibility/2006", "AlternateContent");

    static {
        XPathFactory newInstance = XPathFactory.newInstance();
        xpathFactory = newInstance;
        trySetFeature(newInstance, "http://javax.xml.XMLConstants/feature/secure-processing", true);
    }

    private XPathHelper() {
    }

    public static XPathFactory getFactory() {
        return xpathFactory;
    }

    @Internal
    public static <T extends XmlObject> T selectProperty(XmlObject xmlObject, Class<T> cls, XSLFShape.ReparseFactory<T> reparseFactory, QName[]... qNameArr) throws XmlException {
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            XmlCursor selectProperty = selectProperty(newCursor, qNameArr, 0, reparseFactory != null, false);
            if (selectProperty == null) {
                if (selectProperty != null) {
                    selectProperty.close();
                }
                if (newCursor == null) {
                    return null;
                }
                newCursor.close();
                return null;
            }
            try {
                T t = (T) selectProperty.getObject();
                if (t instanceof XmlAnyTypeImpl) {
                    String replace = OSGI_ERROR.replace("<CLASS>", cls.getSimpleName()).replace("<XSB>", cls.getSimpleName().toLowerCase(Locale.ROOT) + "*");
                    if (reparseFactory != null) {
                        t = reparseFactory.parse(selectProperty.newXMLStreamReader());
                    } else {
                        throw new XmlException(replace);
                    }
                }
                selectProperty.close();
                if (newCursor != null) {
                    newCursor.close();
                }
                return t;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static void trySetFeature(XPathFactory xPathFactory, String str, boolean z) {
        try {
            xPathFactory.setFeature(str, z);
        } catch (AbstractMethodError e) {
            LOG.atWarn().withThrowable(e).log("Cannot set XPathFactory feature ({}) because outdated XML parser in classpath", str);
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("XPathFactory Feature ({}) unsupported", str);
        }
    }

    private static XmlCursor selectProperty(XmlCursor xmlCursor, QName[][] qNameArr, int i, boolean z, boolean z2) throws XmlException {
        AlternateContentDocument.AlternateContent alternateContent;
        XmlCursor selectProperty;
        for (QName qName : qNameArr[i]) {
            boolean child = xmlCursor.toChild(qName);
            while (child) {
                if (i == qNameArr.length - 1) {
                    return xmlCursor;
                }
                xmlCursor.push();
                XmlCursor selectProperty2 = selectProperty(xmlCursor, qNameArr, i + 1, z, false);
                if (selectProperty2 != null) {
                    return selectProperty2;
                }
                xmlCursor.pop();
                child = xmlCursor.toNextSibling(qName);
            }
        }
        if (z2 || !xmlCursor.toChild(ALTERNATE_CONTENT_TAG)) {
            return null;
        }
        XmlObject object = xmlCursor.getObject();
        if (object instanceof AlternateContentDocument.AlternateContent) {
            alternateContent = (AlternateContentDocument.AlternateContent) object;
        } else if (z) {
            try {
                alternateContent = AlternateContentDocument.Factory.parse(xmlCursor.newXMLStreamReader()).getAlternateContent();
            } catch (XmlException e) {
                throw new XmlException("unable to parse AlternateContent element", e);
            }
        } else {
            throw new XmlException(OSGI_ERROR.replace("<CLASS>", "AlternateContent").replace("<XSB>", "alternatecontentelement"));
        }
        int sizeOfChoiceArray = alternateContent.sizeOfChoiceArray();
        for (int i2 = 0; i2 < sizeOfChoiceArray; i2++) {
            AlternateContentDocument.AlternateContent.Choice choiceArray = alternateContent.getChoiceArray(i2);
            XmlCursor newCursor = choiceArray.newCursor();
            try {
                if (MAC_DML_NS.equalsIgnoreCase(newCursor.namespaceForPrefix(choiceArray.getRequires())) || (selectProperty = selectProperty(newCursor, qNameArr, i, z, true)) == null || selectProperty == newCursor) {
                    newCursor.close();
                } else {
                    newCursor.close();
                    return selectProperty;
                }
            } finally {
            }
        }
        if (!alternateContent.isSetFallback()) {
            return null;
        }
        XmlCursor newCursor2 = alternateContent.getFallback().newCursor();
        try {
            XmlCursor selectProperty3 = selectProperty(newCursor2, qNameArr, i, z, true);
            if (selectProperty3 != newCursor2) {
                newCursor2.close();
            }
            return selectProperty3;
        } catch (Throwable th) {
            if (newCursor2 != null) {
                newCursor2.close();
            }
            throw th;
        }
    }
}
