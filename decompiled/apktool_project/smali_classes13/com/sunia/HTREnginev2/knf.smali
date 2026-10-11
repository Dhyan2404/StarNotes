.class public Lcom/sunia/HTREnginev2/knf;
.super Lcom/sunia/HTREnginev2/lnf$a;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lcom/sunia/HTREnginev2/lnf;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sunia/HTREnginev2/lnf$a;-><init>(Lcom/sunia/HTREnginev2/lnf;Lorg/apache/xerces/util/SymbolTable;Lcom/sunia/HTREnginev2/knf;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/knf;->m:Lcom/sunia/HTREnginev2/lnf;

    return-void
.end method


# virtual methods
.method public b(Lcom/sunia/HTREnginev2/lnf$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/knf;->m:Lcom/sunia/HTREnginev2/lnf;

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/lnf$b;->a(Lcom/sunia/HTREnginev2/lnf$b;I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "InvalidElementSchemeToken"

    invoke-virtual {p0, p2, p1}, Lcom/sunia/HTREnginev2/lnf;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/lnf$a;->b(Lcom/sunia/HTREnginev2/lnf$b;I)V

    return-void
.end method
