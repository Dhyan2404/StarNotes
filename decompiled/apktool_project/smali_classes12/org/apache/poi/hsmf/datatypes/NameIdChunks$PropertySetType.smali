.class public final enum Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/datatypes/NameIdChunks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertySetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

.field public static final enum PS_INTERNET_HEADERS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

.field public static final enum PS_MAPI:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

.field public static final enum PS_PUBLIC_STRINGS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;


# instance fields
.field private final classID:Lorg/apache/poi/hpsf/ClassID;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    const/4 v1, 0x0

    const-string v2, "00020328-0000-0000-C000-000000000046"

    const-string v3, "PS_MAPI"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->PS_MAPI:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    new-instance v1, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    const/4 v2, 0x1

    const-string v3, "00020329-0000-0000-C000-000000000046"

    const-string v4, "PS_PUBLIC_STRINGS"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->PS_PUBLIC_STRINGS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    const/4 v3, 0x2

    const-string v4, "00020386-0000-0000-C000-000000000046"

    const-string v5, "PS_INTERNET_HEADERS"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->PS_INTERNET_HEADERS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->$VALUES:[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {p1, p3}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;)Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;
    .locals 1

    const-class v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->$VALUES:[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    invoke-virtual {v0}, [Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    return-object v0
.end method


# virtual methods
.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method
