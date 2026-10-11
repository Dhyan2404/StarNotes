.class public final Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public static final e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->isFlingFinished()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$m;->a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Z

    move-result p0

    return p0
.end method
