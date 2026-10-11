.class public final enum Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum ALREADY_OWNED_BY_USER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum ALREADY_PENDING:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum RATE_LIMITED:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum REACHED_LIMIT:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum SUCCESS:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum TOO_MANY_UPDATES:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum UNAVAILABLE:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public static final enum UNKNOWN_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v2, "UNAVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNAVAILABLE:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v2, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v3, "ALREADY_PENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_PENDING:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v3, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v4, "ALREADY_OWNED_BY_USER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_OWNED_BY_USER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v4, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v5, "REACHED_LIMIT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->REACHED_LIMIT:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v5, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v6, "TRANSIENT_ERROR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v6, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v7, "TOO_MANY_UPDATES"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TOO_MANY_UPDATES:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v7, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v8, "UNKNOWN_ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v8, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v9, "RATE_LIMITED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    new-instance v9, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    const-string v10, "OTHER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    filled-new-array/range {v0 .. v9}, [Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    return-object v0
.end method
