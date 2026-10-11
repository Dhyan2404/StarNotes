.class public final synthetic Lcom/sunia/HTREnginev2/hxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/hxl;->e:Z

    iput p2, p0, Lcom/sunia/HTREnginev2/hxl;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/hxl;->e:Z

    iget p0, p0, Lcom/sunia/HTREnginev2/hxl;->f:I

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->a(ZI)V

    return-void
.end method
