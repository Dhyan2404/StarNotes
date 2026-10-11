.class public final enum Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;",
        "",
        "errorCode",
        "",
        "errorDescription",
        "",
        "canRetry",
        "",
        "(Ljava/lang/String;ILjava/lang/String;IZ)V",
        "getCanRetry",
        "()Z",
        "setCanRetry",
        "(Z)V",
        "getErrorCode",
        "()Ljava/lang/String;",
        "setErrorCode",
        "(Ljava/lang/String;)V",
        "getErrorDescription",
        "()I",
        "setErrorDescription",
        "(I)V",
        "NET_WORK_ERROR",
        "PARSE_FAILED",
        "NO_SPACE",
        "note_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

.field public static final enum NET_WORK_ERROR:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

.field public static final enum NO_SPACE:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

.field public static final enum PARSE_FAILED:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;


# instance fields
.field private canRetry:Z

.field private errorCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private errorDescription:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->NET_WORK_ERROR:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->PARSE_FAILED:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->NO_SPACE:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 23

    new-instance v6, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    const-string v1, "NET_WORK_ERROR"

    const/4 v2, 0x0

    const-string v3, "cw0002"

    sget v4, Lcom/onyx/galaxy/note/R$string;->error_tips_network:I

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v6, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->NET_WORK_ERROR:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    const-string v8, "PARSE_FAILED"

    const/4 v9, 0x1

    const-string v10, "cw0003"

    sget v11, Lcom/onyx/galaxy/note/R$string;->error_tips_parse_failed:I

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->PARSE_FAILED:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    const-string v16, "NO_SPACE"

    const/16 v17, 0x2

    const-string v18, "cw0004"

    sget v19, Lcom/onyx/galaxy/note/R$string;->error_tips_no_space:I

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->NO_SPACE:Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->$values()[Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->$VALUES:[Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->errorCode:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->errorDescription:I

    .line 4
    iput-boolean p5, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->canRetry:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/settings/data/BackupErrorType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/settings/data/BackupErrorType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->$VALUES:[Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    return-object v0
.end method


# virtual methods
.method public final getCanRetry()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->canRetry:Z

    return p0
.end method

.method public final getErrorCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getErrorDescription()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->errorDescription:I

    return p0
.end method

.method public final setCanRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->canRetry:Z

    return-void
.end method

.method public final setErrorCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public final setErrorDescription(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->errorDescription:I

    return-void
.end method
