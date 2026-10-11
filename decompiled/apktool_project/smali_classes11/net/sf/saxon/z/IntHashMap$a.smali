.class public Lnet/sf/saxon/z/IntHashMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/z/IntIterator;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/z/IntHashMap<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntHashMap$a;->b:Lnet/sf/saxon/z/IntHashMap;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    :goto_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap$a;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v1}, Lnet/sf/saxon/z/IntHashMap;->a(Lnet/sf/saxon/z/IntHashMap;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap$a;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashMap;->b(Lnet/sf/saxon/z/IntHashMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/z/IntHashMap;->c(Lnet/sf/saxon/z/IntHashMap;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap$a;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashMap;->a(Lnet/sf/saxon/z/IntHashMap;)[I

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/IntHashMap$a;->a:I

    aget p0, v0, v1

    return p0
.end method
