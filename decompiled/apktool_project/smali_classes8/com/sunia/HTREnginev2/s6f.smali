.class public final synthetic Lcom/sunia/HTREnginev2/s6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

.field public final synthetic f:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s6f;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s6f;->f:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s6f;->e:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s6f;->f:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->q(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
