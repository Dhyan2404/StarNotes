.class public final enum Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

.field public static final enum DISABLED:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

.field public static final enum ENABLED:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;->DISABLED:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    const-string v2, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;->ENABLED:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    new-instance v2, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    filled-new-array {v0, v1, v2}, [Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/MemberSuggestionsPolicy;

    return-object v0
.end method
