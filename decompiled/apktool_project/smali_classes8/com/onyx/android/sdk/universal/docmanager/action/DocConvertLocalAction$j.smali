.class public final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->x(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$j;->e:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$j;->e:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$j;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method
