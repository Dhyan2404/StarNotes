.class public final synthetic Lcom/sunia/HTREnginev2/euj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pattern/NodeKindTest;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/NodeKindTest;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/euj;->a:Lnet/sf/saxon/pattern/NodeKindTest;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/euj;->b:[B

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/euj;->a:Lnet/sf/saxon/pattern/NodeKindTest;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/euj;->b:[B

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/pattern/NodeKindTest;->c(Lnet/sf/saxon/pattern/NodeKindTest;[BI)Z

    move-result p0

    return p0
.end method
