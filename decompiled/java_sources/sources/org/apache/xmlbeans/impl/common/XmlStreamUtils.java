package org.apache.xmlbeans.impl.common;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import javax.xml.stream.XMLStreamReader;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public final class XmlStreamUtils {
    public static String getName(int i) {
        switch (i) {
            case 1:
                return "START_ELEMENT";
            case 2:
                return "END_ELEMENT";
            case 3:
                return "PROCESSING_INSTRUCTION";
            case 4:
                return "CHARACTERS";
            case 5:
                return "COMMENT";
            case 6:
                return "SPACE";
            case 7:
                return "START_DOCUMENT";
            case 8:
                return "END_DOCUMENT";
            case 9:
                return "ENTITY_REFERENCE";
            case 10:
                return "ATTRIBUTE";
            case 11:
                return "DTD";
            case 12:
                return "CDATA";
            case 13:
                return "NAMESPACE";
            default:
                return "UNKNOWN_EVENT_TYPE";
        }
    }

    public static int getType(String str) {
        if (str.equals("START_ELEMENT")) {
            return 1;
        }
        if (str.equals("SPACE")) {
            return 6;
        }
        if (str.equals("END_ELEMENT")) {
            return 2;
        }
        if (str.equals("PROCESSING_INSTRUCTION")) {
            return 3;
        }
        if (str.equals("CHARACTERS")) {
            return 4;
        }
        if (str.equals("COMMENT")) {
            return 5;
        }
        if (str.equals("START_DOCUMENT")) {
            return 7;
        }
        if (str.equals("END_DOCUMENT")) {
            return 8;
        }
        if (str.equals("ATTRIBUTE")) {
            return 10;
        }
        if (str.equals("DTD")) {
            return 11;
        }
        if (str.equals("CDATA")) {
            return 12;
        }
        return str.equals("NAMESPACE") ? 13 : -1;
    }

    public static String printEvent(XMLStreamReader xMLStreamReader) {
        StringBuilder sb = new StringBuilder();
        sb.append("EVENT:[" + xMLStreamReader.getLocation().getLineNumber() + "][" + xMLStreamReader.getLocation().getColumnNumber() + "] ");
        sb.append(getName(xMLStreamReader.getEventType()));
        sb.append(" [");
        int eventType = xMLStreamReader.getEventType();
        if (eventType == 9) {
            sb.append(xMLStreamReader.getLocalName() + "=");
            if (xMLStreamReader.hasText()) {
                sb.append(IteratorUtils.f104923a + xMLStreamReader.getText() + IteratorUtils.f104924b);
            }
        } else if (eventType != 12) {
            int i = 0;
            switch (eventType) {
                case 1:
                    sb.append("<");
                    printName(xMLStreamReader, sb);
                    for (int i2 = 0; i2 < xMLStreamReader.getNamespaceCount(); i2++) {
                        sb.append(" ");
                        String namespacePrefix = xMLStreamReader.getNamespacePrefix(i2);
                        if ("xmlns".equals(namespacePrefix)) {
                            sb.append("xmlns=\"" + xMLStreamReader.getNamespaceURI(i2) + "\"");
                        } else {
                            sb.append("xmlns:" + namespacePrefix);
                            sb.append("=\"");
                            sb.append(xMLStreamReader.getNamespaceURI(i2));
                            sb.append("\"");
                        }
                    }
                    while (i < xMLStreamReader.getAttributeCount()) {
                        sb.append(" ");
                        printName(xMLStreamReader.getAttributePrefix(i), xMLStreamReader.getAttributeNamespace(i), xMLStreamReader.getAttributeLocalName(i), sb);
                        sb.append("=\"");
                        sb.append(xMLStreamReader.getAttributeValue(i));
                        sb.append("\"");
                        i++;
                    }
                    sb.append(">");
                    break;
                case 2:
                    sb.append(XMLStreamWriterImpl.OPEN_END_TAG);
                    printName(xMLStreamReader, sb);
                    while (i < xMLStreamReader.getNamespaceCount()) {
                        sb.append(" ");
                        String namespacePrefix2 = xMLStreamReader.getNamespacePrefix(i);
                        if ("xmlns".equals(namespacePrefix2)) {
                            sb.append("xmlns=\"" + xMLStreamReader.getNamespaceURI(i) + "\"");
                        } else {
                            sb.append("xmlns:" + namespacePrefix2);
                            sb.append("=\"");
                            sb.append(xMLStreamReader.getNamespaceURI(i));
                            sb.append("\"");
                        }
                        i++;
                    }
                    sb.append(">");
                    break;
                case 3:
                    String pITarget = xMLStreamReader.getPITarget();
                    if (pITarget == null) {
                        pITarget = "";
                    }
                    String pIData = xMLStreamReader.getPIData();
                    String str = pIData != null ? pIData : "";
                    sb.append("<?");
                    sb.append(pITarget + " " + str);
                    sb.append("?>");
                    break;
                case 4:
                case 6:
                    sb.append(new String(xMLStreamReader.getTextCharacters(), xMLStreamReader.getTextStart(), xMLStreamReader.getTextLength()));
                    break;
                case 5:
                    sb.append(XMLStreamWriterImpl.START_COMMENT);
                    if (xMLStreamReader.hasText()) {
                        sb.append(xMLStreamReader.getText());
                    }
                    sb.append(XMLStreamWriterImpl.END_COMMENT);
                    break;
                case 7:
                    sb.append("<?xml");
                    sb.append(" version='" + xMLStreamReader.getVersion() + CloudStorageConstants.SINGLE_QUOTES);
                    sb.append(" encoding='" + xMLStreamReader.getCharacterEncodingScheme() + CloudStorageConstants.SINGLE_QUOTES);
                    if (xMLStreamReader.isStandalone()) {
                        sb.append(" standalone='yes'");
                    } else {
                        sb.append(" standalone='no'");
                    }
                    sb.append("?>");
                    break;
            }
        } else {
            sb.append("<![CDATA[");
            if (xMLStreamReader.hasText()) {
                sb.append(xMLStreamReader.getText());
            }
            sb.append("]]>");
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    private static void printName(String str, String str2, String str3, StringBuilder sb) {
        if (str2 != null && !"".equals(str2)) {
            sb.append("['" + str2 + "']:");
        }
        if (str != null && !"".equals(str)) {
            sb.append(str + ":");
        }
        if (str3 != null) {
            sb.append(str3);
        }
    }

    private static void printName(XMLStreamReader xMLStreamReader, StringBuilder sb) {
        if (xMLStreamReader.hasName()) {
            printName(xMLStreamReader.getPrefix(), xMLStreamReader.getNamespaceURI(), xMLStreamReader.getLocalName(), sb);
        }
    }
}
