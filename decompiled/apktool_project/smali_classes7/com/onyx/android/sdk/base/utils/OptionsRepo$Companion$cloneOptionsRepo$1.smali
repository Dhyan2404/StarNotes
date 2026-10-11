.class final Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;->cloneOptionsRepo$default(Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;Lcom/onyx/android/sdk/base/utils/OptionsRepo;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "<anonymous parameter 1>",
        "",
        "invoke"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;->INSTANCE:Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion$cloneOptionsRepo$1;->invoke(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/base/utils/OptionsRepo;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/OptionsRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "<anonymous parameter 0>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<anonymous parameter 1>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
