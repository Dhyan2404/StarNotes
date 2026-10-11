.class public final synthetic Lcom/sunia/HTREnginev2/c1j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/om/Item;

.field public final synthetic f:Lnet/sf/saxon/type/TypeHierarchy;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c1j;->e:Lnet/sf/saxon/om/Item;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c1j;->f:Lnet/sf/saxon/type/TypeHierarchy;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c1j;->e:Lnet/sf/saxon/om/Item;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c1j;->f:Lnet/sf/saxon/type/TypeHierarchy;

    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/type/LocalUnionType;->a(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/type/AtomicType;)Z

    move-result p0

    return p0
.end method
