.class public Lcom/sunia/calculatorv2/ink/editor/Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# instance fields
.field private final resourceStore:Lcom/sunia/calculatorv2/ink/editor/ResourceStore;


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/editor/ResourceStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/editor/Engine;->resourceStore:Lcom/sunia/calculatorv2/ink/editor/ResourceStore;

    return-void
.end method


# virtual methods
.method public createEditor()Lcom/sunia/HTREnginev2/q;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/q;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/q;-><init>(Lcom/sunia/calculatorv2/ink/editor/Engine;)V

    return-object v0
.end method

.method public createGenericRecognizer()Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;
    .locals 1

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;-><init>(Lcom/sunia/calculatorv2/ink/editor/Engine;)V

    return-object v0
.end method

.method public createPredictor()Lcom/sunia/HTREnginev2/y0;
    .locals 0

    new-instance p0, Lcom/sunia/HTREnginev2/t0;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/t0;-><init>()V

    return-object p0
.end method
