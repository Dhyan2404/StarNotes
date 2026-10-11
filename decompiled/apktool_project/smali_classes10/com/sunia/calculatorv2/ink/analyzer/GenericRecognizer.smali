.class public Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;
    }
.end annotation


# instance fields
.field public e:Lcom/sunia/calculatorv2/ink/editor/Engine;

.field public f:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

.field public g:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/editor/Engine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->i:Z

    iput-boolean v0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->k:Z

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->e:Lcom/sunia/calculatorv2/ink/editor/Engine;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->h:F

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->b()Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->setXDpi(F)V

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->b()Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;->setYDpi(F)V

    return-void
.end method

.method public a(Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->g:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    return-void
.end method

.method public b()Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;
    .locals 1

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->f:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;-><init>()V

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->f:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    :cond_0
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->f:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->j:Z

    return p0
.end method

.method public close()V
    .locals 0

    return-void
.end method
