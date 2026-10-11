.class public Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lnet/sf/saxon/tree/jiter/TopDownStackIterable;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/jiter/TopDownStackIterable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;->f:Lnet/sf/saxon/tree/jiter/TopDownStackIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->a(Lnet/sf/saxon/tree/jiter/TopDownStackIterable;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;->e:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;->f:Lnet/sf/saxon/tree/jiter/TopDownStackIterable;

    invoke-static {v0}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->a(Lnet/sf/saxon/tree/jiter/TopDownStackIterable;)Ljava/util/Stack;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable$a;->e:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
