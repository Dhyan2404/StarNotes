.class public Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

.field protected previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;-><init>(Lcom/dropbox/core/v2/teampolicies/RolloutMethod;Lcom/dropbox/core/v2/teampolicies/RolloutMethod;)V

    return-object v0
.end method

.method public withNewValue(Lcom/dropbox/core/v2/teampolicies/RolloutMethod;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teampolicies/RolloutMethod;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    return-object p0
.end method
