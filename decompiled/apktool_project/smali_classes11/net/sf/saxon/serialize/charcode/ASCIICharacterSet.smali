.class public Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/serialize/charcode/CharacterSet;


# static fields
.field public static final theInstance:Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;->theInstance:Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;->theInstance:Lnet/sf/saxon/serialize/charcode/ASCIICharacterSet;

    return-object v0
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 0

    const-string p0, "US-ASCII"

    return-object p0
.end method

.method public final inCharset(I)Z
    .locals 0

    const/16 p0, 0x7f

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
