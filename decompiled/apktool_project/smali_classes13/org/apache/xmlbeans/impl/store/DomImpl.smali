.class public final Lorg/apache/xmlbeans/impl/store/DomImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$EmptyNodeList;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NoModificationAllowedErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;,
        Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ATTR:I = 0x2

.field static final CDATA:I = 0x4

.field static final COMMENT:I = 0x8

.field static final DOCFRAG:I = 0xb

.field static final DOCTYPE:I = 0xa

.field static final DOCUMENT:I = 0x9

.field static final ELEMENT:I = 0x1

.field static final ENTITY:I = 0x6

.field static final ENTITYREF:I = 0x5

.field static final NOTATION:I = 0xc

.field static final PROCINST:I = 0x7

.field static final TEXT:I = 0x3

.field public static final _emptyNodeList:Lorg/w3c/dom/NodeList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$EmptyNodeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$EmptyNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$1;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/DomImpl;->_emptyNodeList:Lorg/w3c/dom/NodeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_removeMimeHeader$94(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic A0(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_createElement$1(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getAllAttributes$39(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Ljava/util/function/Consumer;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$syncWrapVoid$109(Ljava/util/function/Consumer;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapEnvelope_addHeader$59(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_removeAllMimeHeaders$93(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic D(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_getMatchingMimeHeaders$102(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_getNamedItemNS$23(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_removeContents$35(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic E0(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$saajCallback_createSoapElement$105(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(ILorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_item$27(ILorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeader_examineMustUnderstandHeaderElements$65(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(ILorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_childNodes_item$16(ILorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapNode_getValue$31(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$detail_addDetailEntry$91(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapNode_recycleNode$30(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic I(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_node_replaceChild$10(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addChildElement$46(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_getDetail$86(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapNode_setValue$32(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic K(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_addDetail$85(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_addMimeHeader$100(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic L(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addAttribute$42(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_setNamedItem$21(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_node_insertBefore$11(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_setContent$98(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic N(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addNamespaceDeclaration$48(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeader_addHeaderElement$67(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getEncodingStyle$36(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O0(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Comment;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_createComment$5(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Comment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_getFaultString$84(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_element_getElementsByTagName$19(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_createAttributeNS$4(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_node_setPrefix$14(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic R(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getElementName$52(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addChildElement$44(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_setFaultActor$78(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic S0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addChildElement$47(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeader_extractAllHeaderElements$63(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T0(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapNode_detachNode$29(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic U(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapNode_setParentElement$34(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic U0(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_setFaultString$76(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic V(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeaderElement_getActor$90(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_addFault$69(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_node_removeChild$12(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W0(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_removeNamespaceDeclaration$38(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_createElementNS$2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getChildElements$51(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_hasFault$68(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y0(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_addBodyElement$71(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getAttributeValue$50(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z0(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_node_setNodeValue$15(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static _attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lef;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lef;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static _attr_getSpecified(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static _attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xef;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xef;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static _attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wcf;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/wcf;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rcf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/rcf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fff;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/fff;-><init>(I)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xbf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xbf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rbf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/rbf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/icf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/icf;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Attr to set is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr to set is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/dcf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/dcf;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Attr to set is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr to set is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _characterData_appendData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static _characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    if-lez p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _characterData_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static _characterData_insertData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _characterData_replaceData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;IILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_3

    if-ltz p2, :cond_3

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    if-lez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static _characterData_substringData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static _childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDomZeroOneChildren()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/mcf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mcf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static _childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/pcf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/pcf;-><init>(I)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_0
    return-object p0
.end method

.method public static _document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hdf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/hdf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/edf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/edf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p0

    return-object p0
.end method

.method public static _document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ycf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ycf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Comment;

    return-object p0
.end method

.method public static _document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentFragment;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sdf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    return-object p0
.end method

.method public static _document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/vcf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/vcf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static _document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yaf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/yaf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static _document_createEntityReference(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/def;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/def;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    return-object p0
.end method

.method public static _document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    return-object p0
.end method

.method public static _document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jef;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jef;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentType;

    return-object p0
.end method

.method public static _document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dff;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dff;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static _document_getElementById(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ncf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ncf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public static _document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fef;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/fef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public static _document_getImplementation(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static _document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hbf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/hbf;-><init>(Lorg/w3c/dom/Node;Z)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xdf;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/xdf;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public static _domImplementation_hasFeature(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return p0

    :cond_1
    const-string p0, "core"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static _element_getAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _element_getAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _element_getAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _element_getAttributeNodeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kcf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/kcf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public static _element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fbf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/fbf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public static _element_getTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _element_hasAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static _element_hasAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static _element_removeAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static _element_removeAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static _element_removeAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Attribute to remove does not belong to this element"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Attribute to remove is null"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lbf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/lbf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kef;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/kef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _element_setAttributeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _element_setAttributeNodeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static _getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qef;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qef;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;

    return-object p0
.end method

.method public static _getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ydf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ydf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public static _getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gbf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gbf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public static _node_appendChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static _node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wbf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/wbf;-><init>(Z)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _node_compareDocumentPosition(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)S
    .locals 6

    instance-of v0, p0, Lorg/w3c/dom/Node;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/w3c/dom/Node;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->ancestorAndSelf(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->ancestorAndSelf(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    return v0

    :cond_1
    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v1, 0xa

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v1, 0x14

    :cond_5
    :goto_2
    return v1

    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_7
    const/4 p0, 0x4

    return p0
.end method

.method public static _node_getBaseURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_getFeature(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 3

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isFirstChildPtrDomUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNextSiblingPtrDomUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isExistingCharNodesValueUsable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    return-object p0

    :cond_2
    new-instance v0, Lcom/sunia/HTREnginev2/fcf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fcf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ldf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ldf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _node_getLocalName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeCanHavePrefixUri()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _node_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeCanHavePrefixUri()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ndf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ndf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown node type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "#document-fragment"

    return-object p0

    :pswitch_1
    const-string p0, "#document"

    return-object p0

    :pswitch_2
    const-string p0, "#comment"

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const-string p0, "#cdata-section"

    return-object p0

    :pswitch_6
    const-string p0, "#text"

    return-object p0

    :pswitch_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static _node_getNodeType(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)S
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static _node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cbf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cbf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static _node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/scf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/scf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public static _node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/waf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/waf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _node_getPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeCanHavePrefixUri()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static _node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/tcf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tcf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static _node_getTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_getUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bff;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bff;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static _node_hasChildNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static _node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_1

    instance-of v1, p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Reference child is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lcom/sunia/HTREnginev2/wef;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/wef;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to add is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child to add is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_isDefaultNamespace(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_isEqualNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_isSameNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/NodeXobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_isSupported(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_domImplementation_hasFeature(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static _node_lookupNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_lookupPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qcf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qcf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/zaf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/zaf;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to remove is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Child to remove is null"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_1

    instance-of v1, p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/lcf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/lcf;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to replace is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;

    const-string p1, "Child to add is from another document"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrongDocumentErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Child to replace is null"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Child to add is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static _node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pbf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/pbf;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hef;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/hef;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _node_setTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _node_setUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _processingInstruction_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _processingInstruction_getTarget(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static _processingInstruction_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static _soapElement_addAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/k;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/k;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 5
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 6
    new-instance v1, Lorg/apache/xmlbeans/impl/store/o;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/o;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 7
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 8
    new-instance v1, Lorg/apache/xmlbeans/impl/store/v;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/v;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 9
    move-object v2, p0

    check-cast v2, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 10
    new-instance v6, Lorg/apache/xmlbeans/impl/store/s;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/s;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 4
    new-instance v1, Lorg/apache/xmlbeans/impl/store/t;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/t;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addChildElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 2
    new-instance v1, Lorg/apache/xmlbeans/impl/store/u;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/u;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addNamespaceDeclaration(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/ebf;

    invoke-direct {v1, v0, p1, p2}, Lcom/sunia/HTREnginev2/ebf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_addTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/ccf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/ccf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapElement_getAllAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/Name;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/zbf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapElement_getAttributeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/eef;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/eef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static _soapElement_getChildElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPElement;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 2
    new-instance v1, Lcom/sunia/HTREnginev2/cff;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/cff;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapElement_getChildElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Lorg/apache/xmlbeans/impl/soap/Name;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPElement;",
            ">;"
        }
    .end annotation

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    .line 4
    new-instance v1, Lcom/sunia/HTREnginev2/hcf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/hcf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapElement_getElementName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/ubf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ubf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Name;

    return-object p0
.end method

.method public static _soapElement_getEncodingStyle(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/yef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/yef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static _soapElement_getNamespacePrefixes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/eff;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/eff;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapElement_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/abf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/abf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static _soapElement_getVisibleNamespacePrefixes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/aff;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/aff;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapElement_removeAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/obf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/obf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static _soapElement_removeContents(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/gef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/gef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapElement_removeNamespaceDeclaration(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/kdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/kdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static _soapElement_setEncodingStyle(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    new-instance v1, Lcom/sunia/HTREnginev2/tdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/tdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/l;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/l;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    return-object p0
.end method

.method public static _soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/m;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/m;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    return-object p0
.end method

.method public static _soapEnvelope_createName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    .line 2
    new-instance v1, Lcom/sunia/HTREnginev2/jcf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/jcf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Name;

    return-object p0
.end method

.method public static _soapEnvelope_createName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    .line 4
    new-instance v1, Lcom/sunia/HTREnginev2/udf;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/udf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Name;

    return-object p0
.end method

.method public static _soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/r;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/r;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    return-object p0
.end method

.method public static _soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/j;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/j;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    return-object p0
.end method

.method public static _soapNode_detachNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Node;

    new-instance v1, Lcom/sunia/HTREnginev2/pdf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/pdf;-><init>(Lorg/apache/xmlbeans/impl/soap/Node;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapNode_getParentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Node;

    new-instance v1, Lcom/sunia/HTREnginev2/cdf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/cdf;-><init>(Lorg/apache/xmlbeans/impl/soap/Node;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-object p0
.end method

.method public static _soapNode_getValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Node;

    new-instance v1, Lcom/sunia/HTREnginev2/vef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/vef;-><init>(Lorg/apache/xmlbeans/impl/soap/Node;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static _soapNode_recycleNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Node;

    new-instance v1, Lcom/sunia/HTREnginev2/tef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/tef;-><init>(Lorg/apache/xmlbeans/impl/soap/Node;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapNode_setParentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Node;

    new-instance v1, Lcom/sunia/HTREnginev2/acf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/acf;-><init>(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapNode_setValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Node;

    new-instance v1, Lcom/sunia/HTREnginev2/rdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/rdf;-><init>(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapPart_addMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/aef;

    invoke-direct {v1, v0, p1, p2}, Lcom/sunia/HTREnginev2/aef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapPart_getAllMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/MimeHeader;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/vbf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/vbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapPart_getContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/transform/Source;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/odf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/odf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/Source;

    return-object p0
.end method

.method public static _soapPart_getEnvelope(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/bbf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/bbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    return-object p0
.end method

.method public static _soapPart_getMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;[Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/MimeHeader;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/gcf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/gcf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapPart_getMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/wdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/wdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static _soapPart_getNonMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;[Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/MimeHeader;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/kbf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/kbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static _soapPart_removeAllMimeHeaders(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/mbf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/mbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapPart_removeMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/mdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/mdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapPart_setContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljavax/xml/transform/Source;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/bcf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/bcf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapPart_setMimeHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    new-instance v1, Lcom/sunia/HTREnginev2/pef;

    invoke-direct {v1, v0, p1, p2}, Lcom/sunia/HTREnginev2/pef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static _soapText_isComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Text;

    new-instance v1, Lcom/sunia/HTREnginev2/idf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/idf;-><init>(Lorg/apache/xmlbeans/impl/soap/Text;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static _text_getWholeText(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _text_isElementContentWhitespace(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _text_replaceWholeText(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$DomLevel3NotImplemented;-><init>()V

    throw p0
.end method

.method public static _text_splitText(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Text;
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Text;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->invalidateDomCaches(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    return-object p1

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$IndexSizeError;-><init>()V

    throw p0
.end method

.method public static synthetic a(Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$saajCallback_importSoapElement$106(Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_setNamedItemNS$26(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a1(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeader_extractHeaderElements$66(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static ancestorAndSelf(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0
.end method

.method public static append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public static attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return v0
.end method

.method public static attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, -0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/AttrXobj;->isId()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    if-eqz v4, :cond_2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/DocumentXobj;->removeIdElement(Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-eqz v0, :cond_4

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Named item not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/AttrXobj;->isId()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    if-eqz v4, :cond_3

    check-cast v2, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/DocumentXobj;->removeIdElement(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-eqz v0, :cond_5

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Named item not found: uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", local="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v2, Lorg/w3c/dom/Node;

    return-object v2

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "Node is not an attribute"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;-><init>()V

    throw p0
.end method

.method public static attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne v0, p0, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    if-nez v0, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->toPrevAttr()Z

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v2, Lorg/w3c/dom/Node;

    return-object v2

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "Node is not an attribute"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InuseAttributeError;-><init>()V

    throw p0
.end method

.method public static synthetic b(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_setEncodingStyle$37(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic b0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapEnvelope_getHeader$58(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b1(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeaderElement_setActor$89(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/transform/Source;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_getContent$97(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapEnvelope_getBody$57(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_getElementsByTagNameNS$8(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static childNodes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDomZeroOneChildren()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->domLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    const-string v2, "Not impl"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->findDomNthChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapEnvelope_addBody$56(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_element_setAttributeNS$18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic d1(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_setFaultCode$81(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static detail_addDetailEntry(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Detail;

    new-instance v1, Lcom/sunia/HTREnginev2/ibf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/ibf;-><init>(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/DetailEntry;

    return-object p0
.end method

.method public static detail_getDetailEntries(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/DetailEntry;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/Detail;

    new-instance v1, Lcom/sunia/HTREnginev2/vdf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/vdf;-><init>(Lorg/apache/xmlbeans/impl/soap/Detail;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateName(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/NamedNodeXobj;->_canHavePrefixUri:Z

    return-object p0
.end method

.method public static document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public static document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->createCdataNode()Lorg/apache/xmlbeans/impl/store/CdataNode;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    return-object p0
.end method

.method public static document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createComment()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/Comment;

    return-object v0
.end method

.method public static document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentFragment;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    return-object v0
.end method

.method public static document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateName(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/NamedNodeXobj;->_canHavePrefixUri:Z

    return-object p0
.end method

.method public static document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    const-string p1, "Invalid target - is \'xml\'"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createProcinst(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    return-object p1

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    const-string p1, "Target has an invalid character"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/TextNode;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    return-object p0
.end method

.method public static document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-object v0
.end method

.method public static document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createDocumentFragment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentFragment;

    move-result-object v1

    goto/16 :goto_a

    :pswitch_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;

    const-string p1, "Document type nodes may not be imported"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;

    const-string p1, "Document nodes may not be imported"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotSupportedError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createCDATASection(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    :goto_0
    move p2, v3

    goto/16 :goto_a

    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p0, v1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    goto :goto_4

    :cond_5
    :goto_2
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    goto :goto_4

    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    :goto_4
    move-object v1, p2

    move p2, v4

    goto/16 :goto_a

    :pswitch_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {p0, v2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_8

    :cond_b
    :goto_6
    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_8

    :cond_c
    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    move v5, v3

    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_d

    move-object v6, v1

    check-cast v6, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {p0, v7, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v6, v7}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    if-eqz p2, :cond_e

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge v3, p2, :cond_e

    move-object p2, v1

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p2, v2, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;)V

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v0, p0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Lorg/apache/xmlbeans/XmlException;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeaderElement_setMustUnderstand$87(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic e0(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$syncWrap$107(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e1(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_addFault$74(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public static element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-object v0
.end method

.method public static element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsByTagNameNSNodeList;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Document element can\'t be determined."

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/soap/Text;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapText_isComment$28(Lorg/apache/xmlbeans/impl/soap/Text;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_removeNamedItemNS$25(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f1(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_removeAttribute$55(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_addFault$73(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getNamespacePrefixes$41(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0
.end method

.method public static getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/stream/XMLStreamReader;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown kind"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object p0

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-static {v1, p0, v2, v0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget p0, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object p0

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {v1, p0, v0, v2}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_1

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    move-object p0, v0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic h(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$saajCallback_setSaajData$104(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic h0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addChildElement$43(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapEnvelope_createName$61(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$detail_getDetailEntries$92(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static impl_saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast p1, Lorg/w3c/dom/Element;

    return-object p1
.end method

.method public static impl_saajCallback_ensureSoapTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Text;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static impl_saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const-class p0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;->_obj:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method public static impl_saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static impl_saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const-class p0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;

    invoke-direct {v2, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$1;)V

    :cond_0
    move-object v1, v2

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajData;->_obj:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void
.end method

.method public static insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static isValidChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq p1, v5, :cond_3

    const/16 v3, 0xa

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v6

    :cond_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDoctype(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "Documents may only have a maximum of one document type node"

    return-object p0

    :cond_2
    return-object v6

    :cond_3
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getDocumentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "Documents may only have a maximum of one document element"

    return-object p0

    :cond_4
    return-object v6

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nodeKindName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " nodes may not have any children"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_7

    :cond_5
    return-object v6

    :pswitch_3
    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_6

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_6

    goto :goto_0

    :cond_6
    return-object v6

    :cond_7
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nodeKindName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " nodes may not have "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nodeKindName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " nodes as children"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic j(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapNode_getParentElement$33(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addChildElement$45(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_getFaultCode$80(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_node_cloneNode$13(ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_createAttribute$3(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$syncWrapNoEnter$108(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_getNamedItem$22(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_getNamedItemNS$23(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_item$27(ILorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_removeNamedItem$24(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_removeNamedItemNS$25(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_setNamedItem$21(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_attributes_setNamedItemNS$26(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_childNodes_item$16(ILorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->childNodes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_createAttribute$3(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_createAttributeNS$4(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_createComment$5(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Comment;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_createElement$1(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_createElementNS$2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createElementNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_createProcessingInstruction$6(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_createProcessingInstruction(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_getElementsByTagName$7(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_getElementsByTagNameNS$8(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_document_importNode$9(Lorg/w3c/dom/Node;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->document_importNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_domImplementation_createDocument$0(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_element_getElementsByTagName$19(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_getElementsByTagName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_element_getElementsByTagNameNS$20(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_getElementsByTagNameNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_element_setAttribute$17(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_setAttribute(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_element_setAttributeNS$18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->element_setAttributeNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_node_cloneNode$13(ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_node_insertBefore$11(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_node_removeChild$12(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_node_replaceChild$10(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_node_setNodeValue$15(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_node_setPrefix$14(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_soapElement_addAttribute$42(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addChildElement$43(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addChildElement$44(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addChildElement$45(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addChildElement$46(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addChildElement$47(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addNamespaceDeclaration$48(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-interface {p3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p3

    iget-object p3, p3, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_addTextNode$49(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_addTextNode(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getAllAttributes$39(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getAllAttributes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getAttributeValue$50(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getAttributeValue(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getChildElements$40(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getChildElements$51(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getElementName$52(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getElementName(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getEncodingStyle$36(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getNamespacePrefixes$41(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getNamespaceURI$53(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getNamespaceURI(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_getVisibleNamespacePrefixes$54(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_getVisibleNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_removeAttribute$55(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_removeContents$35(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeContents(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    return-void
.end method

.method private static synthetic lambda$_soapElement_removeNamespaceDeclaration$38(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_removeNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapElement_setEncodingStyle$37(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapElement_setEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_soapEnvelope_addBody$56(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapEnvelope_addHeader$59(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapEnvelope_createName$60(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapEnvelope_createName$61(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-interface {p4}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p4

    iget-object p4, p4, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p4, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapEnvelope_getBody$57(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapEnvelope_getHeader$58(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapNode_detachNode$29(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_detachNode(Lorg/apache/xmlbeans/impl/soap/Node;)V

    return-void
.end method

.method private static synthetic lambda$_soapNode_getParentElement$33(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_getParentElement(Lorg/apache/xmlbeans/impl/soap/Node;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapNode_getValue$31(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_getValue(Lorg/apache/xmlbeans/impl/soap/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapNode_recycleNode$30(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_recycleNode(Lorg/apache/xmlbeans/impl/soap/Node;)V

    return-void
.end method

.method private static synthetic lambda$_soapNode_setParentElement$34(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_setParentElement(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    return-void
.end method

.method private static synthetic lambda$_soapNode_setValue$32(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapNode_setValue(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_soapPart_addMimeHeader$100(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p3

    iget-object p3, p3, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_addMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_soapPart_getAllMimeHeaders$95(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapPart_getContent$97(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/transform/Source;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapPart_getEnvelope$96(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getEnvelope(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapPart_getMatchingMimeHeaders$102(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapPart_getMimeHeader$99(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)[Ljava/lang/String;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapPart_getNonMatchingMimeHeaders$103(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_getNonMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$_soapPart_removeAllMimeHeaders$93(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_removeAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V

    return-void
.end method

.method private static synthetic lambda$_soapPart_removeMimeHeader$94(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_removeMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_soapPart_setContent$98(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_setContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;)V

    return-void
.end method

.method private static synthetic lambda$_soapPart_setMimeHeader$101(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p3

    iget-object p3, p3, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapPart_setMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$_soapText_isComment$28(Lorg/apache/xmlbeans/impl/soap/Text;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapText_isComment(Lorg/apache/xmlbeans/impl/soap/Text;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$detail_addDetailEntry$91(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->detail_addDetailEntry(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$detail_getDetailEntries$92(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->detail_getDetailEntries(Lorg/apache/xmlbeans/impl/soap/Detail;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$saajCallback_createSoapElement$105(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$saajCallback_importSoapElement$106(Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$saajCallback_setSaajData$104(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->impl_saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$soapBody_addBodyElement$71(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapBody_addDocument$72(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addDocument(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapBody_addFault$69(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapBody_addFault$73(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapBody_addFault$74(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapBody_getFault$70(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_getFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapBody_hasFault$68(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapBody_hasFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_addDetail$85(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_addDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_getDetail$86(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_getFaultActor$79(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_getFaultCode$80(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_getFaultCodeAsName$83(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_getFaultString$84(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_getFaultStringLocale$82(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Locale;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_setFaultActor$78(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$soapFault_setFaultCode$77(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_setFaultCode$81(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$soapFault_setFaultString$75(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$soapFault_setFaultString$76(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p3

    iget-object p3, p3, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private static synthetic lambda$soapHeaderElement_getActor$90(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_getActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeaderElement_getMustUnderstand$88(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_getMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeaderElement_setActor$89(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_setActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$soapHeaderElement_setMustUnderstand$87(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeaderElement_setMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Z)V

    return-void
.end method

.method private static synthetic lambda$soapHeader_addHeaderElement$67(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeader_examineAllHeaderElements$62(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeader_examineHeaderElements$64(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeader_examineMustUnderstandHeaderElements$65(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeader_extractAllHeaderElements$63(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$soapHeader_extractHeaderElements$66(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p2

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saaj;->soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$syncWrap$107(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$syncWrapNoEnter$108(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$syncWrapVoid$109(Ljava/util/function/Consumer;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_getAllMimeHeaders$95(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeader_examineHeaderElements$64(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_setMimeHeader$101(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic n0(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_addDocument$72(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method

.method public static nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static nodeKindName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown node type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "notation"

    return-object p0

    :pswitch_1
    const-string p0, "document fragment"

    return-object p0

    :pswitch_2
    const-string p0, "document type"

    return-object p0

    :pswitch_3
    const-string p0, "document"

    return-object p0

    :pswitch_4
    const-string p0, "comment"

    return-object p0

    :pswitch_5
    const-string p0, "processing instruction"

    return-object p0

    :pswitch_6
    const-string p0, "entity"

    return-object p0

    :pswitch_7
    const-string p0, "entity reference"

    return-object p0

    :pswitch_8
    const-string p0, "cdata section"

    return-object p0

    :pswitch_9
    const-string p0, "text"

    return-object p0

    :pswitch_a
    const-string p0, "attribute"

    return-object p0

    :pswitch_b
    const-string p0, "element"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/w3c/dom/Node;
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Ljavax/xml/namespace/QName;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->getQName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v4, p0

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_5
    if-nez v1, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not impl"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/TextNode;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->createCdataNode()Lorg/apache/xmlbeans/impl/store/CdataNode;

    move-result-object v0

    :goto_2
    move-object v1, v0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharNode;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object p0

    iget v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->copyNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_7
    :goto_3
    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    const-string v2, "Not impl"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :pswitch_1
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isFirstChildPtrDomUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNextSiblingPtrDomUsable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isCharNodesAfterUsable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isCharNodesValueUsable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    return-object p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static node_getLastChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastChild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    :goto_0
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    :goto_1
    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v2, v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v2, Lorg/w3c/dom/Node;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->isNodeAftertext()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    goto :goto_0

    :pswitch_3
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNextSiblingPtrDomUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isCharNodesAfterUsable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    return-object p0

    :cond_4
    :goto_0
    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->isNodeAftertext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsAfterAsString(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsValueAsString(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public static node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown kind"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    goto :goto_1

    :goto_0
    :pswitch_3
    move-object p0, v2

    goto :goto_1

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_0
    :goto_1
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    check-cast v1, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    if-nez v2, :cond_4

    instance-of v2, v1, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    if-eqz v2, :cond_4

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_4

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getFirstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/NodeXobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->isNodeAftertext()Z

    move-result v2

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-nez v0, :cond_5

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    move-object v0, v1

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p0, :cond_6

    :cond_5
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public static node_hasAttributes(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasAttrs()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 6

    if-ne p1, p2, :cond_0

    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "RefChild is not a child of this node"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNewChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->firstChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez p2, :cond_4

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_4
    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    :goto_3
    move-object v0, v1

    goto :goto_2

    :cond_5
    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_6
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNewChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "Not implemented"

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v1, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_f

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    goto :goto_7

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected child node type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    goto :goto_4

    :cond_a
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    if-eq v1, v5, :cond_d

    if-ne v1, v4, :cond_b

    goto :goto_5

    :cond_b
    if-eq v1, v2, :cond_c

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_4
    const/4 p2, 0x0

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_5
    check-cast p2, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCharNode(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    :goto_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/xmlbeans/impl/store/CharNode;->insertNode(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->getObject()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto/16 :goto_c

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_7
    if-nez p2, :cond_10

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    move-object p2, p1

    check-cast p2, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto/16 :goto_c

    :cond_10
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    if-eq v0, v5, :cond_13

    if-ne v0, v4, :cond_11

    goto :goto_8

    :cond_11
    if-eq v0, v2, :cond_12

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    move-object p2, p1

    check-cast p2, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_c

    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    if-eqz p2, :cond_15

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    if-eq v1, v5, :cond_14

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v1

    if-ne v1, v4, :cond_15

    :cond_14
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->remove(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p2, v1

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    goto :goto_9

    :cond_15
    if-nez p2, :cond_16

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_a

    :cond_16
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    :goto_a
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->nextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez p2, :cond_17

    invoke-static {v1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->append(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_b

    :cond_17
    invoke-static {v1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->insert(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_b

    :cond_18
    :goto_c
    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public static node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const-string v1, "Not impl"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    return-void

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3, v4, v4}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-static {v1, v1}, Lorg/apache/xmlbeans/impl/store/CharNode;->remove(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v2, :cond_3

    :goto_2
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3, v4, v4}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/store/CharNode;->remove(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    goto :goto_2

    :cond_2
    const v2, 0x7fffffff

    iput v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->invalidateDomCaches(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result p0

    const-string v0, "Not impl"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown kind"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/CharNode;->remove(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_4
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :goto_0
    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;

    const-string p1, "Child to remove is not a child of given parent"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NotFoundErr;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p2, Lorg/w3c/dom/Node;

    return-object p2

    :catch_0
    move-exception p1

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p2, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    throw p1
.end method

.method public static node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p0, v3, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto/16 :goto_2

    :cond_2
    check-cast p0, Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v0, v3, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    goto :goto_2

    :cond_4
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/TextNode;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    invoke-static {p0, v0, v3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_6
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/AttrXobj;->isId()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    if-eqz v2, :cond_7

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/DocumentXobj;->removeIdElement(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->attr_getOwnerElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/DocumentXobj;->addIdElement(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-static {p1, p0, p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v6

    if-ne v6, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-static {p1, v5, v4, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0, v5, v4, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :goto_1
    return-void
.end method

.method public static synthetic o(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_domImplementation_createDocument$0(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lorg/w3c/dom/Node;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_importNode$9(Lorg/w3c/dom/Node;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getChildElements$40(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_setFaultCode$77(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static prevSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_getEnvelope$96(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_createProcessingInstruction$6(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_element_getElementsByTagNameNS$20(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeader_examineAllHeaderElements$62(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    :cond_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method private static removeNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/store/CharNode;->appendNodes(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setCharNodes(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-void
.end method

.method public static synthetic s(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getNamespaceURI$53(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapBody_getFault$70(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public static saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xcf;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/xcf;-><init>(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static saajCallback_ensureSoapTextNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Text;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/nbf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/nbf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Text;

    return-object p0
.end method

.method public static saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dbf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dbf;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ddf;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/ddf;-><init>(Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/adf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/adf;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    new-instance v1, Lcom/sunia/HTREnginev2/qdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/qdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    return-object p0
.end method

.method public static soapBody_addDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    new-instance v1, Lcom/sunia/HTREnginev2/sef;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/sef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    return-object p0
.end method

.method public static soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    .line 2
    new-instance v1, Lorg/apache/xmlbeans/impl/store/q;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/q;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    return-object p0
.end method

.method public static soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    .line 4
    new-instance v1, Lorg/apache/xmlbeans/impl/store/p;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/p;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    return-object p0
.end method

.method public static soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 5
    move-object v2, p0

    check-cast v2, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    .line 6
    new-instance v6, Lorg/apache/xmlbeans/impl/store/x;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/x;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0, v6}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    return-object p0
.end method

.method public static soapBody_getFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    new-instance v1, Lcom/sunia/HTREnginev2/qbf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/qbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    return-object p0
.end method

.method public static soapBody_hasFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    new-instance v1, Lcom/sunia/HTREnginev2/fdf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/fdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static soapFault_addDetail(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/w;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/w;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Detail;

    return-object p0
.end method

.method public static soapFault_getDetail(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/ocf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ocf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Detail;

    return-object p0
.end method

.method public static soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/uef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/uef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/zdf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/ief;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ief;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/Name;

    return-object p0
.end method

.method public static soapFault_getFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/zef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Locale;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/ref;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ref;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0
.end method

.method public static soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    new-instance v1, Lcom/sunia/HTREnginev2/xaf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/xaf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    .line 4
    new-instance v1, Lorg/apache/xmlbeans/impl/store/n;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/n;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    return-void
.end method

.method public static soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    .line 2
    new-instance v1, Lorg/apache/xmlbeans/impl/store/i;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/i;-><init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    return-void
.end method

.method public static soapFault_setFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    .line 2
    new-instance v1, Lcom/sunia/HTREnginev2/bdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/bdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static soapFault_setFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    .line 4
    new-instance v1, Lcom/sunia/HTREnginev2/sbf;

    invoke-direct {v1, v0, p1, p2}, Lcom/sunia/HTREnginev2/sbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static soapHeaderElement_getActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    new-instance v1, Lcom/sunia/HTREnginev2/jbf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/jbf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static soapHeaderElement_getMustUnderstand(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    new-instance v1, Lcom/sunia/HTREnginev2/ecf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ecf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static soapHeaderElement_setActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    new-instance v1, Lcom/sunia/HTREnginev2/ybf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/ybf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static soapHeaderElement_setMustUnderstand(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    new-instance v1, Lcom/sunia/HTREnginev2/nef;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/nef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Z)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;
    .locals 2

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    new-instance v1, Lcom/sunia/HTREnginev2/jdf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/jdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    return-object p0
.end method

.method public static soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    new-instance v1, Lcom/sunia/HTREnginev2/mef;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/mef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    new-instance v1, Lcom/sunia/HTREnginev2/zcf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/zcf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    new-instance v1, Lcom/sunia/HTREnginev2/ucf;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/ucf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    new-instance v1, Lcom/sunia/HTREnginev2/gdf;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/gdf;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    new-instance v1, Lcom/sunia/HTREnginev2/bef;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/bef;-><init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method private static syncWrap(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Ljava/util/function/Function<",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/oef;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/oef;-><init>(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static syncWrapEx(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelperEx(Lorg/apache/xmlbeans/impl/store/Locale;ZLorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/Locale;",
            "Z",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper2(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper2(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static syncWrapHelper2(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/Locale;",
            "Z",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_2
    throw p2
.end method

.method private static syncWrapHelperEx(Lorg/apache/xmlbeans/impl/store/Locale;ZLorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/Locale;",
            "Z",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelperEx2(Lorg/apache/xmlbeans/impl/store/Locale;ZLorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelperEx2(Lorg/apache/xmlbeans/impl/store/Locale;ZLorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static syncWrapHelperEx2(Lorg/apache/xmlbeans/impl/store/Locale;ZLorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/Locale;",
            "Z",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_2
    throw p2
.end method

.method private static syncWrapNoEnter(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Ljava/util/function/Function<",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tbf;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/tbf;-><init>(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static syncWrapVoid(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/cef;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/cef;-><init>(Ljava/util/function/Consumer;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Locale;ZLjava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic t(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_element_setAttribute$17(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic t0(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapEnvelope_createName$60(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_addTextNode$49(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapHeaderElement_getMustUnderstand$88(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Locale;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_getFaultStringLocale$82(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_getNonMatchingMimeHeaders$103(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    const-string v0, "Name has an invalid character"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateNcName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$InvalidCharacterError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static validateNewChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->isValidChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    if-eq p0, p1, :cond_3

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->parent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->nodeType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "New child is an ancestor node of the parent node"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NoModificationAllowedErr;

    const-string p1, "Entity reference trees may not be modified"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NoModificationAllowedErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    const-string p1, "New child and parent are the same node"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$HierarchyRequestErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validatePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid prefix - contains \':\' character"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    const-string v0, ""

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Attempt to give a prefix for no namespace"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid prefix - begins with \'xml\'"

    if-eqz v0, :cond_7

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    if-eqz p3, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const-string v0, "Invalid namespace - uri is not \'http://www.w3.org/2000/xmlns/;"

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    if-lez p3, :cond_b

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid namespace - attr prefix begins with \'xml\'"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid namespace - attr is default namespace already"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_e
    :goto_3
    return-object p0

    :cond_f
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateQualifiedName(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string p2, "xmlns"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Default xmlns attribute does not have namespace: http://www.w3.org/2000/xmlns/"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_8

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_6

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->validateNcName(Ljava/lang/String;)V

    const-string v0, "xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid prefix - begins with \'xml\'"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid qualified name, no local part specified"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid qualified name, more than one colon"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Attempt to give a prefix for no namespace"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;

    const-string p1, "Invalid qualified name, no prefix specified"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$NamespaceErr;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapElement_getVisibleNamespacePrefixes$54(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_soapPart_getMimeHeader$99(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_document_getElementsByTagName$7(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_getNamedItem$22(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_getFaultCodeAsName$83(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$_attributes_removeNamedItem$24(Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_setFaultString$75(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static synthetic z0(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->lambda$soapFault_getFaultActor$79(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
