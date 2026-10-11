.class public Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/serialize/charcode/CharacterSet;


# static fields
.field public static final NONBMP_MAX:I = 0x10ffff

.field public static final NONBMP_MIN:I = 0x10000

.field public static final SURROGATE1_MAX:C = '\udbff'

.field public static final SURROGATE1_MIN:C = '\ud800'

.field public static final SURROGATE2_MAX:C = '\udfff'

.field public static final SURROGATE2_MIN:C = '\udc00'

.field public static final a:Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->a:Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combinePair(CC)I
    .locals 1

    const v0, 0xd800

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x400

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method

.method public static firstInvalidChar(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/z/IntPredicateProxy;)I
    .locals 2

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getInstance()Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->a:Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;

    return-object v0
.end method

.method public static highSurrogate(I)C
    .locals 1

    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0xa

    const v0, 0xd800

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static isHighSurrogate(I)Z
    .locals 1

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLowSurrogate(I)Z
    .locals 1

    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSurrogate(I)Z
    .locals 1

    const v0, 0xf800

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lowSurrogate(I)C
    .locals 1

    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-16"

    return-object p0
.end method

.method public inCharset(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
