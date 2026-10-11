.class public Lcom/google/api/client/googleapis/json/GoogleJsonError$ParameterViolations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/json/GoogleJsonError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterViolations"
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parameter:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ParameterViolations;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ParameterViolations;->parameter:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ParameterViolations;->description:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ParameterViolations;->parameter:Ljava/lang/String;

    return-void
.end method
