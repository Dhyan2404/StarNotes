.class Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;
.super Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Scanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->parseXPointer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Scanner;-><init>(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;)V

    return-void
.end method


# virtual methods
.method public addToken(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$1;->this$0:Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;->access$200(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "InvalidElementSchemeToken"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/xpointer/ElementSchemePointer$Tokens;I)V

    return-void
.end method
