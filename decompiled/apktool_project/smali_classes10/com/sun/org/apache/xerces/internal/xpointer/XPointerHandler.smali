.class public final Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;
.super Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;,
        Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;
    }
.end annotation


# instance fields
.field private final ELEMENT_SCHEME_NAME:Ljava/lang/String;

.field protected fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

.field protected fFixupBase:Z

.field protected fFixupLang:Z

.field protected fFoundMatchingPtrPart:Z

.field protected fIsXPointerResolved:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field protected fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

.field protected fXPointerParts:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v0, "element"

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 8
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupBase:Z

    .line 9
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupLang:Z

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    .line 11
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v0, "element"

    .line 17
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->ELEMENT_SCHEME_NAME:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    .line 19
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupBase:Z

    .line 20
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupLang:Z

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 23
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    .line 24
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    return-void
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/XPTR"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    return-void
.end method


# virtual methods
.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLLangAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public getPointerParts()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    return-object p0
.end method

.method public getXPointerPart()Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->initErrorReporter()V

    return-void
.end method

.method public initErrorReporter()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerMessageFormatter;-><init>()V

    const-string v1, "http://www.w3.org/TR/XPTR"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->isChildFragmentResolved()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFragmentResolved()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->isFragmentResolved()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_1
    return v0
.end method

.method public isXPointerResolved()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    return p0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->init()V

    new-instance v6, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$1;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$1;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$1;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;->access$400(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Scanner;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v0

    const-string v1, "InvalidXPointerExpression"

    if-nez v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$500(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v3

    invoke-static {v6, v3}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v3

    invoke-static {v6, v3}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "XPTRTOKEN_OPEN_PAREN"

    if-eq v4, v5, :cond_3

    if-ne v3, v2, :cond_2

    const-string v2, "MultipleShortHandPointers"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    move v3, v2

    :goto_2
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$500(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v4

    invoke-static {v6, v4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    if-eq v4, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v4

    invoke-static {v6, v4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "XPTRTOKEN_CLOSE_PAREN"

    if-eq v7, v8, :cond_6

    const-string v7, "SchemeDataNotFollowedByCloseParenthesis"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$500(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$700(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v7

    if-eq v7, v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-eq v3, v2, :cond_9

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p1, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UnbalancedParenthesisInXPointerExpression"

    invoke-direct {p0, v3, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const-string v2, "element"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {v2, v3, v5}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->setSchemeData(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v2, v4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->parseXPointer(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_a
    const-string v2, "SchemeUnsupported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$600(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xerces/internal/xpointer/ShortHandPointer;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->setSchemeName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerParts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFoundMatchingPtrPart:Z

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerPart:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;->resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fIsXPointerResolved:Z

    :cond_4
    return v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fXPointerErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :cond_1
    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    :cond_3
    :goto_1
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-language"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupLang:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupLang:Z

    :cond_5
    :goto_2
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupBase:Z

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupBase:Z

    :cond_7
    :goto_3
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    if-ne p1, v0, :cond_8

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->isChildFragmentResolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupBase:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->fFixupLang:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLLangAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method
