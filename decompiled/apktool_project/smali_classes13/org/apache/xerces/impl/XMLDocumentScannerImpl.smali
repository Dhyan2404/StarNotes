.class public Lorg/apache/xerces/impl/XMLDocumentScannerImpl;
.super Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;,
        Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;,
        Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;,
        Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;,
        Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;
    }
.end annotation


# static fields
.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field public static final J:[Ljava/lang/String;

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field public static final O:[Ljava/lang/Boolean;

.field public static final Q:[Ljava/lang/String;

.field protected static final SCANNER_STATE_DTD_EXTERNAL:I = 0x12

.field protected static final SCANNER_STATE_DTD_EXTERNAL_DECLS:I = 0x13

.field protected static final SCANNER_STATE_DTD_INTERNAL_DECLS:I = 0x11

.field protected static final SCANNER_STATE_PROLOG:I = 0x5

.field protected static final SCANNER_STATE_TRAILING_MISC:I = 0xc

.field protected static final SCANNER_STATE_XML_DECL:I = 0x0

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final Z:[Ljava/lang/Object;


# instance fields
.field protected final fDTDDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDisallowDoctype:Z

.field protected fDoctypeName:Ljava/lang/String;

.field protected fDoctypePublicId:Ljava/lang/String;

.field protected fDoctypeSystemId:Ljava/lang/String;

.field protected fLoadExternalDTD:Z

.field protected fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected final fPrologDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fScanningDTD:Z

.field protected fSeenDoctypeDecl:Z

.field protected final fTrailingMiscDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected final fXMLDeclDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field public final v:[Ljava/lang/String;

.field public final w:Lorg/apache/xerces/xni/XMLString;

.field public final x:Lorg/apache/xerces/util/XMLStringBuffer;

.field public y:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field public final z:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->J:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->O:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    const-string v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->Q:[Ljava/lang/String;

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->Z:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;-><init>()V

    new-instance v0, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fXMLDeclDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->v:[Ljava/lang/String;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->x:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->z:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    return-void
.end method

.method public static synthetic e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->x:Lorg/apache/xerces/util/XMLStringBuffer;

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/XMLString;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->w:Lorg/apache/xerces/xni/XMLString;

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-object p1
.end method

.method public static synthetic i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->z:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    return-object p0
.end method


# virtual methods
.method public createContentDispatcher()Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p2, :cond_0

    const-string p2, "[xml]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->J:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->O:[Ljava/lang/Boolean;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->Q:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->Z:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->J:[Ljava/lang/String;

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

    invoke-super {p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->Q:[Ljava/lang/String;

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
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

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

    :cond_0
    const-string p0, "SCANNER_STATE_TRAILING_MISC"

    return-object p0

    :cond_1
    const-string p0, "SCANNER_STATE_PROLOG"

    return-object p0

    :cond_2
    const-string p0, "SCANNER_STATE_XML_DECL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fScanningDTD:Z

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fParserSettings:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fXMLDeclDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return-void

    :cond_1
    :try_start_0
    const-string v2, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    :goto_1
    :try_start_1
    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    :goto_2
    const-string v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    :try_start_2
    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    :goto_3
    :try_start_3
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xni/NamespaceContext;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {p1}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    goto :goto_0
.end method

.method public scanDoctypeDecl()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->v:[Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lorg/apache/xerces/impl/XMLScanner;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->v:[Ljava/lang/String;

    aget-object v4, v0, v3

    iput-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->z:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v1, v4, v1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->z:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->z:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-interface {v0, v4}, Lorg/apache/xerces/impl/ExternalSubsetResolver;->getExternalSubset(Lorg/apache/xerces/xni/grammars/XMLDTDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    :cond_5
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v6, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->y:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v4, v6, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DoctypedeclUnterminated"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move v2, v3

    :cond_9
    return v2
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setFeature(Ljava/lang/String;Z)V

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

    iput-boolean p2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    return-void

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const-string v0, "disallow-doctype-decl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    :cond_1
    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->startDocumentEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

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

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    const-string v0, "internal/namespace-context"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    check-cast p2, Lorg/apache/xerces/xni/NamespaceContext;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    const-string p2, "[xml]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p4}, Lorg/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p4, 0x10

    invoke-virtual {p0, p4}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    :cond_0
    iget-object p4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p4, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p0, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method
