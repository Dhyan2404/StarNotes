.class public Lcom/onyx/engine/sdk/TableOfContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/TableOfContent$TocParameter;,
        Lcom/onyx/engine/sdk/TableOfContent$EntryList;
    }
.end annotation


# instance fields
.field private loadPosition:Z

.field private root:Lcom/onyx/engine/sdk/TableOfContentEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TableOfContent;->loadPosition:Z

    new-instance v0, Lcom/onyx/engine/sdk/TableOfContentEntry;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lcom/onyx/engine/sdk/TableOfContentEntry;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableOfContent;->root:Lcom/onyx/engine/sdk/TableOfContentEntry;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/TableOfContent;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/TableOfContent;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/TableOfContent;

    return-object p0
.end method


# virtual methods
.method public getRoot()Lcom/onyx/engine/sdk/TableOfContentEntry;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContent;->root:Lcom/onyx/engine/sdk/TableOfContentEntry;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContent;->root:Lcom/onyx/engine/sdk/TableOfContentEntry;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/TableOfContentEntry;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isLoadPosition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TableOfContent;->loadPosition:Z

    return p0
.end method

.method public setLoadPosition(Z)Lcom/onyx/engine/sdk/TableOfContent;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TableOfContent;->loadPosition:Z

    return-object p0
.end method

.method public setRoot(Lcom/onyx/engine/sdk/TableOfContentEntry;)Lcom/onyx/engine/sdk/TableOfContent;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableOfContent;->root:Lcom/onyx/engine/sdk/TableOfContentEntry;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContent;->root:Lcom/onyx/engine/sdk/TableOfContentEntry;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/TableOfContentEntry;->size()I

    move-result p0

    return p0
.end method
