.class public final enum Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

.field public static final enum DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

.field public static final enum INVALID_CURSOR:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    const-string v1, "DISABLED_FOR_TEAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;->DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    new-instance v1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    const-string v2, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;->OTHER:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    new-instance v2, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    const-string v3, "INVALID_CURSOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    filled-new-array {v0, v1, v2}, [Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;->$VALUES:[Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;->$VALUES:[Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/filerequests/ListFileRequestsContinueError;

    return-object v0
.end method
