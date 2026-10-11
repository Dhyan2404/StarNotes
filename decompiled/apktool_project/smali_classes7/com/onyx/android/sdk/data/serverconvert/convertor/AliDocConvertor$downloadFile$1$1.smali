.class final Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->downloadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bytesWritten",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

.field final synthetic $totalSize:J

.field final synthetic this$0:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;J)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->$listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    iput-wide p3, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->$totalSize:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    invoke-static {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->access$isAbort$p(Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->$listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    iget-wide v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor$downloadFile$1$1;->$totalSize:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;->onProgress(JJ)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method
