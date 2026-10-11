.class final Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;->getInstance()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->initConvertor(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;->accept(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    return-void
.end method
