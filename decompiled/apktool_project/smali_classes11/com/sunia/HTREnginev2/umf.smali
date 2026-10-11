.class public final synthetic Lcom/sunia/HTREnginev2/umf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/tree/linked/ElementImpl;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/tree/linked/ElementImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/umf;->e:Lnet/sf/saxon/tree/linked/ElementImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/umf;->e:Lnet/sf/saxon/tree/linked/ElementImpl;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->e(Lnet/sf/saxon/tree/linked/ElementImpl;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method
