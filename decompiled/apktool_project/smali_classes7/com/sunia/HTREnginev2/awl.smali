.class public final synthetic Lcom/sunia/HTREnginev2/awl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/utils/RxFrameHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/base/utils/RxFrameHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/awl;->e:Lcom/onyx/android/sdk/base/utils/RxFrameHandler;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/awl;->e:Lcom/onyx/android/sdk/base/utils/RxFrameHandler;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/RxFrameHandler;->a(Lcom/onyx/android/sdk/base/utils/RxFrameHandler;J)V

    return-void
.end method
