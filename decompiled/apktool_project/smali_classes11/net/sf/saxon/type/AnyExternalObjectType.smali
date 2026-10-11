.class public Lnet/sf/saxon/type/AnyExternalObjectType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ItemType;


# static fields
.field public static THE_INSTANCE:Lnet/sf/saxon/type/AnyExternalObjectType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/AnyExternalObjectType;

    invoke-direct {v0}, Lnet/sf/saxon/type/AnyExternalObjectType;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/AnyExternalObjectType;->THE_INSTANCE:Lnet/sf/saxon/type/AnyExternalObjectType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/AnyExternalObjectType;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "X"

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->EXTENSION:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
