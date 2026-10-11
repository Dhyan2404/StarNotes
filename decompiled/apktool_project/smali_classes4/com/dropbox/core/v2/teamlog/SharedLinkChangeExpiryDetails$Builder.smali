.class public Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected newValue:Ljava/util/Date;

.field protected previousValue:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;->newValue:Ljava/util/Date;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;->previousValue:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;->newValue:Ljava/util/Date;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;->previousValue:Ljava/util/Date;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public withNewValue(Ljava/util/Date;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;
    .locals 0

    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;->newValue:Ljava/util/Date;

    return-object p0
.end method

.method public withPreviousValue(Ljava/util/Date;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;
    .locals 0

    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;->previousValue:Ljava/util/Date;

    return-object p0
.end method
