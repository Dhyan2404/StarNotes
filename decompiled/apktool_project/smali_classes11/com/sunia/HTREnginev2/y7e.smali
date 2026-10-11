.class public final synthetic Lcom/sunia/HTREnginev2/y7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y7e;->e:Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y7e;->e:Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;

    invoke-static {p0}, Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;->a(Lnet/sf/saxon/tree/jiter/ConcatenatingIterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
