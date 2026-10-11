.class public final synthetic Lcom/sunia/HTREnginev2/tce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlProgressListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tce;->a:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tce;->a:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->b(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V

    return-void
.end method
