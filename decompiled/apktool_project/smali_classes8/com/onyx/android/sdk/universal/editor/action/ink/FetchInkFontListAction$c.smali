.class public final Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/font/FontList;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/font/FontList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/font/FontList;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;->a(Lcom/onyx/android/sdk/replicator/font/FontList;)Z

    move-result p0

    return p0
.end method
