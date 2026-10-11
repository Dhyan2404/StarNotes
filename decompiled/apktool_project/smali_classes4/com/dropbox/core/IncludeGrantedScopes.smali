.class public final enum Lcom/dropbox/core/IncludeGrantedScopes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/IncludeGrantedScopes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/IncludeGrantedScopes;

.field public static final enum TEAM:Lcom/dropbox/core/IncludeGrantedScopes;

.field public static final enum USER:Lcom/dropbox/core/IncludeGrantedScopes;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dropbox/core/IncludeGrantedScopes;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/IncludeGrantedScopes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/IncludeGrantedScopes;->USER:Lcom/dropbox/core/IncludeGrantedScopes;

    new-instance v1, Lcom/dropbox/core/IncludeGrantedScopes;

    const-string v2, "TEAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/IncludeGrantedScopes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/IncludeGrantedScopes;->TEAM:Lcom/dropbox/core/IncludeGrantedScopes;

    filled-new-array {v0, v1}, [Lcom/dropbox/core/IncludeGrantedScopes;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/IncludeGrantedScopes;->$VALUES:[Lcom/dropbox/core/IncludeGrantedScopes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/IncludeGrantedScopes;
    .locals 1

    const-class v0, Lcom/dropbox/core/IncludeGrantedScopes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/IncludeGrantedScopes;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/IncludeGrantedScopes;
    .locals 1

    sget-object v0, Lcom/dropbox/core/IncludeGrantedScopes;->$VALUES:[Lcom/dropbox/core/IncludeGrantedScopes;

    invoke-virtual {v0}, [Lcom/dropbox/core/IncludeGrantedScopes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/IncludeGrantedScopes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
