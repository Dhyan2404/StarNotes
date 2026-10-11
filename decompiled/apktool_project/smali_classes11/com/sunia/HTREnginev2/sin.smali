.class public final synthetic Lcom/sunia/HTREnginev2/sin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/tree/tiny/TinyElementImpl;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/tree/tiny/TinyElementImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sin;->e:Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sin;->e:Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->a(Lnet/sf/saxon/tree/tiny/TinyElementImpl;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method
