.class public Lnet/sf/saxon/z/IntSingletonIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# instance fields
.field public final a:I

.field public b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/z/IntSingletonIterator;->b:Z

    iput p1, p0, Lnet/sf/saxon/z/IntSingletonIterator;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/z/IntSingletonIterator;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/z/IntSingletonIterator;->b:Z

    iget p0, p0, Lnet/sf/saxon/z/IntSingletonIterator;->a:I

    return p0
.end method
