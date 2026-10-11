.class final Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/extension/CollectionKt;->copyList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u0002H\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lcom/onyx/android/sdk/base/data/Copier;",
        "it",
        "invoke",
        "(Lcom/onyx/android/sdk/base/data/Copier;)Lcom/onyx/android/sdk/base/data/Copier;"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;->INSTANCE:Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/base/data/Copier;)Lcom/onyx/android/sdk/base/data/Copier;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Copier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/onyx/android/sdk/base/data/Copier;->copy()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of com.onyx.android.sdk.base.extension.CollectionKt.copyList"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/Copier;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/base/data/Copier;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt$copyList$1;->invoke(Lcom/onyx/android/sdk/base/data/Copier;)Lcom/onyx/android/sdk/base/data/Copier;

    move-result-object p0

    return-object p0
.end method
