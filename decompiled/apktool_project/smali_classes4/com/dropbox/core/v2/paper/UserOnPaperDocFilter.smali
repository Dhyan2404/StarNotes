.class public final enum Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

.field public static final enum SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

.field public static final enum VISITED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    const-string v1, "VISITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->VISITED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    new-instance v1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    const-string v2, "SHARED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    new-instance v2, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->OTHER:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    filled-new-array {v0, v1, v2}, [Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->$VALUES:[Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->$VALUES:[Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    return-object v0
.end method
