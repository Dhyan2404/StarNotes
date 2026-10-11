.class public final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->r(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/onyx/android/sdk/reader/Reader;->Companion:Lcom/onyx/android/sdk/reader/Reader$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;->f:Ljava/lang/String;

    const-string v1, "$path"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/reader/Reader$Companion;->supportConverter(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;->a(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    return-void
.end method
