.class public final Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction$generate$1;
.super Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "com/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction$generate$1",
        "Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;",
        "generateName",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction$generate$2;)V
    .locals 7

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public generateName()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/action/GenerateNameByParenthesesPlusAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->getCheckDuplicate()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/action/GenerateNameByParenthesesPlusAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
