.class public final Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2;->invoke()Lcom/onyx/android/sdk/base/rx/RxFilter;
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
.field public static final e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;

    const/4 p0, 0x0

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->executeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2$a;->a(Ljava/lang/String;)V

    return-void
.end method
