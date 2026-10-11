.class public abstract Lcom/sunia/HTREnginev2/sdk/editor/Editor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;
.implements Lcom/sunia/HTREnginev2/sdk/editor/CalculateEditor;
.implements Lcom/sunia/HTREnginev2/sdk/editor/RecognizeEditor;
.implements Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditor;


# instance fields
.field protected currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    return-void
.end method


# virtual methods
.method public abstract setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
.end method
