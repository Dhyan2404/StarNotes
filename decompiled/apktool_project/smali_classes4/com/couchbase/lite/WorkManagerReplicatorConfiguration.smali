.class public final Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;
.super Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;",
        "Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;",
        "replConfig",
        "Lcom/couchbase/lite/ReplicatorConfiguration;",
        "(Lcom/couchbase/lite/ReplicatorConfiguration;)V",
        "value",
        "",
        "acceptOnlySelfSignedServerCertificate",
        "getAcceptOnlySelfSignedServerCertificate",
        "()Z",
        "setAcceptOnlySelfSignedServerCertificate",
        "(Z)V",
        "Companion",
        "couchbase-lite-android-ee-ktx-3.2.2-21_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;->Companion:Lcom/couchbase/lite/WorkManagerReplicatorConfiguration$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    return-void
.end method


# virtual methods
.method public final getAcceptOnlySelfSignedServerCertificate()Z
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->getReplConfig()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorConfiguration;->isAcceptOnlySelfSignedServerCertificate()Z

    move-result p0

    return p0
.end method

.method public final setAcceptOnlySelfSignedServerCertificate(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/AbstractWorkManagerReplicatorConfiguration;->getReplConfig()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/ReplicatorConfiguration;->setAcceptOnlySelfSignedServerCertificate(Z)Lcom/couchbase/lite/ReplicatorConfiguration;

    return-void
.end method
