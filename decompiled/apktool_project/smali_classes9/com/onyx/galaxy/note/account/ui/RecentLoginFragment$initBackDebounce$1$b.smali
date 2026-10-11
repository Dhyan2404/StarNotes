.class public final Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;->onResume(Landroidx/lifecycle/LifecycleOwner;)V
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
.field public static final e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;->e:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/schedulers/Timed;)Z
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/schedulers/Timed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/schedulers/Timed<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/reactivex/rxjava3/schedulers/Timed;->time()J

    move-result-wide p0

    const-wide/16 v0, 0x5dc

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/schedulers/Timed;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1$b;->a(Lio/reactivex/rxjava3/schedulers/Timed;)Z

    move-result p0

    return p0
.end method
