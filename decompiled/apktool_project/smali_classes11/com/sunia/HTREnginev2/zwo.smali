.class public final synthetic Lcom/sunia/HTREnginev2/zwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trans/XsltController;

.field public final synthetic b:Lnet/sf/saxon/trans/Mode;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/trans/Mode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zwo;->a:Lnet/sf/saxon/trans/XsltController;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zwo;->b:Lnet/sf/saxon/trans/Mode;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zwo;->a:Lnet/sf/saxon/trans/XsltController;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zwo;->b:Lnet/sf/saxon/trans/Mode;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/trans/XsltController;->f(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
