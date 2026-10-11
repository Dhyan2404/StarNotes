.class public final synthetic Lcom/sunia/HTREnginev2/mfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mfh;->e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mfh;->e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->b(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method
