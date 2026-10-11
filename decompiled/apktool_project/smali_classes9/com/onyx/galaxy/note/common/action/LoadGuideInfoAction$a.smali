.class public final Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction$a;->e:Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    iput p2, p0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/common/request/LoadGuideInfoRequest;

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction$a;->e:Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;->access$getFunctionId$p(Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction$a;->f:I

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getNoteLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lcom/onyx/android/sdk/data/common/request/LoadGuideInfoRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/request/LoadGuideInfoRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction$a;->a(Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
