.class public final synthetic Lcom/sunia/HTREnginev2/tsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/ForMemberExpression;

.field public final synthetic b:Lnet/sf/saxon/ma/arrays/ArrayItem;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContext;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/ForMemberExpression;Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/expr/XPathContext;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tsg;->a:Lnet/sf/saxon/expr/ForMemberExpression;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tsg;->b:Lnet/sf/saxon/ma/arrays/ArrayItem;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/tsg;->c:Lnet/sf/saxon/expr/XPathContext;

    iput p4, p0, Lcom/sunia/HTREnginev2/tsg;->d:I

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tsg;->a:Lnet/sf/saxon/expr/ForMemberExpression;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tsg;->b:Lnet/sf/saxon/ma/arrays/ArrayItem;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tsg;->c:Lnet/sf/saxon/expr/XPathContext;

    iget p0, p0, Lcom/sunia/HTREnginev2/tsg;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/expr/ForMemberExpression;->h(Lnet/sf/saxon/expr/ForMemberExpression;Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/expr/XPathContext;ILnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
