package org.apache.xerces.util;

import com.sunia.HTREnginev2.olo;
import java.io.PrintWriter;
import java.util.Hashtable;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMLocatorImpl;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLParseException;
import org.w3c.dom.DOMError;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class DOMErrorHandlerWrapper implements XMLErrorHandler, DOMErrorHandler {

    /* renamed from: a */
    public boolean f113485a;
    public Node fCurrentNode;
    protected final DOMErrorImpl fDOMError;
    protected DOMErrorHandler fDomErrorHandler;
    protected final olo fErrorCode;
    protected PrintWriter fOut;

    /* renamed from: org.apache.xerces.util.DOMErrorHandlerWrapper$a */
    /* loaded from: classes13.dex */
    public static class C20085a {

        /* renamed from: a */
        public static Hashtable f113486a;

        static {
            Hashtable hashtable = new Hashtable();
            f113486a = hashtable;
            hashtable.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInCDSect"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInContent"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "TwoColonsInQName"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ColonNotLegalWithNS"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInProlog"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "CDEndInContent"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "CDSectUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "DoctypeNotAllowed"), "doctype-not-allowed");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ETagRequired"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementUnterminated"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EqRequiredInAttribute"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "OpenQuoteExpected"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "CloseQuoteExpected"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ETagUnterminated"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MarkupNotRecognizedInContent"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "DoctypeIllegalInContent"), "doctype-not-allowed");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInAttValue"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInPI"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInInternalSubset"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "QuoteRequiredInAttValue"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "LessthanInAttValue"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "AttributeValueUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PITargetRequired"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "SpaceRequiredInPI"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PIUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ReservedPITarget"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PI_NOT_IN_ONE_ENTITY"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PINotInOneEntity"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid"), "unsupported-encoding");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported"), "unsupported-encoding");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInEntityValue"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInExternalSubset"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInIgnoreSect"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInPublicID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInSystemID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "SpaceRequiredAfterSYSTEM"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "QuoteRequiredInSystemID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "SystemIDUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "SpaceRequiredAfterPUBLIC"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "QuoteRequiredInPublicID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PublicIDUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PubidCharIllegal"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "SpaceRequiredBetweenPublicAndSystem"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ROOT_ELEMENT_TYPE_REQUIRED"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "DoctypedeclUnterminated"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PEReferenceWithinMarkup"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENTSPEC_REQUIRED_IN_ELEMENTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementDeclUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CLOSE_PAREN_REQUIRED_IN_MIXED"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MixedContentUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "AttNameRequiredInAttDef"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "AttTypeRequiredInAttDef"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "NotationTypeUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EnumerationUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DISTINCT_TOKENS_IN_ENUMERATION"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DISTINCT_NOTATION_IN_ENUMERATION"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "IncludeSectUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "IgnoreSectUnterminated"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "NameRequiredInPEReference"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "SemicolonRequiredInPEReference"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EntityDeclUnterminated"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DUPLICATE_ENTITY_DEFINITION"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ExternalIDRequired"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_PUBIDLITERAL_IN_EXTERNALID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_AFTER_PUBIDLITERAL_IN_EXTERNALID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_SYSTEMLITERAL_IN_EXTERNALID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_URI_FRAGMENT_IN_SYSTEMID"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ExternalIDorPublicIDRequired"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "NotationDeclUnterminated"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ReferenceToExternalEntity"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ReferenceToUnparsedEntity"), "wf-invalid-character");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingNotSupported"), "unsupported-encoding");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingRequired"), "unsupported-encoding");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "IllegalQName"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementXMLNSPrefix"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementPrefixUnbound"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "AttributePrefixUnbound"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "EmptyPrefixedAttName"), "wf-invalid-character-in-node-name");
            f113486a.put(new olo("http://www.w3.org/TR/1998/REC-xml-19980210", "PrefixDeclared"), "wf-invalid-character-in-node-name");
        }

        /* renamed from: a */
        public static String m70568a(olo oloVar) {
            return (String) f113486a.get(oloVar);
        }
    }

    public DOMErrorHandlerWrapper() {
        this.f113485a = true;
        this.fErrorCode = new olo(null, null);
        this.fDOMError = new DOMErrorImpl();
        this.fOut = new PrintWriter(System.err);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0037  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m70567a(org.w3c.dom.DOMError r7) {
        /*
            r6 = this;
            short r0 = r7.getSeverity()
            java.io.PrintWriter r1 = r6.fOut
            java.lang.String r2 = "["
            r1.print(r2)
            r1 = 1
            if (r0 != r1) goto L16
            java.io.PrintWriter r0 = r6.fOut
            java.lang.String r3 = "Warning"
        L12:
            r0.print(r3)
            goto L28
        L16:
            r3 = 2
            if (r0 != r3) goto L1e
            java.io.PrintWriter r0 = r6.fOut
            java.lang.String r3 = "Error"
            goto L12
        L1e:
            java.io.PrintWriter r0 = r6.fOut
            java.lang.String r3 = "FatalError"
            r0.print(r3)
            r0 = 0
            r6.f113485a = r0
        L28:
            java.io.PrintWriter r0 = r6.fOut
            java.lang.String r3 = "] "
            r0.print(r3)
            org.w3c.dom.DOMLocator r0 = r7.getLocation()
            java.lang.String r3 = ":"
            if (r0 == 0) goto La7
            java.io.PrintWriter r4 = r6.fOut
            int r5 = r0.getLineNumber()
            r4.print(r5)
            java.io.PrintWriter r4 = r6.fOut
            r4.print(r3)
            java.io.PrintWriter r4 = r6.fOut
            int r5 = r0.getColumnNumber()
            r4.print(r5)
            java.io.PrintWriter r4 = r6.fOut
            r4.print(r3)
            java.io.PrintWriter r4 = r6.fOut
            int r5 = r0.getByteOffset()
            r4.print(r5)
            java.io.PrintWriter r4 = r6.fOut
            java.lang.String r5 = ","
            r4.print(r5)
            java.io.PrintWriter r4 = r6.fOut
            int r5 = r0.getUtf16Offset()
            r4.print(r5)
            org.w3c.dom.Node r4 = r0.getRelatedNode()
            if (r4 == 0) goto L87
            java.io.PrintWriter r5 = r6.fOut
            r5.print(r2)
            java.io.PrintWriter r2 = r6.fOut
            java.lang.String r4 = r4.getNodeName()
            r2.print(r4)
            java.io.PrintWriter r2 = r6.fOut
            java.lang.String r4 = "]"
            r2.print(r4)
        L87:
            java.lang.String r0 = r0.getUri()
            if (r0 == 0) goto La7
            r2 = 47
            int r2 = r0.lastIndexOf(r2)
            r4 = -1
            if (r2 == r4) goto L9b
            int r2 = r2 + r1
            java.lang.String r0 = r0.substring(r2)
        L9b:
            java.io.PrintWriter r1 = r6.fOut
            java.lang.String r2 = ": "
            r1.print(r2)
            java.io.PrintWriter r1 = r6.fOut
            r1.print(r0)
        La7:
            java.io.PrintWriter r0 = r6.fOut
            r0.print(r3)
            java.io.PrintWriter r0 = r6.fOut
            java.lang.String r7 = r7.getMessage()
            r0.print(r7)
            java.io.PrintWriter r7 = r6.fOut
            r7.println()
            java.io.PrintWriter r6 = r6.fOut
            r6.flush()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.util.DOMErrorHandlerWrapper.m70567a(org.w3c.dom.DOMError):void");
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void error(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        DOMErrorImpl dOMErrorImpl = this.fDOMError;
        dOMErrorImpl.fSeverity = (short) 2;
        dOMErrorImpl.fException = xMLParseException;
        dOMErrorImpl.fType = str2;
        String message = xMLParseException.getMessage();
        dOMErrorImpl.fMessage = message;
        dOMErrorImpl.fRelatedData = message;
        DOMLocatorImpl dOMLocatorImpl = this.fDOMError.fLocator;
        if (dOMLocatorImpl != null) {
            dOMLocatorImpl.fColumnNumber = xMLParseException.getColumnNumber();
            dOMLocatorImpl.fLineNumber = xMLParseException.getLineNumber();
            dOMLocatorImpl.fUtf16Offset = xMLParseException.getCharacterOffset();
            dOMLocatorImpl.fUri = xMLParseException.getExpandedSystemId();
            dOMLocatorImpl.fRelatedNode = this.fCurrentNode;
        }
        DOMErrorHandler dOMErrorHandler = this.fDomErrorHandler;
        if (dOMErrorHandler != null) {
            dOMErrorHandler.handleError(this.fDOMError);
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void fatalError(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        DOMErrorImpl dOMErrorImpl = this.fDOMError;
        dOMErrorImpl.fSeverity = (short) 3;
        dOMErrorImpl.fException = xMLParseException;
        this.fErrorCode.m56081a(str, str2);
        String m70568a = C20085a.m70568a(this.fErrorCode);
        DOMErrorImpl dOMErrorImpl2 = this.fDOMError;
        if (m70568a != null) {
            str2 = m70568a;
        }
        dOMErrorImpl2.fType = str2;
        String message = xMLParseException.getMessage();
        dOMErrorImpl2.fMessage = message;
        dOMErrorImpl2.fRelatedData = message;
        DOMLocatorImpl dOMLocatorImpl = this.fDOMError.fLocator;
        if (dOMLocatorImpl != null) {
            dOMLocatorImpl.fColumnNumber = xMLParseException.getColumnNumber();
            dOMLocatorImpl.fLineNumber = xMLParseException.getLineNumber();
            dOMLocatorImpl.fUtf16Offset = xMLParseException.getCharacterOffset();
            dOMLocatorImpl.fUri = xMLParseException.getExpandedSystemId();
            dOMLocatorImpl.fRelatedNode = this.fCurrentNode;
        }
        DOMErrorHandler dOMErrorHandler = this.fDomErrorHandler;
        if (dOMErrorHandler != null) {
            dOMErrorHandler.handleError(this.fDOMError);
        }
    }

    public DOMErrorHandler getErrorHandler() {
        return this.fDomErrorHandler;
    }

    @Override // org.w3c.dom.DOMErrorHandler
    public boolean handleError(DOMError dOMError) {
        m70567a(dOMError);
        return this.f113485a;
    }

    public void setErrorHandler(DOMErrorHandler dOMErrorHandler) {
        this.fDomErrorHandler = dOMErrorHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void warning(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        DOMErrorImpl dOMErrorImpl = this.fDOMError;
        dOMErrorImpl.fSeverity = (short) 1;
        dOMErrorImpl.fException = xMLParseException;
        dOMErrorImpl.fType = str2;
        String message = xMLParseException.getMessage();
        dOMErrorImpl.fMessage = message;
        dOMErrorImpl.fRelatedData = message;
        DOMLocatorImpl dOMLocatorImpl = this.fDOMError.fLocator;
        if (dOMLocatorImpl != null) {
            dOMLocatorImpl.fColumnNumber = xMLParseException.getColumnNumber();
            dOMLocatorImpl.fLineNumber = xMLParseException.getLineNumber();
            dOMLocatorImpl.fUtf16Offset = xMLParseException.getCharacterOffset();
            dOMLocatorImpl.fUri = xMLParseException.getExpandedSystemId();
            dOMLocatorImpl.fRelatedNode = this.fCurrentNode;
        }
        DOMErrorHandler dOMErrorHandler = this.fDomErrorHandler;
        if (dOMErrorHandler != null) {
            dOMErrorHandler.handleError(this.fDOMError);
        }
    }

    public DOMErrorHandlerWrapper(DOMErrorHandler dOMErrorHandler) {
        this.f113485a = true;
        this.fErrorCode = new olo(null, null);
        this.fDOMError = new DOMErrorImpl();
        this.fDomErrorHandler = dOMErrorHandler;
    }
}
