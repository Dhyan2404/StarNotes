.class public final enum Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\tR\u0011\u0010\r\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "isNewFromCloud",
        "",
        "()Z",
        "isNewFromLocal",
        "isNewVersionFromCloud",
        "isUploadConflict",
        "isUploadSync",
        "NEW_FROM_LOCAL",
        "NEW_FROM_CLOUD",
        "UPLOAD",
        "UPLOAD_CONFLICT",
        "NEW_VERSION_FROM_CLOUD",
        "UNKNOWN",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

.field public static final enum NEW_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

.field public static final enum NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

.field public static final enum NEW_VERSION_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

.field public static final enum UNKNOWN:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

.field public static final enum UPLOAD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

.field public static final enum UPLOAD_CONFLICT:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UPLOAD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UPLOAD_CONFLICT:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    sget-object v4, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_VERSION_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    sget-object v5, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UNKNOWN:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    const-string v1, "NEW_FROM_LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    const-string v1, "NEW_FROM_CLOUD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    const-string v1, "UPLOAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UPLOAD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    const-string v1, "UPLOAD_CONFLICT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UPLOAD_CONFLICT:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    const-string v1, "NEW_VERSION_FROM_CLOUD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_VERSION_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    const/4 v1, 0x5

    const/16 v2, 0x63

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UNKNOWN:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->$values()[Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->id:I

    return p0
.end method

.method public final isNewFromCloud()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNewFromLocal()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNewVersionFromCloud()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_VERSION_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUploadConflict()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UPLOAD_CONFLICT:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUploadSync()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->UPLOAD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

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
