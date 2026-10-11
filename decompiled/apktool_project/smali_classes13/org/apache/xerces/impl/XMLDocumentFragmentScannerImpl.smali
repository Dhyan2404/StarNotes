.class public Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.super Lorg/apache/xerces/impl/XMLScanner;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDocumentScanner;
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/impl/XMLEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;,
        Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;,
        Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;
    }
.end annotation


# static fields
.field protected static final DEBUG_CONTENT_SCANNING:Z = false

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final SCANNER_STATE_CDATA:I = 0xf

.field protected static final SCANNER_STATE_COMMENT:I = 0x2

.field protected static final SCANNER_STATE_CONTENT:I = 0x7

.field protected static final SCANNER_STATE_DOCTYPE:I = 0x4

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0xd

.field protected static final SCANNER_STATE_PI:I = 0x3

.field protected static final SCANNER_STATE_REFERENCE:I = 0x8

.field protected static final SCANNER_STATE_ROOT_ELEMENT:I = 0x6

.field protected static final SCANNER_STATE_START_OF_MARKUP:I = 0x1

.field protected static final SCANNER_STATE_TERMINATED:I = 0xe

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x10

.field public static final p:[Ljava/lang/String;

.field public static final q:[Ljava/lang/Boolean;

.field public static final r:[Ljava/lang/String;

.field public static final s:[Ljava/lang/Object;

.field public static final t:Z

.field public static final u:Z


# instance fields
.field protected final fAttributeQName:Lorg/apache/xerces/xni/QName;

.field protected final fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

.field protected final fContentDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fCurrentElement:Lorg/apache/xerces/xni/QName;

.field protected fDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected final fElementQName:Lorg/apache/xerces/xni/QName;

.field protected final fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

.field protected fEntityStack:[I

.field protected fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

.field protected fHasExternalDTD:Z

.field protected fInScanContent:Z

.field protected fIsEntityDeclaredVC:Z

.field protected fMarkupDepth:I

.field protected fNotifyBuiltInRefs:Z

.field protected fScannerState:I

.field protected fStandalone:Z

.field protected final fTempString:Lorg/apache/xerces/xni/XMLString;

.field protected final fTempString2:Lorg/apache/xerces/xni/XMLString;

.field public final i:[Ljava/lang/String;

.field public final j:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final k:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final l:Lorg/apache/xerces/xni/QName;

.field public final m:[C

.field public n:Z

.field public o:Lorg/apache/xerces/xni/Augmentations;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v2, "http://xml.org/sax/features/namespaces"

    const-string v3, "http://xml.org/sax/features/validation"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->p:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->q:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->r:[Ljava/lang/String;

    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->s:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLScanner;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    new-instance v1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-direct {v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->createContentDispatcher()Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->i:[Ljava/lang/String;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->l:Lorg/apache/xerces/xni/QName;

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->m:[C

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->o:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public static synthetic c(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    return-object p0
.end method


# virtual methods
.method public createContentDispatcher()Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V

    return-object v0
.end method

.method public final d(CLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, p2, v2, v2, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->m:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-interface {p1, v0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-boolean p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p0, p2, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v2, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    iput v2, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    aget v2, v2, v3

    if-eq v0, v2, :cond_1

    const-string v0, "MarkupEntityMismatch"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    if-nez v0, :cond_2

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public getDispatcherName(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)Ljava/lang/String;
    .locals 0

    const-string p0, "null"

    return-object p0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->p:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->q:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->r:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->s:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->p:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->r:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getScannerStateName(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x6

    if-eq p1, p0, :cond_2

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "??? ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "SCANNER_STATE_TEXT_DECL"

    return-object p0

    :pswitch_1
    const-string p0, "SCANNER_STATE_CDATA"

    return-object p0

    :pswitch_2
    const-string p0, "SCANNER_STATE_TERMINATED"

    return-object p0

    :pswitch_3
    const-string p0, "SCANNER_STATE_END_OF_INPUT"

    return-object p0

    :cond_0
    const-string p0, "SCANNER_STATE_REFERENCE"

    return-object p0

    :cond_1
    const-string p0, "SCANNER_STATE_CONTENT"

    return-object p0

    :cond_2
    const-string p0, "SCANNER_STATE_ROOT_ELEMENT"

    return-object p0

    :cond_3
    const-string p0, "SCANNER_STATE_DOCTYPE"

    return-object p0

    :cond_4
    const-string p0, "SCANNER_STATE_PI"

    return-object p0

    :cond_5
    const-string p0, "SCANNER_STATE_COMMENT"

    return-object p0

    :cond_6
    const-string p0, "SCANNER_STATE_START_OF_MARKUP"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleEndElement(Lorg/apache/xerces/xni/QName;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ElementEntityMismatch"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->l:Lorg/apache/xerces/xni/QName;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    iget-object v1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    const-string v1, "ETagRequired"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return p0
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLScanner;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->setNamespaces(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fParserSettings:Z

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-interface {p1, v2}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    :goto_0
    :try_start_1
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/ExternalSubsetResolver;

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

    :cond_1
    :goto_2
    return-void
.end method

.method public scanAttribute(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "EqRequiredInAttribute"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v1}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "AttributeNotUnique"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v8, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/XMLScanner;->scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v2}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    if-nez v0, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {p0}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lorg/apache/xerces/xni/XMLAttributes;->setNonNormalizedValue(ILjava/lang/String;)V

    :cond_3
    const/4 p0, 0x1

    invoke-interface {p1, v1, p0}, Lorg/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    return-void
.end method

.method public scanCDATASection(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    const-string v2, "]]"

    invoke-virtual {p1, v2, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v3, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v3, :cond_1

    invoke-interface {p1, v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    :goto_1
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_6

    if-lez v1, :cond_6

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    const/16 v3, 0x800

    if-le v1, v3, :cond_4

    div-int/lit16 v5, v1, 0x800

    rem-int/lit16 v6, v1, 0x800

    move v1, p1

    :goto_2
    if-lt v1, v3, :cond_3

    :goto_3
    if-lt p1, v5, :cond_2

    if-eqz v6, :cond_6

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    iput v6, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v1, v3, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    if-lt p1, v1, :cond_5

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_7
    return v1

    :cond_8
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_b
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    :goto_6
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-interface {p1, v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "InvalidCharInCDSect"

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0
.end method

.method public scanCharReference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    move-result v0

    iget v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v1, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->o:Lorg/apache/xerces/xni/Augmentations;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->o:Lorg/apache/xerces/xni/Augmentations;

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->o:Lorg/apache/xerces/xni/Augmentations;

    const-string v2, "CHAR_REF_PROBABLE_WS"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->k:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v2, v3, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public scanComment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->scanComment(Lorg/apache/xerces/util/XMLStringBuffer;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public scanContent()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanContent(Lorg/apache/xerces/xni/XMLString;)I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    move v1, v3

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget v5, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_1

    invoke-interface {v2, v0, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    const/16 v0, 0x5d

    if-ne v1, v0, :cond_5

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget v2, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez v2, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CDEndInContent"

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->j:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v2, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-eqz v2, :cond_4

    invoke-interface {v0, v1, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    return v3
.end method

.method public scanDocument(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-interface {v0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;->dispatch(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public scanEndElement()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ETagRequired"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ETagUnterminated"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ElementEntityMismatch"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return p0
.end method

.method public scanEntityReference()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NameRequiredInReference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SemicolonRequiredInReference"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sget-object v1, Lorg/apache/xerces/impl/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x26

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->d(CLjava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/apache/xerces/impl/XMLScanner;->fLtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x3c

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/apache/xerces/impl/XMLScanner;->fGtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3e

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/xerces/impl/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_5

    const/16 v0, 0x22

    goto :goto_0

    :cond_5
    sget-object v1, Lorg/apache/xerces/impl/XMLScanner;->fAposSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    const/16 v0, 0x27

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->isUnparsedEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ReferenceToUnparsedEntity"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    const-string v3, "EntityNotDeclared"

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_8
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_1
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public scanStartElement()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v2, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v3, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/16 v4, 0x3e

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/16 v6, 0x2f

    const-string v7, "ElementUnterminated"

    if-ne v3, v6, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v5

    :goto_2
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ElementEntityMismatch"

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, v4, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2, v3, p0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_5
    :goto_3
    return v0

    :cond_6
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_9

    :cond_7
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameStartHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_9

    :cond_8
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lorg/apache/xerces/xni/XMLAttributes;)V

    goto/16 :goto_1
.end method

.method public scanStartElementAfterName()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v1, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v2, 0x3e

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0x2f

    const-string v5, "ElementUnterminated"

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v5, v3

    aget v3, v4, v5

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ElementEntityMismatch"

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v3, v4, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v3, p0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_4
    :goto_2
    return v0

    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->n:Z

    if-nez v2, :cond_8

    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameStartHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->n:Z

    if-nez v0, :cond_8

    :cond_7
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lorg/apache/xerces/xni/XMLAttributes;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->n:Z

    goto/16 :goto_0
.end method

.method public scanStartElementName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v2}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->n:Z

    return-void
.end method

.method public scanXMLDeclOrTextDecl(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->i:[Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lorg/apache/xerces/impl/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->i:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    const/4 v5, 0x2

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    const-string v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->setStandalone(Z)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {v1, v3, v4, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3, v4, v0, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object p1, p1, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p0, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const-string v0, "scanner/notify-builtin-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    :cond_0
    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "$fragment$"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const-string v1, "internal/entity-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/xerces/impl/XMLEntityManager;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    return-void

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    const-string v0, "internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Lorg/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/apache/xerces/impl/ExternalSubsetResolver;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

    :cond_2
    return-void
.end method

.method public final setScannerState(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    iget v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    aput v2, v0, v1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->isEntityDeclInExternalSubset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    if-nez v0, :cond_2

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method
