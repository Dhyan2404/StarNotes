.class public Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;
    }
.end annotation


# static fields
.field public static final COMMENTSTRING:[C

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field public static final DOCTYPE:[C

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_DTD_EXTERNAL:I = 0x2e

.field protected static final SCANNER_STATE_DTD_EXTERNAL_DECLS:I = 0x2f

.field protected static final SCANNER_STATE_DTD_INTERNAL_DECLS:I = 0x2d

.field protected static final SCANNER_STATE_NO_SUCH_ELEMENT_EXCEPTION:I = 0x30

.field protected static final SCANNER_STATE_PROLOG:I = 0x2b

.field protected static final SCANNER_STATE_TRAILING_MISC:I = 0x2c

.field protected static final SCANNER_STATE_XML_DECL:I = 0x2a

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field protected fAddedListener:Z

.field protected fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field private final fDTDDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

.field protected fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

.field protected fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

.field protected fDisallowDoctype:Z

.field protected fDoctypeName:Ljava/lang/String;

.field protected fDoctypePublicId:Ljava/lang/String;

.field protected fDoctypeSystemId:Ljava/lang/String;

.field protected fEndPos:I

.field private fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

.field protected fLoadExternalDTD:Z

.field protected fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected fPrologDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

.field protected fReadingDTD:Z

.field protected fScanEndElement:Z

.field protected fSeenDoctypeDecl:Z

.field protected fSeenInternalSubset:Z

.field protected fStartPos:I

.field private fString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field private fStrings:[Ljava/lang/String;

.field protected fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

.field protected fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field protected fXMLDeclDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->DOCTYPE:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->COMMENTSTRING:[C

    return-void

    :array_0
    .array-data 2
        0x44s
        0x4fs
        0x43s
        0x54s
        0x59s
        0x50s
        0x45s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2ds
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fReadingDTD:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fAddedListener:Z

    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    return-object p0
.end method


# virtual methods
.method public createContentDriver()Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    const-string p2, "[xml]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    if-ne p1, p2, :cond_0

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getDTDDecl()Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append([CII)V

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    const-string v1, "]>"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v3, v2

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    if-eqz p0, :cond_1

    array-length v4, p0

    invoke-static {p0, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    array-length p0, v2

    invoke-static {v2, v0, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v3, v2

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    if-eqz p0, :cond_1

    array-length v4, p0

    invoke-static {p0, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    array-length p0, v2

    invoke-static {v2, v0, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public getScannerStateName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "SCANNER_STATE_DTD_EXTERNAL_DECLS"

    return-object p0

    :pswitch_1
    const-string p0, "SCANNER_STATE_DTD_EXTERNAL"

    return-object p0

    :pswitch_2
    const-string p0, "SCANNER_STATE_DTD_INTERNAL_DECLS"

    return-object p0

    :pswitch_3
    const-string p0, "SCANNER_STATE_TRAILING_MISC"

    return-object p0

    :pswitch_4
    const-string p0, "SCANNER_STATE_PROLOG"

    return-object p0

    :pswitch_5
    const-string p0, "SCANNER_STATE_XML_DECL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScannetState()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return p0
.end method

.method public next()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result p0

    return p0
.end method

.method public refresh(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->refresh(I)V

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fReadingDTD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget-object v0, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append([CII)V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    :cond_1
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->reset()V

    const-string v1, "javax.xml.stream.supportDTD"

    .line 7
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    .line 8
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    const/4 v1, 0x7

    .line 9
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 10
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 12
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-eqz v1, :cond_0

    .line 13
    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 14
    :cond_0
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    .line 15
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    .line 16
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    :cond_1
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 23
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    .line 24
    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    :goto_0
    :try_start_1
    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 26
    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 27
    :catch_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    :goto_1
    :try_start_2
    const-string v3, "http://xml.org/sax/features/namespaces"

    .line 28
    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 29
    :catch_2
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    .line 30
    :goto_2
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    const-string v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    .line 31
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    :try_start_3
    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    .line 32
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 33
    :catch_3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    :goto_3
    :try_start_4
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    .line 34
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 35
    :catch_4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->reset()V

    .line 38
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    .line 39
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    .line 40
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    :cond_1
    const/16 p1, 0x2a

    .line 42
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 43
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    return-void
.end method

.method public scanDoctypeDecl()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v4, v0, v3

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v1, v4, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDescription:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;->getExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLDTDDescription;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v6, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v4, v6, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DoctypedeclUnterminated"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move v2, v3

    :cond_9
    return v2
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    sub-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const-string v1, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    return-void

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const-string v0, "disallow-doctype-decl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    :cond_1
    return-void
.end method

.method public setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->startDocumentEntity(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const-string v1, "internal/dtd-scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    const-string v0, "internal/namespace-context"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->registerListener(Lcom/sun/xml/internal/stream/XMLBufferListener;)V

    const-string p2, "[xml]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->isExternal()Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p4, 0x24

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    :cond_0
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p4, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p0, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method
