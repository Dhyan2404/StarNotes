package org.apache.xerces.impl;

import java.io.CharConversionException;
import java.io.EOFException;
import java.io.IOException;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.io.MalformedByteSequenceException;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLVersionDetector {
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: b */
    public static final char[] f112093b = {'1', '.', '1'};
    protected static final String fVersionSymbol = "version".intern();
    protected static final String fXMLSymbol = "[xml]".intern();
    protected XMLEntityManager fEntityManager;
    protected XMLErrorReporter fErrorReporter;
    protected SymbolTable fSymbolTable;
    protected String fEncoding = null;

    /* renamed from: a */
    public final char[] f112094a = {'<', '?', 'x', 'm', 'l', ' ', 'v', 'e', 'r', 's', 'i', 'o', 'n', '=', ' ', ' ', ' ', ' ', ' '};

    /* renamed from: a */
    public final void m69862a(XMLEntityManager xMLEntityManager, char[] cArr, int i) {
        XMLEntityManager.ScannedEntity currentEntity = xMLEntityManager.getCurrentEntity();
        int i2 = currentEntity.count;
        int i3 = currentEntity.position;
        int i4 = (i2 - i3) + i;
        char[] cArr2 = currentEntity.f112040ch;
        if (i4 > cArr2.length) {
            char[] cArr3 = new char[((i2 + i) - i3) + 1];
            currentEntity.f112040ch = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
        }
        int i5 = currentEntity.position;
        if (i5 < i) {
            char[] cArr4 = currentEntity.f112040ch;
            System.arraycopy(cArr4, i5, cArr4, i, currentEntity.count - i5);
            currentEntity.count += i - currentEntity.position;
        } else {
            for (int i6 = i; i6 < currentEntity.position; i6++) {
                currentEntity.f112040ch[i6] = ' ';
            }
        }
        System.arraycopy(cArr, 0, currentEntity.f112040ch, 0, i);
        currentEntity.position = 0;
        currentEntity.baseCharOffset = 0;
        currentEntity.startPosition = 0;
        currentEntity.lineNumber = 1;
        currentEntity.columnNumber = 1;
    }

    public short determineDocVersion(XMLInputSource xMLInputSource) throws IOException {
        char[] cArr;
        int i = 0;
        this.fEncoding = this.fEntityManager.setupCurrentEntity(fXMLSymbol, xMLInputSource, false, true);
        this.fEntityManager.setScannerVersion((short) 1);
        XMLEntityScanner entityScanner = this.fEntityManager.getEntityScanner();
        try {
            if (!entityScanner.skipString("<?xml")) {
                return (short) 1;
            }
            if (!entityScanner.skipDeclSpaces()) {
                m69862a(this.fEntityManager, this.f112094a, 5);
                return (short) 1;
            }
            if (!entityScanner.skipString("version")) {
                m69862a(this.fEntityManager, this.f112094a, 6);
                return (short) 1;
            }
            entityScanner.skipDeclSpaces();
            if (entityScanner.peekChar() != 61) {
                m69862a(this.fEntityManager, this.f112094a, 13);
                return (short) 1;
            }
            entityScanner.scanChar();
            entityScanner.skipDeclSpaces();
            this.f112094a[14] = (char) entityScanner.scanChar();
            for (int i2 = 0; i2 < f112093b.length; i2++) {
                this.f112094a[i2 + 15] = (char) entityScanner.scanChar();
            }
            this.f112094a[18] = (char) entityScanner.scanChar();
            m69862a(this.fEntityManager, this.f112094a, 19);
            while (true) {
                cArr = f112093b;
                if (i >= cArr.length || this.f112094a[i + 15] != cArr[i]) {
                    break;
                }
                i++;
            }
            return i == cArr.length ? (short) 2 : (short) 1;
        } catch (EOFException unused) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "PrematureEOF", null, (short) 2);
            return (short) -1;
        } catch (MalformedByteSequenceException e) {
            this.fErrorReporter.reportError(e.getDomain(), e.getKey(), e.getArguments(), (short) 2, (Exception) e);
            return (short) -1;
        } catch (CharConversionException e2) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "CharConversionFailure", (Object[]) null, (short) 2, (Exception) e2);
            return (short) -1;
        }
    }

    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fEntityManager = (XMLEntityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        int i = 14;
        while (true) {
            char[] cArr = this.f112094a;
            if (i >= cArr.length) {
                return;
            }
            cArr[i] = ' ';
            i++;
        }
    }

    public void startDocumentParsing(XMLEntityHandler xMLEntityHandler, short s) {
        XMLEntityManager xMLEntityManager;
        short s2 = 1;
        if (s == 1) {
            xMLEntityManager = this.fEntityManager;
        } else {
            xMLEntityManager = this.fEntityManager;
            s2 = 2;
        }
        xMLEntityManager.setScannerVersion(s2);
        this.fErrorReporter.setDocumentLocator(this.fEntityManager.getEntityScanner());
        this.fEntityManager.setEntityHandler(xMLEntityHandler);
        xMLEntityHandler.startEntity(fXMLSymbol, this.fEntityManager.getCurrentResourceIdentifier(), this.fEncoding, null);
    }
}
