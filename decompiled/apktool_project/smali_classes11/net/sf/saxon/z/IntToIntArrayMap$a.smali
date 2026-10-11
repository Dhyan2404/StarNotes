.class public Lnet/sf/saxon/z/IntToIntArrayMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntToIntArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/z/IntToIntArrayMap;

.field public b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntToIntArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->a:Lnet/sf/saxon/z/IntToIntArrayMap;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->b:I

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->a:Lnet/sf/saxon/z/IntToIntArrayMap;

    invoke-static {p0}, Lnet/sf/saxon/z/IntToIntArrayMap;->a(Lnet/sf/saxon/z/IntToIntArrayMap;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->a:Lnet/sf/saxon/z/IntToIntArrayMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntToIntArrayMap;->b(Lnet/sf/saxon/z/IntToIntArrayMap;)[I

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap$a;->b:I

    aget p0, v0, v1

    return p0
.end method
