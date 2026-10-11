.class public final enum Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "supportLoadThumbnail",
        "",
        "Unknown",
        "Document",
        "Image",
        "Audio",
        "Video",
        "Download",
        "Bluetooth",
        "Push",
        "APK",
        "Zip",
        "Shortcut",
        "Font",
        "WifiTransfer",
        "Torrent",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum APK:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Audio:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Bluetooth:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Document:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Download:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Font:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Image:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Push:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Shortcut:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Torrent:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Video:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum WifiTransfer:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

.field public static final enum Zip:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 14

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Image:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Audio:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v4, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Video:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v5, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Download:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v6, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Bluetooth:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v7, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Push:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v8, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->APK:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v9, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Zip:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v10, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Shortcut:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v11, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Font:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v12, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->WifiTransfer:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v13, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Torrent:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    filled-new-array/range {v0 .. v13}, [Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const/16 v1, 0x63

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Document"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Image"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Image:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Audio"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Audio:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Video"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Video:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Download"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Download:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Bluetooth"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Bluetooth:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Push"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Push:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "APK"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->APK:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Zip"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Zip:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Shortcut"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Shortcut:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Font"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Font:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "WifiTransfer"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->WifiTransfer:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    const-string v1, "Torrent"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Torrent:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->$values()[Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->id:I

    return p0
.end method

.method public final supportLoadThumbnail()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Image:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Push:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->WifiTransfer:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
