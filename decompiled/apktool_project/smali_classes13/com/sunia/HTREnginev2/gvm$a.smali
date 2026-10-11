.class public final Lcom/sunia/HTREnginev2/gvm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/gvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/sunia/HTREnginev2/gvm$a;

.field public d:Lcom/sunia/HTREnginev2/gvm$a;

.field public e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

.field public f:Lcom/sunia/HTREnginev2/gvm$b;


# direct methods
.method public constructor <init>(IILorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/Grammar;Lcom/sunia/HTREnginev2/gvm$a;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/gvm$a;->a:I

    iput p2, p0, Lcom/sunia/HTREnginev2/gvm$a;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gvm$a;->c:Lcom/sunia/HTREnginev2/gvm$a;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    if-eqz p5, :cond_0

    iput-object p0, p5, Lcom/sunia/HTREnginev2/gvm$a;->c:Lcom/sunia/HTREnginev2/gvm$a;

    :cond_0
    iput-object p3, p0, Lcom/sunia/HTREnginev2/gvm$a;->e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    new-instance p1, Lcom/sunia/HTREnginev2/gvm$b;

    invoke-direct {p1, p0, p4, p6}, Lcom/sunia/HTREnginev2/gvm$b;-><init>(Lcom/sunia/HTREnginev2/gvm$a;Lorg/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gvm$a;->e:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gvm$a;->f:Lcom/sunia/HTREnginev2/gvm$b;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/gvm$a;->a()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/gvm$a;->d:Lcom/sunia/HTREnginev2/gvm$a;

    :cond_0
    return-void
.end method
