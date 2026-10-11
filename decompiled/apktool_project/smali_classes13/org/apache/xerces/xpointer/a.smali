.class public Lorg/apache/xerces/xpointer/a;
.super Lorg/apache/xerces/xpointer/XPointerHandler$a;
.source "SourceFile"


# instance fields
.field public final synthetic s:Lorg/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/xpointer/XPointerHandler$a;-><init>(Lorg/apache/xerces/xpointer/XPointerHandler;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xpointer/a;)V

    iput-object p1, p0, Lorg/apache/xerces/xpointer/a;->s:Lorg/apache/xerces/xpointer/XPointerHandler;

    return-void
.end method


# virtual methods
.method public b(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/xpointer/a;->s:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-static {p1, p2}, Lorg/apache/xerces/xpointer/XPointerHandler$b;->a(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "InvalidXPointerToken"

    invoke-static {p0, p2, p1}, Lorg/apache/xerces/xpointer/XPointerHandler;->G(Lorg/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/xpointer/XPointerHandler$a;->b(Lorg/apache/xerces/xpointer/XPointerHandler$b;I)V

    return-void
.end method
