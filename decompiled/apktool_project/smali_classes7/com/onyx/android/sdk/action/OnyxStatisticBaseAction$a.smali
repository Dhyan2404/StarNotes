.class public final Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->createOnyxStatisticProviderObservable()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;->e:Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;)Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction<",
            "TT;>;)",
            "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getOnyxStatisticProvider()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction$a;->a(Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;)Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    move-result-object p0

    return-object p0
.end method
