.class public final Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;->debounceFetch()V
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->Companion:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;->access$getRxFilter(Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;)Lcom/onyx/android/sdk/base/rx/RxFilter;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;->a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V

    return-void
.end method
