.class public final enum Lcom/dropbox/core/v2/files/ThumbnailSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ThumbnailSize$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/ThumbnailSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W1024H768:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W128H128:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W2048H1536:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W256H256:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W32H32:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W480H320:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W640H480:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

.field public static final enum W960H640:Lcom/dropbox/core/v2/files/ThumbnailSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v1, "W32H32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W32H32:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v1, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v2, "W64H64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v2, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v3, "W128H128"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/files/ThumbnailSize;->W128H128:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v3, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v4, "W256H256"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/files/ThumbnailSize;->W256H256:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v4, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v5, "W480H320"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/files/ThumbnailSize;->W480H320:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v5, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v6, "W640H480"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/files/ThumbnailSize;->W640H480:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v6, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v7, "W960H640"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/files/ThumbnailSize;->W960H640:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v7, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v8, "W1024H768"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/files/ThumbnailSize;->W1024H768:Lcom/dropbox/core/v2/files/ThumbnailSize;

    new-instance v8, Lcom/dropbox/core/v2/files/ThumbnailSize;

    const-string v9, "W2048H1536"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/files/ThumbnailSize;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/files/ThumbnailSize;->W2048H1536:Lcom/dropbox/core/v2/files/ThumbnailSize;

    filled-new-array/range {v0 .. v8}, [Lcom/dropbox/core/v2/files/ThumbnailSize;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->$VALUES:[Lcom/dropbox/core/v2/files/ThumbnailSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailSize;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ThumbnailSize;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/ThumbnailSize;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->$VALUES:[Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/ThumbnailSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/ThumbnailSize;

    return-object v0
.end method
