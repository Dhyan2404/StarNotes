.class Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->createEditor(Lcom/sunia/HTREnginev2/sdk/Engine;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HWRHelperV2"

    const-string v1, "\u8054\u60f3\u8bcd:onAssociationalChanged"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HWRHelperV2"

    const-string v1, "\u5019\u9009\u8bcd:onCandidateChanged"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onChemicalStructureChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HWRHelperV2"

    const-string v1, "\u5316\u5b66\u516c\u5f0f:onChemicalStructureChanged"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onChemicalStructureChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HWRHelperV2"

    const-string v1, "\u8bc6\u522b\u7ed3\u679c\u6b63\u5e38,onContentChanged"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc6\u522b\u7ed3\u679c\u5f02\u5e38:i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HWRHelperV2"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void
.end method

.method public onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 2

    const-string v0, "\u8bc6\u522b\u5f15\u64ce\u52a0\u8f7d\u5b8c\u6bd5:onLoaded"

    const-string v1, "HWRHelperV2"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u8017\u65f6\u5206\u6790,\u521b\u5efa\u5f15\u64ce\u7ed3\u675f"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    return-void
.end method

.method public onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HWRHelperV2"

    const-string v1, "\u8054\u60f3\u53e5:onSyntheseChanged"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method
