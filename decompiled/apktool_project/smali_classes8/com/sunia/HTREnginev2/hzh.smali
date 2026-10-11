.class public final synthetic Lcom/sunia/HTREnginev2/hzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hzh;->e:Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hzh;->e:Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;->l(Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxListAction;J)Z

    move-result p0

    return p0
.end method
