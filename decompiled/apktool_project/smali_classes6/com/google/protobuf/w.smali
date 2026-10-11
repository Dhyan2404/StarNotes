.class public final Lcom/google/protobuf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/vtj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    sget-object p0, Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;->a:Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageV3;->newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
