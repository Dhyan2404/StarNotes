.class public Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected accessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected warning:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->warning:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessDetails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->warning:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessDetails:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public withAccessDetails(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'accessDetails\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessDetails:Ljava/util/List;

    return-object p0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object p0
.end method

.method public withWarning(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->warning:Ljava/lang/String;

    return-object p0
.end method
