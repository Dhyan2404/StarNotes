.class Lcom/sunia/commonv2/hwr/SDKHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/SDKHelper;->test2([Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/commonv2/hwr/SDKHelper;

.field final synthetic val$gesture:[Lcom/sunia/HTREnginev2/sdk/editor/Editor;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/SDKHelper;[Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper$4;->this$0:Lcom/sunia/commonv2/hwr/SDKHelper;

    iput-object p2, p0, Lcom/sunia/commonv2/hwr/SDKHelper$4;->val$gesture:[Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/SDKHelper$4;->val$gesture:[Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->isClosed()Z

    return-void
.end method
