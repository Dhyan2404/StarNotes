.class public Lnet/sf/saxon/z/IntHashMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TW;>;"
    }
.end annotation


# instance fields
.field public e:I

.field public final f:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "TW;>;"
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
            "TW;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntHashMap$c;->f:Lnet/sf/saxon/z/IntHashMap;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    :goto_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap$c;->f:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v1}, Lnet/sf/saxon/z/IntHashMap;->a(Lnet/sf/saxon/z/IntHashMap;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap$c;->f:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashMap;->b(Lnet/sf/saxon/z/IntHashMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/z/IntHashMap;->c(Lnet/sf/saxon/z/IntHashMap;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap$c;->f:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashMap;->b(Lnet/sf/saxon/z/IntHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/IntHashMap$c;->e:I

    aget-object v0, v0, v1

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap$c;->f:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {p0, v0}, Lnet/sf/saxon/z/IntHashMap;->c(Lnet/sf/saxon/z/IntHashMap;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
