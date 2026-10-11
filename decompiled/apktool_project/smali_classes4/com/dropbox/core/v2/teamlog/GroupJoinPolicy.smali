.class public final enum Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

.field public static final enum OPEN:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

.field public static final enum REQUEST_TO_JOIN:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->OPEN:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    const-string v2, "REQUEST_TO_JOIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->REQUEST_TO_JOIN:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    filled-new-array {v0, v1, v2}, [Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    return-object v0
.end method
