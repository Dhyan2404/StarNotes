.class public final synthetic Lcom/sunia/HTREnginev2/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/expr/sort/AtomicComparer;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pf;->e:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pf;->e:Lnet/sf/saxon/expr/sort/AtomicComparer;

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArraySort$b;

    check-cast p2, Lnet/sf/saxon/ma/arrays/ArraySort$b;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArraySort;->a(Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/ma/arrays/ArraySort$b;Lnet/sf/saxon/ma/arrays/ArraySort$b;)I

    move-result p0

    return p0
.end method
