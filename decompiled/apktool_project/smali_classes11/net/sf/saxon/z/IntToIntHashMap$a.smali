.class public Lnet/sf/saxon/z/IntToIntHashMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntToIntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/z/IntToIntHashMap;

.field public b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntToIntHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->a:Lnet/sf/saxon/z/IntToIntHashMap;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    :goto_0
    iget v0, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->b:I

    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->a:Lnet/sf/saxon/z/IntToIntHashMap;

    invoke-static {v1}, Lnet/sf/saxon/z/IntToIntHashMap;->a(Lnet/sf/saxon/z/IntToIntHashMap;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->a:Lnet/sf/saxon/z/IntToIntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntToIntHashMap;->b(Lnet/sf/saxon/z/IntToIntHashMap;)[Z

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->b:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->b:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->a:Lnet/sf/saxon/z/IntToIntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntToIntHashMap;->a(Lnet/sf/saxon/z/IntToIntHashMap;)[I

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/IntToIntHashMap$a;->b:I

    aget p0, v0, v1

    return p0
.end method
