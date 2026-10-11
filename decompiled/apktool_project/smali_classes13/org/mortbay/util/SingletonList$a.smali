.class public Lorg/mortbay/util/SingletonList$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/SingletonList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lorg/mortbay/util/SingletonList;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/SingletonList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/util/SingletonList$a;->f:Lorg/mortbay/util/SingletonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/util/SingletonList;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lorg/mortbay/util/SingletonList$a;->f:Lorg/mortbay/util/SingletonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    if-gt p2, p1, :cond_0

    .line 3
    iput p2, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SingletonList.add()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget p0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    iget-object p0, p0, Lorg/mortbay/util/SingletonList$a;->f:Lorg/mortbay/util/SingletonList;

    invoke-static {p0}, Lorg/mortbay/util/SingletonList;->a(Lorg/mortbay/util/SingletonList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    iget-object p0, p0, Lorg/mortbay/util/SingletonList$a;->f:Lorg/mortbay/util/SingletonList;

    invoke-static {p0}, Lorg/mortbay/util/SingletonList;->a(Lorg/mortbay/util/SingletonList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    iget p0, p0, Lorg/mortbay/util/SingletonList$a;->e:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SingletonList.remove()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SingletonList.add()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
