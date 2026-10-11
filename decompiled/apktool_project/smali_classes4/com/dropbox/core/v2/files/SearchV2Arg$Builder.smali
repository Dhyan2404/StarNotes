.class public Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SearchV2Arg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected includeHighlights:Z

.field protected matchFieldOptions:Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;

.field protected options:Lcom/dropbox/core/v2/files/SearchOptions;

.field protected final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->query:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->options:Lcom/dropbox/core/v2/files/SearchOptions;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->matchFieldOptions:Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->includeHighlights:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'query\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/SearchV2Arg;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/files/SearchV2Arg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->options:Lcom/dropbox/core/v2/files/SearchOptions;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->matchFieldOptions:Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->includeHighlights:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/files/SearchV2Arg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/SearchOptions;Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;Z)V

    return-object v0
.end method

.method public withIncludeHighlights(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->includeHighlights:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->includeHighlights:Z

    :goto_0
    return-object p0
.end method

.method public withMatchFieldOptions(Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->matchFieldOptions:Lcom/dropbox/core/v2/files/SearchMatchFieldOptions;

    return-object p0
.end method

.method public withOptions(Lcom/dropbox/core/v2/files/SearchOptions;)Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchV2Arg$Builder;->options:Lcom/dropbox/core/v2/files/SearchOptions;

    return-object p0
.end method
