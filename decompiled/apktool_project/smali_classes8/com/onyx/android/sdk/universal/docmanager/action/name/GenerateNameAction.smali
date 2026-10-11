.class public Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u0017\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R#\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u001f\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u000e\u001a\u0004\u0008\u001e\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "generateName",
        "name",
        "p",
        "l",
        "m",
        "",
        "o",
        "n",
        "e",
        "Ljava/lang/String;",
        "getName",
        "()Ljava/lang/String;",
        "",
        "f",
        "I",
        "getMaxLength",
        "()I",
        "maxLength",
        "Lkotlin/Function1;",
        "g",
        "Lkotlin/jvm/functions/Function1;",
        "getCheckDuplicate",
        "()Lkotlin/jvm/functions/Function1;",
        "checkDuplicate",
        "h",
        "getOverflowName",
        "overflowName",
        "<init>",
        "(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkDuplicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overflowName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->e:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->f:I

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->g:Lkotlin/jvm/functions/Function1;

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, ""

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$nameLengthCheck(Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nameOverflow(Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->o(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$a;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$b;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public generateName()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$generateName$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$generateName$1;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->h:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCheckDuplicate()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->g:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getMaxLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->f:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getOverflowName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/action/GenerateNameByAppendAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/base/action/GenerateNameByAppendAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/action/GenerateNameByPlusAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/base/action/GenerateNameByPlusAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->o(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/universal/R$string;->name_exist:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->f:I

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->toRuleLength(Ljava/lang/String;)I

    move-result p1

    iget p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->f:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$array;->default_create_name:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->removeSuffixNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->m(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;->l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method
