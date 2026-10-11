.class public Lnet/sf/saxon/om/EmptyAttributeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AttributeMap;


# static fields
.field public static final e:Lnet/sf/saxon/om/EmptyAttributeMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/EmptyAttributeMap;

    invoke-direct {v0}, Lnet/sf/saxon/om/EmptyAttributeMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/EmptyAttributeMap;->e:Lnet/sf/saxon/om/EmptyAttributeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/EmptyAttributeMap;->e:Lnet/sf/saxon/om/EmptyAttributeMap;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/util/function/Function;)Lnet/sf/saxon/om/AttributeMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;)",
            "Lnet/sf/saxon/om/AttributeMap;"
        }
    .end annotation

    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getByFingerprint(ILnet/sf/saxon/om/NamePool;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/om/SingletonAttributeMap;->of(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/SingletonAttributeMap;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeMap;
    .locals 0

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
