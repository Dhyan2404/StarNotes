.class public Lcom/sunia/calculatorv2/ink/graphics/Style$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/p;
    .locals 0

    .line 1
    sget-object p0, Lcom/sunia/HTREnginev2/p;->f:Lcom/sunia/HTREnginev2/p;

    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/i1;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$b;->a:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
