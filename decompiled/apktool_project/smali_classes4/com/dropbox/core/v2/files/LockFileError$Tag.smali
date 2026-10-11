.class public final enum Lcom/dropbox/core/v2/files/LockFileError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/LockFileError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/LockFileError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum INTERNAL_ERROR:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum LOCK_CONFLICT:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum PATH_LOOKUP:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum TOO_MANY_FILES:Lcom/dropbox/core/v2/files/LockFileError$Tag;

.field public static final enum TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/LockFileError$Tag;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v1, "PATH_LOOKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v2, "TOO_MANY_WRITE_OPERATIONS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/LockFileError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v2, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v3, "TOO_MANY_FILES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/files/LockFileError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v3, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v4, "NO_WRITE_PERMISSION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/files/LockFileError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v4, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v5, "CANNOT_BE_LOCKED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/files/LockFileError$Tag;->CANNOT_BE_LOCKED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v5, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v6, "FILE_NOT_SHARED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/files/LockFileError$Tag;->FILE_NOT_SHARED:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v6, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v7, "LOCK_CONFLICT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/files/LockFileError$Tag;->LOCK_CONFLICT:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v7, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v8, "INTERNAL_ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/files/LockFileError$Tag;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    new-instance v8, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    const-string v9, "OTHER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/files/LockFileError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/files/LockFileError$Tag;->OTHER:Lcom/dropbox/core/v2/files/LockFileError$Tag;

    filled-new-array/range {v0 .. v8}, [Lcom/dropbox/core/v2/files/LockFileError$Tag;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/LockFileError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/LockFileError$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/LockFileError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/LockFileError$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/LockFileError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/LockFileError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/LockFileError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/LockFileError$Tag;

    return-object v0
.end method
