.class public final enum Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

.field public static final enum EDIT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

.field public static final enum VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    const-string v1, "EDIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->EDIT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    new-instance v1, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    const-string v2, "VIEW_AND_COMMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    new-instance v2, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    filled-new-array {v0, v1, v2}, [Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->$VALUES:[Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->$VALUES:[Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    return-object v0
.end method
