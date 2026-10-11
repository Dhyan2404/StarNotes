.class public final enum Lcom/dropbox/core/v2/files/FileStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FileStatus$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/FileStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/FileStatus;

.field public static final enum ACTIVE:Lcom/dropbox/core/v2/files/FileStatus;

.field public static final enum DELETED:Lcom/dropbox/core/v2/files/FileStatus;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/FileStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/files/FileStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/FileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/FileStatus;->ACTIVE:Lcom/dropbox/core/v2/files/FileStatus;

    new-instance v1, Lcom/dropbox/core/v2/files/FileStatus;

    const-string v2, "DELETED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/files/FileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/FileStatus;->DELETED:Lcom/dropbox/core/v2/files/FileStatus;

    new-instance v2, Lcom/dropbox/core/v2/files/FileStatus;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/files/FileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/files/FileStatus;->OTHER:Lcom/dropbox/core/v2/files/FileStatus;

    filled-new-array {v0, v1, v2}, [Lcom/dropbox/core/v2/files/FileStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/FileStatus;->$VALUES:[Lcom/dropbox/core/v2/files/FileStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileStatus;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/FileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/FileStatus;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/FileStatus;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/FileStatus;->$VALUES:[Lcom/dropbox/core/v2/files/FileStatus;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/FileStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/FileStatus;

    return-object v0
.end method
