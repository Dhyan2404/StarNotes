.class public Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/serialize/CharacterReferenceGenerator;


# static fields
.field public static final THE_INSTANCE:Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;-><init>()V

    sput-object v0, Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;->THE_INSTANCE:Lnet/sf/saxon/serialize/HexCharacterReferenceGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public outputCharacterReference(ILnet/sf/saxon/str/UnicodeWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x26

    invoke-interface {p2, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    const/16 p0, 0x23

    invoke-interface {p2, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    const/16 p0, 0x78

    invoke-interface {p2, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    const/16 p0, 0x3b

    invoke-interface {p2, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    return-void
.end method
