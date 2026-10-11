.class public Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final docId:Ljava/lang/String;

.field protected filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

.field protected limit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->docId:Ljava/lang/String;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    sget-object p1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'docId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    .locals 3

    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->docId:Ljava/lang/String;

    iget v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    iget-object p0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;ILcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)V

    return-object v0
.end method

.method public withFilterBy(Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    :goto_0
    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;->limit:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'limit\' is larger than 1000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'limit\' is smaller than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
