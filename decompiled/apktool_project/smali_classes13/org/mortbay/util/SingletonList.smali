.class public Lorg/mortbay/util/SingletonList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/SingletonList$a;
    }
.end annotation


# instance fields
.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/mortbay/util/SingletonList;->e:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/util/SingletonList;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/SingletonList;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static newSingletonList(Ljava/lang/Object;)Lorg/mortbay/util/SingletonList;
    .locals 1

    new-instance v0, Lorg/mortbay/util/SingletonList;

    invoke-direct {v0, p0}, Lorg/mortbay/util/SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/util/SingletonList;->e:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/mortbay/util/SingletonList$a;

    invoke-direct {v0, p0}, Lorg/mortbay/util/SingletonList$a;-><init>(Lorg/mortbay/util/SingletonList;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lorg/mortbay/util/SingletonList$a;

    invoke-direct {v0, p0}, Lorg/mortbay/util/SingletonList$a;-><init>(Lorg/mortbay/util/SingletonList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 2
    new-instance v0, Lorg/mortbay/util/SingletonList$a;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/util/SingletonList$a;-><init>(Lorg/mortbay/util/SingletonList;I)V

    return-object v0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
