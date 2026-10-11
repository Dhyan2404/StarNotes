.class public final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$e;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$e;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->access$toConvertEntryList(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction$e;->a(Ljava/util/Map;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
