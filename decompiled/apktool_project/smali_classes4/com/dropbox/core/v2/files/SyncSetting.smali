.class public final enum Lcom/dropbox/core/v2/files/SyncSetting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SyncSetting$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/SyncSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/SyncSetting;

.field public static final enum DEFAULT:Lcom/dropbox/core/v2/files/SyncSetting;

.field public static final enum NOT_SYNCED:Lcom/dropbox/core/v2/files/SyncSetting;

.field public static final enum NOT_SYNCED_INACTIVE:Lcom/dropbox/core/v2/files/SyncSetting;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/SyncSetting;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dropbox/core/v2/files/SyncSetting;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SyncSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSetting;->DEFAULT:Lcom/dropbox/core/v2/files/SyncSetting;

    new-instance v1, Lcom/dropbox/core/v2/files/SyncSetting;

    const-string v2, "NOT_SYNCED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/files/SyncSetting;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/SyncSetting;->NOT_SYNCED:Lcom/dropbox/core/v2/files/SyncSetting;

    new-instance v2, Lcom/dropbox/core/v2/files/SyncSetting;

    const-string v3, "NOT_SYNCED_INACTIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/files/SyncSetting;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/files/SyncSetting;->NOT_SYNCED_INACTIVE:Lcom/dropbox/core/v2/files/SyncSetting;

    new-instance v3, Lcom/dropbox/core/v2/files/SyncSetting;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/files/SyncSetting;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/files/SyncSetting;->OTHER:Lcom/dropbox/core/v2/files/SyncSetting;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dropbox/core/v2/files/SyncSetting;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSetting;->$VALUES:[Lcom/dropbox/core/v2/files/SyncSetting;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SyncSetting;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/SyncSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SyncSetting;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/SyncSetting;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/SyncSetting;->$VALUES:[Lcom/dropbox/core/v2/files/SyncSetting;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/SyncSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/SyncSetting;

    return-object v0
.end method
