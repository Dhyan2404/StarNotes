.class public Lcom/sunia/HTREnginev2/impl_native/callback/LocalCandidateCallback;
.super Lcom/sunia/HTREnginev2/sdk/CandidateCallback;
.source "SourceFile"


# instance fields
.field private recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/CandidateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCandidate(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/callback/LocalCandidateCallback;->recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/callback/LocalCandidateCallback;->recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public setRecognizeListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/callback/LocalCandidateCallback;->recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    return-void
.end method
