.class public interface abstract Lcom/sunia/nbiv2/sdk/NBICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/INoProguard;


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onDrawNBIPath(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onLoad()V
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
